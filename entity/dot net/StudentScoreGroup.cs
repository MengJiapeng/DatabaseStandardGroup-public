using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebApplication2.Models
{
    public class StudentScoreGroup
    {
        public int id { get; set; } 

        public Student student { get; set; }

        public SeminarGroupTopic seminarGroupTopic { get; set; }

        public int grade { get; set; }
    }
}
