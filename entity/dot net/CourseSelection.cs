using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication2.Models
{
    public class CourseSelection
    {
        public int id { get; set; }
        public ClassInfo classInfo { get; set; }
        public Student student { get; set; }
    }
}
