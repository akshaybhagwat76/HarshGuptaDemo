using Abp.Application.Services.Dto;
using Abp.Collections.Extensions;
using Abp.Domain.Repositories;
using ProvincesManagement.Countries.Dto;
using System;
using System.Linq;
using System.Threading.Tasks;
using System.Linq.Dynamic.Core;
using Abp.Linq.Extensions;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;

namespace ProvincesManagement.Countries
{
    public class CountryAppService : ProvincesManagementAppServiceBase, ICountryAppService
    {
        private readonly IRepository<Country> _countryRepository;
        public CountryAppService(IRepository<Country> countryRepository)
        {
            _countryRepository = countryRepository;
        }

        public async Task CreateOrEdit(CreateOrEditCountryDto input)
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
        protected virtual async Task Create(CreateOrEditCountryDto input)
        {
            Country country = ObjectMapper.Map<Country>(input);
            await _countryRepository.InsertAsync(country);
        }

        protected virtual async Task Update(CreateOrEditCountryDto input)
        {
            Country country = await _countryRepository.FirstOrDefaultAsync((int)input.Id);
            ObjectMapper.Map(input, country);
            await _countryRepository.UpdateAsync(country);
        }
        public async Task<PagedResultDto<CountryDto>> GetAll(GetAllForLookupTableInput input)
        {
            IQueryable<Country> filteredCountries = _countryRepository.GetAll()
                      .WhereIf(!string.IsNullOrWhiteSpace(input.Filter), e => false || e.CountryName.Contains(input.Filter))
                      .WhereIf(!string.IsNullOrWhiteSpace(input.CountryName), e => e.CountryName == input.CountryName);


            IQueryable<Country> pagedAndFilteredCountries = filteredCountries
                .OrderBy(input.Sorting ?? "id asc")
                .PageBy(input);

            IQueryable<CountryDto> countries = from o in pagedAndFilteredCountries
                            select new CountryDto()
                            {
                                Id = o.Id,
                                CountryName = o.CountryName
                            };

            int totalCount = await filteredCountries.CountAsync();

            return new PagedResultDto<CountryDto>(
                totalCount,
                await countries.ToListAsync()
            );
        }
        public async Task<List<CountryDto>> GetAllCountries()
        {
            List<Country> lstCountries = await _countryRepository.GetAll().ToListAsync();
            List<CountryDto> countries = (from o in lstCountries
                             select new CountryDto()
                             {
                                 Id = o.Id,
                                 CountryName = o.CountryName
                             }).ToList();
            return countries;
        }

        public async Task<GetCountryForEditOutput> GetCountryForEdit(EntityDto input)
        {
            Country country = await _countryRepository.GetAsync(input.Id);

            GetCountryForEditOutput output = new GetCountryForEditOutput { Country = ObjectMapper.Map<CreateOrEditCountryDto>(country) };

            return output;
        }

        public async Task<GetCountryForViewDto> GetCountryForView(int id)
        {
            Country country = await _countryRepository.GetAsync(id);

            GetCountryForViewDto output = new GetCountryForViewDto { Country = ObjectMapper.Map<CountryDto>(country) };

            return output;
        }

        public async Task Delete(EntityDto input)
        {
            await _countryRepository.DeleteAsync(input.Id);
        }
    }
}
