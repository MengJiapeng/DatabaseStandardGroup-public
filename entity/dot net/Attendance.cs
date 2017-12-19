using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class Attendance
    {
        public long Id { get; set; }
        [ForeignKey("student_id")]
        public UserInfo Student { get; set; }
        [ForeignKey("class_id")]
        public ClassInfo ClassInfo { get; set; }
        public int AttendanceStatus { get; set; }
    }
}