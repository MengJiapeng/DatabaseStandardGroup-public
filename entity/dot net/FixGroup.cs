using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class FixGroup
    {
        public long Id { get; set; }

        [ForeignKey("class_id")]
        public ClassInfo ClassInfo { get; set; }

        [ForeignKey("leader_id")]
        public UserInfo Leader { get; set; }
    }
}