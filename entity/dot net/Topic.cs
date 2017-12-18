namespace Xmu.Crms.Shared.Models
{
    public class Topic
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int GroupNumberLimit { get; set; }
        public int GroupStudentLimit { get; set; }
        public Seminar Seminar { get; set; }
    }
}