using System.Threading.Tasks;
using Abp.Application.Services;
using ProvincesManagement.Sessions.Dto;

namespace ProvincesManagement.Sessions
{
    public interface ISessionAppService : IApplicationService
    {
        Task<GetCurrentLoginInformationsOutput> GetCurrentLoginInformations();
    }
}
