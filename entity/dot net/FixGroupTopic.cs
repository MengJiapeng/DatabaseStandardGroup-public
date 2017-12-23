using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class FixGroupTopic
    {
        public long Id { get; set; }

        [ForeignKey("topic_id")]
        public Topic Topic { get; set; }

        [ForeignKey("fix_group_id")]
        public FixGroup FixGroup { get; set; }
    }
}