using System.Threading.Tasks;
using ProvincesManagement.Configuration.Dto;

namespace ProvincesManagement.Configuration
{
    public interface IConfigurationAppService
    {
        Task ChangeUiTheme(ChangeUiThemeInput input);
    }
}
