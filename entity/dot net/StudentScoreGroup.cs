using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class StudentScoreGroup
    {
        public long Id { get; set; }

        [Column("student_id")]
        public long StudentId { get; set; }

        [ForeignKey("StudentId")]
        public UserInfo Student { get; set; }

        [Column("seminar_group_topic_id")]
        public long SeminarGroupTopicId { get; set; }

        [ForeignKey("SeminarGroupTopicId")]
        public SeminarGroupTopic SeminarGroupTopic { get; set; }

        public int? Grade { get; set; }
    }
}