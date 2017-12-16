using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication2.Models
{
    public class Course
    {
        public int id { get; set; }
        public string name { get; set; }
        public DateTime startDate { get; set; }
        public DateTime endDate { get; set; }
        public Teacher teacher { get; set; }
        public string description { get; set; }
        public int reportPercentage { get; set; }
        public int presentationPercentage { get; set; }
        public int fivePointPercentage { get; set; }
        public int fourPointPercentage { get; set; }
        public int threePointPercentage { get; set; }
    }
}
