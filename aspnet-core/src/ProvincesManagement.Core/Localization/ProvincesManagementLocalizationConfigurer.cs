using Abp.Configuration.Startup;
using Abp.Localization.Dictionaries;
using Abp.Localization.Dictionaries.Xml;
using Abp.Reflection.Extensions;

namespace ProvincesManagement.Localization
{
    public static class ProvincesManagementLocalizationConfigurer
    {
        public static void Configure(ILocalizationConfiguration localizationConfiguration)
        {
            localizationConfiguration.Sources.Add(
                new DictionaryBasedLocalizationSource(ProvincesManagementConsts.LocalizationSourceName,
                    new XmlEmbeddedFileLocalizationDictionaryProvider(
                        typeof(ProvincesManagementLocalizationConfigurer).GetAssembly(),
                        "ProvincesManagement.Localization.SourceFiles"
                    )
                )
            );
        }
    }
}
