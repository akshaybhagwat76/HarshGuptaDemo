using Abp.AutoMapper;
using Abp.Modules;
using Abp.Reflection.Extensions;
using ProvincesManagement.Authorization;
using ProvincesManagement.Countries;
using ProvincesManagement.Countries.Dto;
using ProvincesManagement.States;
using ProvincesManagement.States.Dto;
using System.Collections.Generic;

namespace ProvincesManagement
{
    [DependsOn(
        typeof(ProvincesManagementCoreModule),
        typeof(AbpAutoMapperModule))]
    public class ProvincesManagementApplicationModule : AbpModule
    {
        public override void PreInitialize()
        {
            Configuration.Authorization.Providers.Add<ProvincesManagementAuthorizationProvider>();
            Configuration.Modules.AbpAutoMapper().Configurators.Add(config =>
            {
                config.CreateMap<CreateOrEditCountryDto, Country>().ReverseMap();
                config.CreateMap<Country, CreateOrEditCountryDto>().ReverseMap();

                config.CreateMap<CountryDto, Country>().ReverseMap();
                config.CreateMap<Country, CountryDto>().ReverseMap();

                config.CreateMap<List<CountryDto>, List<Country>>().ReverseMap();
                config.CreateMap<List<Country>, List<CountryDto>>().ReverseMap();

                config.CreateMap<CreateOrEditStateDto, State>().ReverseMap();
                config.CreateMap<State, CreateOrEditStateDto>().ReverseMap();

                config.CreateMap<StateDto, State>().ReverseMap();
                config.CreateMap<State, StateDto>().ReverseMap();
            });
        }

        public override void Initialize()
        {
            var thisAssembly = typeof(ProvincesManagementApplicationModule).GetAssembly();

            IocManager.RegisterAssemblyByConvention(thisAssembly);

            Configuration.Modules.AbpAutoMapper().Configurators.Add(
                // Scan the assembly for classes which inherit from AutoMapper.Profile
                cfg => cfg.AddMaps(thisAssembly)
            );
        }
    }
}
