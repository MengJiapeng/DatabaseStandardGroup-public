using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class SeminarGroupTopic
    {
        public long Id { get; set; }

        [Column("topic_id")]
        public long TopicId { get; set; }

        [ForeignKey("TopicId")]
        public Topic Topic { get; set; }

        [Column("seminar_group_id")]
        public long SeminarGroupId { get; set; }

        [ForeignKey("SeminarGroupId")]
        public SeminarGroup SeminarGroup { get; set; }

        public int? PresentationGrade { get; set; }
    }
}