using Abp.Domain.Entities;
namespace ProvincesManagement.Countries.Dto
{
    public class CreateOrEditCountryDto : Entity<int?>
    {
        public string CountryName { get; set; }
    }
}
