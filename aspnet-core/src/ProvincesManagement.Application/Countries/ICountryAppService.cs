using Abp.Application.Services.Dto;
using ProvincesManagement.Countries.Dto;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ProvincesManagement.Countries
{
    public interface ICountryAppService
    {
        Task<PagedResultDto<CountryDto>> GetAll(GetAllForLookupTableInput input);
        Task CreateOrEdit(CreateOrEditCountryDto input);
        Task<GetCountryForViewDto> GetCountryForView(int id);
        Task<GetCountryForEditOutput> GetCountryForEdit(EntityDto input);
        Task Delete(EntityDto input);
        Task<List<CountryDto>> GetAllCountries();
    }
}
