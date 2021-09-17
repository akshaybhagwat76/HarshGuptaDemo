using Abp.Authorization;
using ProvincesManagement.Authorization.Roles;
using ProvincesManagement.Authorization.Users;

namespace ProvincesManagement.Authorization
{
    public class PermissionChecker : PermissionChecker<Role, User>
    {
        public PermissionChecker(UserManager userManager)
            : base(userManager)
        {
        }
    }
}
