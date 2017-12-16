using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication2.Models
{
    public class Seminar
    {
        public int id { get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public Course course { get; set; }
        public int isFixed { get; set; }
        public DateTime startTime { get; set; }
        public DateTime endTime { get; set; }
    }
}
