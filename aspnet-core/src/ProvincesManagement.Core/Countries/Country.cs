using Abp.Auditing;
using Abp.Domain.Entities.Auditing;
using System.ComponentModel.DataAnnotations.Schema;
namespace ProvincesManagement.Countries
{
    [Table("AppCountries")]
    [Audited]
    public class Country : AuditedEntity
    {
        public virtual string CountryName { get; set; }
    }
}
