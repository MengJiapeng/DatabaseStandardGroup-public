using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication2.Models
{
    public class Topic
    {
        public int id { get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public int groupNumberLimit { get; set; }
        public int groupStudentLimit { get; set; }
        public Seminar seminar { get; set; }
    }
}
