using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Abp.Modules;
using Abp.Reflection.Extensions;
using ProvincesManagement.Configuration;

namespace ProvincesManagement.Web.Host.Startup
{
    [DependsOn(
       typeof(ProvincesManagementWebCoreModule))]
    public class ProvincesManagementWebHostModule: AbpModule
    {
        private readonly IWebHostEnvironment _env;
        private readonly IConfigurationRoot _appConfiguration;

        public ProvincesManagementWebHostModule(IWebHostEnvironment env)
        {
            _env = env;
            _appConfiguration = env.GetAppConfiguration();
        }

        public override void Initialize()
        {
            IocManager.RegisterAssemblyByConvention(typeof(ProvincesManagementWebHostModule).GetAssembly());
        }
    }
}
