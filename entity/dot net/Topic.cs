using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class Topic
    {
        public long Id { get; set; }

        public string Serial { get; set; }

        [Required]
        public string Name { get; set; }

        public string Description { get; set; }

        public int GroupNumberLimit { get; set; }

        public int GroupStudentLimit { get; set; }

        [Required]
        [ForeignKey("seminar_id")]
        public Seminar Seminar { get; set; }
    }
}