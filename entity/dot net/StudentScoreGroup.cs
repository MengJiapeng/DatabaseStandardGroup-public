namespace Xmu.Crms.Shared.Models
{
    public class StudentScoreGroup
    {
        public int Id { get; set; }

        public UserInfo Student { get; set; }

        public SeminarGroupTopic SeminarGroupTopic { get; set; }

        public int Grade { get; set; }
    }
}