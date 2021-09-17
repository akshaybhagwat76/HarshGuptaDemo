using Abp.AspNetCore.Mvc.Controllers;
using Abp.IdentityFramework;
using Microsoft.AspNetCore.Identity;

namespace ProvincesManagement.Controllers
{
    public abstract class ProvincesManagementControllerBase: AbpController
    {
        protected ProvincesManagementControllerBase()
        {
            LocalizationSourceName = ProvincesManagementConsts.LocalizationSourceName;
        }

        protected void CheckErrors(IdentityResult identityResult)
        {
            identityResult.CheckErrors(LocalizationManager);
        }
    }
}
