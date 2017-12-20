using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class StudentScoreGroup
    {
        public long Id { get; set; }

        [ForeignKey("student_id")]
        public UserInfo Student { get; set; }

        [ForeignKey("seminar_group_topic_id")]
        public SeminarGroupTopic SeminarGroupTopic { get; set; }

        public int Grade { get; set; }
    }
}