using Abp.Application.Services.Dto;
using ProvincesManagement.Countries.Dto;
using ProvincesManagement.States.Dto;
using System.Threading.Tasks;

namespace ProvincesManagement.States
{
    public interface IStateAppService
    {
        Task<PagedResultDto<StateDto>> GetAll(ProvincesManagement.States.Dto.GetAllForLookupTableInput input);
        Task CreateOrEdit(CreateOrEditStateDto input);
        Task<GetStateForViewDto> GetStateForView(int id);
        Task<GetStateForEditOutput> GetStateForEdit(EntityDto input);
        Task Delete(EntityDto input);
    }
}
