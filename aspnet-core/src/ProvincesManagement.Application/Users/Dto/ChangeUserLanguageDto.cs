using System.ComponentModel.DataAnnotations;

namespace ProvincesManagement.Users.Dto
{
    public class ChangeUserLanguageDto
    {
        [Required]
        public string LanguageName { get; set; }
    }
}