using Abp.Application.Services.Dto;
namespace ProvincesManagement.States.Dto
{
    public class StateDto: EntityDto
    {
        public int CountryId { get; set; }
        public string StateName { get; set; }
        public string CountryName { get; set; }
    }
}
