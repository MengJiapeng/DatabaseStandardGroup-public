using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class Topic
    {
        public long Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int GroupNumberLimit { get; set; }
        public int GroupStudentLimit { get; set; }

        [ForeignKey("seminar_id")]
        public Seminar Seminar { get; set; }
    }
}