using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class SeminarGroupTopic
    {
        public long Id { get; set; }

        [ForeignKey("topic_id")]
        public Topic Topic { get; set; }

        [ForeignKey("seminar_group_id")]
        public SeminarGroup SeminarGroup { get; set; }

        public int? PresentationGrade { get; set; }
    }
}