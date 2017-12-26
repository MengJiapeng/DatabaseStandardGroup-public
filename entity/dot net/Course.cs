using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class Course
    {
        public long Id { get; set; }

        [Required]
        public string Name { get; set; }

        public DateTime StartDate { get; set; }

        public DateTime EndDate { get; set; }

        [Column("teacher_id")]
        public long TeacherId { get; set; }

        [ForeignKey("TeacherId")]
        public UserInfo Teacher { get; set; }

        public string Description { get; set; }

        public int? ReportPercentage { get; set; }

        public int? PresentationPercentage { get; set; }

        public int? FivePointPercentage { get; set; }

        public int? FourPointPercentage { get; set; }

        public int? ThreePointPercentage { get; set; }
    }
}