namespace Xmu.Crms.Shared.Models
{
    public class SeminarGroupTopic
    {
        public int Id { get; set; }

        public Topic Topic { get; set; }

        public SeminarGroup SeminarGroup { get; set; }

        public int PresentationGrade { get; set; }
    }
}