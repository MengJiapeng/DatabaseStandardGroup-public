using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class Seminar
    {
        public long Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        [ForeignKey("course_id")]
        public Course Course { get; set; }
        public int IsFixed { get; set; }
        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }
    }
}