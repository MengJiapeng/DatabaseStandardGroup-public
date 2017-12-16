using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication2.Models
{
    public class FixGroup
    {
       
            public int id { get; set; }

            public ClassInfo classInfo { get; set; }

            public Student leader { get; set; }

    }
}
