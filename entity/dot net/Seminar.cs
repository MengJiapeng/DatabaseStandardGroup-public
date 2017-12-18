using System;

namespace Xmu.Crms.Shared.Models
{
    public class Seminar
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public Course Course { get; set; }
        public int IsFixed { get; set; }
        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }
    }
}