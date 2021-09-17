using System.Threading.Tasks;
using Abp.Application.Services;
using ProvincesManagement.Authorization.Accounts.Dto;

namespace ProvincesManagement.Authorization.Accounts
{
    public interface IAccountAppService : IApplicationService
    {
        Task<IsTenantAvailableOutput> IsTenantAvailable(IsTenantAvailableInput input);

        Task<RegisterOutput> Register(RegisterInput input);
    }
}
