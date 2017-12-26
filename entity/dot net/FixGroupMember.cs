using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class FixGroupMember
    {
        public long Id { get; set; }

        [Column("fix_group_id")]
        public long FixGroupId { get; set; }

        [ForeignKey("FixGroupId")]
        public FixGroup FixGroup { get; set; }

        [Column("student_id")]
        public long StudentId { get; set; }

        [ForeignKey("StudentId")]
        public UserInfo Student { get; set; }
    }
}