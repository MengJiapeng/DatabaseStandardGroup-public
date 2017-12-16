using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication2.Models
{
    public class Attendance
    {
        public int id { get; set; }
        public Student student { get; set; }
        public ClassInfo classInfo { get; set; }
        public int attendanceSatus { get; set; }
    }
}
