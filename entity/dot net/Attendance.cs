namespace Xmu.Crms.Shared.Models
{
    public class Attendance
    {
        public int Id { get; set; }
        public UserInfo Student { get; set; }
        public ClassInfo ClassInfo { get; set; }
        public int AttendanceSatus { get; set; }
    }
}