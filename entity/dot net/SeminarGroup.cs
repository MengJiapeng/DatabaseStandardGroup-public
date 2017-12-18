namespace Xmu.Crms.Shared.Models
{
    public class SeminarGroup
    {
        public int Id { get; set; }

        public Seminar Seminar { get; set; }

        public ClassInfo ClassInfo { get; set; }

        public string Report { get; set; }

        public int ReportGrade { get; set; }

        public int PresentationGrade { get; set; }

        public int FinalGrade { get; set; }

        public UserInfo Leader { get; set; }
    }
}