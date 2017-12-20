using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public enum Gender
    {
        Male = 0,
        Female = 1
    }

    public enum Type
    {
        Student = 0,
        Teacher = 1,
        Unbinded = 2
    }

    public enum Education
    {
        Bachelor = 0,
        Master = 1,
        Doctor = 2
    }

    public class UserInfo
    {
        public long Id { get; set; }
        public string Phone { get; set; }
        public string Avatar { get; set; }
        public string Password { get; set; }
        public string Name { get; set; }

        [ForeignKey("school_id")]
        public School School { get; set; }

        public Gender Gender { get; set; }
        public Type Type { get; set; }
        public string Number { get; set; }

        public bool Education { get; set; }
        public string Title { get; set; }
        public string Email { get; set; }
    }
}