using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class FixGroup
    {
        public long Id { get; set; }

        [Column("class_id")]
        public long ClassId { get; set; }

        [ForeignKey("ClassId")] 
        public ClassInfo ClassInfo { get; set; }

        [Column("leader_id")]
        public long LeaderId { get; set; }

        [ForeignKey("LeaderId")]
        public UserInfo Leader { get; set; }

        public IList<FixGroupMember> FixGroupMembers { get; set; }

        public IList<FixGroupTopic> FixGroupTopics { get; set; }
    }
}