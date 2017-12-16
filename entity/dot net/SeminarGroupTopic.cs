using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebApplication2.Models
{
    public class SeminarGroupTopic
    {
        public int id { get; set; }

        public Topic topic { get; set; }

        public SeminarGroup seminarGroup { get; set; }

        public int presentationGrade { get; set; }
    }
}
