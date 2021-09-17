using Abp.Application.Services.Dto;

namespace ProvincesManagement.States.Dto
{
    public class GetAllForLookupTableInput : PagedAndSortedResultRequestDto
    {
        public string Filter { get; set; }
    }
}
