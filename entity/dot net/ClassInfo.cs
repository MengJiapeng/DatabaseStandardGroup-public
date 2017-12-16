using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication2.Models
{
    public class ClassInfo
    {
        public int id { get; set; }
        public string name { get; set; }
        public Course course { get; set; }
        public string site { get; set; }
        public string classTime { get; set; }
        public int reportPercentage { get; set; }
        public int presentationPercentage { get; set; }
        public int fivePointPercentage { get; set; }
        public int fourPointPercentage { get; set; }
        public int threePointPercentage { get; set; }
    }
}
