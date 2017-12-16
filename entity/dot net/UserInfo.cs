using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication2.Models
{
    public class UserInfo
    {
        public int id { get; set; }
        public string phone { get; set; }
        public string avatar { get; set; }
        public string password { get; set; }
        public string name { get; set; }
        public School school { get; set; }
        public int gender { get; set; }
        public string number { get; set; }
        public int education { get; set; }
        public int title { get; set; }
        public string email { get; set; }
    }
    public class Teacher : UserInfo { }
    public class Student : UserInfo { }
}
