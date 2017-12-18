namespace Xmu.Crms.Shared.Models
{
    public class Location
    {
        public int Id { get; set; }

        public ClassInfo ClassInfo { get; set; }

        public Seminar Seminar { get; set; }

        public double Longitude { get; set; }

        public double Latitude { get; set; }

        public int Status { get; set; }
    }
}