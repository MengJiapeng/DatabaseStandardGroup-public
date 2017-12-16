using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace WebApplication2.Models
{
    public class FixGroupMember
    {
        public int id { get; set; }
        
        public FixGroup fixGroup { get; set; }

        public Student student { get; set; }
    }
}
