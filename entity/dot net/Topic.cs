using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class Topic
    {
        public long Id { get; set; }

        public string Serial { get; set; }

        [Required]
        public string Name { get; set; }

        public string Description { get; set; }

        public int GroupNumberLimit { get; set; }

        public int GroupStudentLimit { get; set; }

        [Column("seminar_id")]
        public long SeminarId { get; set; }

        [Required]
        [ForeignKey("SeminarId")]
        public Seminar Seminar { get; set; }

        public IList<SeminarGroupTopic> SeminarGroupTopics { get; set; }

        public IList<FixGroupTopic> FixGroupTopics { get; set; }
    }
}