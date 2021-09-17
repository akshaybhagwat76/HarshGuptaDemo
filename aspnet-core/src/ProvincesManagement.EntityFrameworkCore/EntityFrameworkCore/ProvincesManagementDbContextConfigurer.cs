using System.Data.Common;
using Microsoft.EntityFrameworkCore;

namespace ProvincesManagement.EntityFrameworkCore
{
    public static class ProvincesManagementDbContextConfigurer
    {
        public static void Configure(DbContextOptionsBuilder<ProvincesManagementDbContext> builder, string connectionString)
        {
            builder.UseSqlServer(connectionString);
        }

        public static void Configure(DbContextOptionsBuilder<ProvincesManagementDbContext> builder, DbConnection connection)
        {
            builder.UseSqlServer(connection);
        }
    }
}
