using Abp.Application.Services.Dto;
using Abp.Collections.Extensions;
using Abp.Domain.Repositories;
using ProvincesManagement.States.Dto;
using System.Linq;
using System.Threading.Tasks;
using System.Linq.Dynamic.Core;
using Abp.Linq.Extensions;
using Microsoft.EntityFrameworkCore;
using ProvincesManagement.Countries;

namespace ProvincesManagement.States
{
    public class StateAppService : ProvincesManagementAppServiceBase, IStateAppService
    {
        private readonly IRepository<State> _stateRepository;
        private readonly IRepository<Country> _countryRepository;
        public StateAppService(IRepository<State> stateRepository, IRepository<Country> countryRepository)
        {
            _stateRepository = stateRepository;
            _countryRepository = countryRepository;
        }
        public async Task CreateOrEdit(CreateOrEditStateDto input)
        {
            if (input.Id == null || input.Id == 0)
            {
                await Create(input);
            }
            else
            {
                await Update(input);
            }
        }
        protected virtual async Task Create(CreateOrEditStateDto input)
        {
            State state = ObjectMapper.Map<State>(input);
            await _stateRepository.InsertAsync(state);
        }
        protected virtual async Task Update(CreateOrEditStateDto input)
        {
            State state = await _stateRepository.FirstOrDefaultAsync((int)input.Id);
            ObjectMapper.Map(input, state);
            await _stateRepository.UpdateAsync(state);
        }
        public async Task<PagedResultDto<StateDto>> GetAll(GetAllForLookupTableInput input)
        {
            IQueryable<State> filteredStates = _stateRepository.GetAll().Include(x => x.Country)
                      .WhereIf(!string.IsNullOrWhiteSpace(input.Filter) && !string.IsNullOrEmpty(input.Filter), e => false || (e.StateName.Contains(input.Filter) || e.Country.CountryName.Contains(input.Filter)));


            IQueryable<State> pagedAndFilteredStates = filteredStates
                 .OrderBy(input.Sorting ?? "id asc")
                 .PageBy(input);

            IQueryable<StateDto> states = from s in pagedAndFilteredStates
                                          select new StateDto()
                                          {
                                              Id = s.Id,
                                              StateName = s.StateName,
                                              CountryId = s.CountryId
                                          };

            int totalCount = await filteredStates.CountAsync();

            return new PagedResultDto<StateDto>(
                totalCount,
                await states.ToListAsync()
            );
        }
        public async Task<GetStateForViewDto> GetStateForView(int id)
        {
            State state = await _stateRepository.GetAsync(id);

            GetStateForViewDto output = new GetStateForViewDto { State = ObjectMapper.Map<StateDto>(state) };

            return output;
        }
        public async Task<GetStateForEditOutput> GetStateForEdit(EntityDto input)
        {
            State state = await _stateRepository.GetAsync(input.Id);

            GetStateForEditOutput output = new GetStateForEditOutput { State = ObjectMapper.Map<CreateOrEditStateDto>(state) };

            return output;
        }
        public async Task Delete(EntityDto input)
        {
            await _stateRepository.DeleteAsync(input.Id);
        }
    }
}

