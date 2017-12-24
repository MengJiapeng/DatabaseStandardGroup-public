using System.ComponentModel.DataAnnotations.Schema;

namespace Xmu.Crms.Shared.Models
{
    public class Location
    {
        public long Id { get; set; }

        [ForeignKey("class_id")]
        public ClassInfo ClassInfo { get; set; }

        [ForeignKey("seminar_id")]
        public Seminar Seminar { get; set; }

        public decimal? Longitude { get; set; }

        public decimal? Latitude { get; set; }

        public int? Status { get; set; }
    }
}