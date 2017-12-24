using System.ComponentModel.DataAnnotations;

namespace Xmu.Crms.Shared.Models
{
    public class School
    {
        public long Id { get; set; }

        [Required]
        public string Name { get; set; }

        [Required]
        public string Province { get; set; }

        [Required]
        public string City { get; set; }
    }
}