using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class FixGroupTopic
    {
        public long Id { get; set; }

        [Column("topic_id")]
        public long TopicId { get; set; }

        [ForeignKey("TopicId")]
        public Topic Topic { get; set; }

        [Column("fix_group_id")]
        public long FixGroupId { get; set; }

        [ForeignKey("FixGroupId")]
        public FixGroup FixGroup { get; set; }
    }
}