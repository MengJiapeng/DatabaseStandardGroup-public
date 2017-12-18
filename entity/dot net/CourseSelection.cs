namespace Xmu.Crms.Shared.Models
{
    public class CourseSelection
    {
        public int Id { get; set; }
        public ClassInfo ClassInfo { get; set; }
        public UserInfo Student { get; set; }
    }
}