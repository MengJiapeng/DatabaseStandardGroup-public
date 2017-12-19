using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class StudentScoreGroup
    {
        public int Id { get; set; }

        [ForeignKey("student_id")]
        public UserInfo Student { get; set; }

        //[ForeignKey("seminar_group_topic_id")]
        [ForeignKey("s_g_t_id")]
        public SeminarGroupTopic SeminarGroupTopic { get; set; }

        public int Grade { get; set; }
    }
}