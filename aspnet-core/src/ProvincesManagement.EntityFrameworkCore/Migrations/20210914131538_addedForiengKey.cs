using Microsoft.EntityFrameworkCore.Migrations;

namespace ProvincesManagement.Migrations
{
    public partial class addedForiengKey : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateIndex(
                name: "IX_AppStates_CountryId",
                table: "AppStates",
                column: "CountryId");

            migrationBuilder.AddForeignKey(
                name: "FK_AppStates_AppCountries_CountryId",
                table: "AppStates",
                column: "CountryId",
                principalTable: "AppCountries",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AppStates_AppCountries_CountryId",
                table: "AppStates");

            migrationBuilder.DropIndex(
                name: "IX_AppStates_CountryId",
                table: "AppStates");
        }
    }
}
