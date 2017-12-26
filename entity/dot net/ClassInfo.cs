using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class ClassInfo
    {
        public long Id { get; set; }

        [Required]
        public string Name { get; set; }

        [Column("course_id")]
        public long CourseId { get; set; }

        [ForeignKey("CourseId")]
        public Course Course { get; set; }

        public string Site { get; set; }

        public string ClassTime { get; set; }

        public int? ReportPercentage { get; set; }

        public int? PresentationPercentage { get; set; }

        public int? FivePointPercentage { get; set; }

        public int? FourPointPercentage { get; set; }

        public int? ThreePointPercentage { get; set; }

        public IList<Attendance> Attendances { get; set; }

        public IList<CourseSelection> CourseSelections { get; set; }
    }
}