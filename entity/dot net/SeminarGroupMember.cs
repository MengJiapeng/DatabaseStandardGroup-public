using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class SeminarGroupMember
    {
        public long Id { get; set; }

        [Column("seminar_group_id")]
        public long SeminarGroupId { get; set; }

        [ForeignKey("SeminarGroupId")]
        public SeminarGroup SeminarGroup { get; set; }

        [Column("student_id")]
        public long StudentId { get; set; }

        [ForeignKey("StudentId")]
        public UserInfo Student { get; set; }
    }
}