using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class SeminarGroupMember
    {
        public int Id { get; set; }

        [ForeignKey("seminar_group_id")]
        public SeminarGroup SeminarGroup { get; set; }

        [ForeignKey("student_id")]
        public UserInfo Student { get; set; }
    }
}