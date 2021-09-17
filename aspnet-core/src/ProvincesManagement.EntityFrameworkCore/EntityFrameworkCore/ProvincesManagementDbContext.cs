using Microsoft.EntityFrameworkCore;
using Abp.Zero.EntityFrameworkCore;
using ProvincesManagement.Authorization.Roles;
using ProvincesManagement.Authorization.Users;
using ProvincesManagement.MultiTenancy;
using ProvincesManagement.Countries;
using ProvincesManagement.States;

namespace ProvincesManagement.EntityFrameworkCore
{
    public class ProvincesManagementDbContext : AbpZeroDbContext<Tenant, Role, User, ProvincesManagementDbContext>
    {
        /* Define a DbSet for each entity of the application */
        
        public ProvincesManagementDbContext(DbContextOptions<ProvincesManagementDbContext> options)
            : base(options)
        {
        }
        public DbSet<Country> Countries { get; set; }
        public DbSet<State> States { get; set; }
    }
}
