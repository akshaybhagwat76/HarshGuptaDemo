using Abp.Application.Services.Dto;

namespace ProvincesManagement.Countries.Dto
{
    public class GetAllForLookupTableInput: PagedAndSortedResultRequestDto
    {
        public string Filter { get; set; }
        public string CountryName { get; set; }
    }
}
