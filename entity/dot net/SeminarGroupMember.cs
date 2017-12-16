using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebApplication2.Models
{
    public class SeminarGroupMember
    {
        public int id { get; set; }

        public SeminarGroup seminarGroup { get; set; }

        public Student student { get; set; }
    }
}
