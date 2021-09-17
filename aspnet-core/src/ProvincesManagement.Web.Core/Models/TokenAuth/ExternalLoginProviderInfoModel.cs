using Abp.AutoMapper;
using ProvincesManagement.Authentication.External;

namespace ProvincesManagement.Models.TokenAuth
{
    [AutoMapFrom(typeof(ExternalLoginProviderInfo))]
    public class ExternalLoginProviderInfoModel
    {
        public string Name { get; set; }

        public string ClientId { get; set; }
    }
}
