using Abp.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProvincesManagement.States.Dto
{
   public class CreateOrEditStateDto : Entity<int?>
    {
        public int CountryId { get; set; }
        public string StateName { get; set; }
    }
}
