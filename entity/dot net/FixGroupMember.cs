using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class FixGroupMember
    {
        public int Id { get; set; }

        [ForeignKey("fix_group-id")]
        public FixGroup FixGroup { get; set; }

        [ForeignKey("student_id")]
        public UserInfo Student { get; set; }
    }
}