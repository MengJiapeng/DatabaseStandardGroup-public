using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class SeminarGroup
    {
        public long Id { get; set; }

        [ForeignKey("seminar_id")]
        public Seminar Seminar { get; set; }

        [ForeignKey("class_id")]
        public ClassInfo ClassInfo { get; set; }

        public string Report { get; set; }

        public int ReportGrade { get; set; }

        public int PresentationGrade { get; set; }

        public int FinalGrade { get; set; }

        [ForeignKey("fix_group_id")]
        public FixGroup FixGroup { get; set; }

        [ForeignKey("leader_id")]
        public UserInfo Leader { get; set; }
    }
}