using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebApplication2.Models
{
    public class Location
    {
        public int id { get; set; }

        public ClassInfo classInfo { get; set; }

        public Seminar seminar { get; set; }

        public double longitude { get; set; }

        public double latitude { get; set; }

        public int status { get; set; }
    }
}
