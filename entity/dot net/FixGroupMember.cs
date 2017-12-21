using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class FixGroupMember
    {
        public long Id { get; set; }

        [ForeignKey("fix_group_id")]
        public FixGroup FixGroup { get; set; }

        [ForeignKey("student_id")]
        public UserInfo Student { get; set; }
    }
}