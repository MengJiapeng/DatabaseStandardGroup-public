using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class ClassInfo
    {
        public int Id { get; set; }
        public string Name { get; set; }
        [ForeignKey("course_id")]
        public Course Course { get; set; }
        public string Site { get; set; }
        public string ClassTime { get; set; }
        public int ReportPercentage { get; set; }
        public int PresentationPercentage { get; set; }
        public int FivePointPercentage { get; set; }
        public int FourPointPercentage { get; set; }
        public int ThreePointPercentage { get; set; }
    }
}