using Abp.AspNetCore;
using Abp.AspNetCore.TestBase;
using Abp.Modules;
using Abp.Reflection.Extensions;
using ProvincesManagement.EntityFrameworkCore;
using ProvincesManagement.Web.Startup;
using Microsoft.AspNetCore.Mvc.ApplicationParts;

namespace ProvincesManagement.Web.Tests
{
    [DependsOn(
        typeof(ProvincesManagementWebMvcModule),
        typeof(AbpAspNetCoreTestBaseModule)
    )]
    public class ProvincesManagementWebTestModule : AbpModule
    {
        public ProvincesManagementWebTestModule(ProvincesManagementEntityFrameworkModule abpProjectNameEntityFrameworkModule)
        {
            abpProjectNameEntityFrameworkModule.SkipDbContextRegistration = true;
        } 
        
        public override void PreInitialize()
        {
            Configuration.UnitOfWork.IsTransactional = false; //EF Core InMemory DB does not support transactions.
        }

        public override void Initialize()
        {
            IocManager.RegisterAssemblyByConvention(typeof(ProvincesManagementWebTestModule).GetAssembly());
        }
        
        public override void PostInitialize()
        {
            IocManager.Resolve<ApplicationPartManager>()
                .AddApplicationPartsIfNotAddedBefore(typeof(ProvincesManagementWebMvcModule).Assembly);
        }
    }
}