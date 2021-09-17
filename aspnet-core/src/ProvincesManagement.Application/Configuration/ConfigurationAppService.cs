using System.Threading.Tasks;
using Abp.Authorization;
using Abp.Runtime.Session;
using ProvincesManagement.Configuration.Dto;

namespace ProvincesManagement.Configuration
{
    [AbpAuthorize]
    public class ConfigurationAppService : ProvincesManagementAppServiceBase, IConfigurationAppService
    {
        public async Task ChangeUiTheme(ChangeUiThemeInput input)
        {
            await SettingManager.ChangeSettingForUserAsync(AbpSession.ToUserIdentifier(), AppSettingNames.UiTheme, input.Theme);
        }
    }
}
