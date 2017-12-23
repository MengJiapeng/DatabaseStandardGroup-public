using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public enum AttendanceStatus
    {
        Present = 0,
        Late = 1,
        Absent = 2
    }

    public class Attendance
    {
        public long Id { get; set; }

        [ForeignKey("student_id")]
        [Required]
        public UserInfo Student { get; set; }

        [ForeignKey("class_id")]
        [Required]
        public ClassInfo ClassInfo { get; set; }

        [ForeignKey("seminar_id")]
        [Required]
        public Seminar Seminar { get; set; }

        public AttendanceStatus? AttendanceStatus { get; set; }
    }
}