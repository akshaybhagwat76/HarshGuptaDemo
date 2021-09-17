using Abp.Auditing;
using Abp.Domain.Entities.Auditing;
using ProvincesManagement.Countries;
using System.ComponentModel.DataAnnotations.Schema;
namespace ProvincesManagement.States
{
    [Table("AppStates")]
    [Audited]
    public class State: AuditedEntity
    {
        [ForeignKey("Country")]
        public int CountryId { get; set; }
        public Country Country { get; set; }
        public string StateName { get; set; }
    }
}
