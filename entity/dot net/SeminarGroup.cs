using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebApplication2.Models
{
    public class SeminarGroup
    {
        public int id { get; set; }

        public Seminar seminar { get; set; }

        public ClassInfo classInfo { get; set; }

        public string report { get; set; }

        public int reportGrade { get; set; }

        public int presentationGrade { get; set; }

        public int finalGrade { get; set; }

        public Student leader { get; set; }
    }
}
