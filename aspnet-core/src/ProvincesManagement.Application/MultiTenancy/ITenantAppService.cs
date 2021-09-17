using Abp.Application.Services;
using ProvincesManagement.MultiTenancy.Dto;

namespace ProvincesManagement.MultiTenancy
{
    public interface ITenantAppService : IAsyncCrudAppService<TenantDto, int, PagedTenantResultRequestDto, CreateTenantDto, TenantDto>
    {
    }
}

