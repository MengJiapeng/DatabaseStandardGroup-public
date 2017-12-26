using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class CourseSelection
    {
        public long Id { get; set; }

        [Column("class_id")]
        public long ClassId { get; set; }

        [ForeignKey("ClassId")]
        public ClassInfo ClassInfo { get; set; }

        [Column("student_id")]
        public long StudentId { get; set; }

        [ForeignKey("StudentId")]
        public UserInfo Student { get; set; }
    }
}