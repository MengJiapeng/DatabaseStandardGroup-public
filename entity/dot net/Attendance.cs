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

        [Column("student_id")]
        public long StudentId { get; set; }

        [ForeignKey("StudentId")]
        [Required]
        public UserInfo Student { get; set; }

        [Column("class_id")]
        public long ClassId { get; set; }

        [ForeignKey("ClassId")]
        [Required]
        public ClassInfo ClassInfo { get; set; }

        [Column("seminar_id")]
        public long SeminarId { get; set; }

        [ForeignKey("SeminarId")]
        [Required]
        public Seminar Seminar { get; set; }

        public AttendanceStatus? AttendanceStatus { get; set; }
    }
}