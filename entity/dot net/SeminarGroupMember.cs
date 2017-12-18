namespace Xmu.Crms.Shared.Models
{
    public class SeminarGroupMember
    {
        public int Id { get; set; }

        public SeminarGroup SeminarGroup { get; set; }

        public UserInfo Student { get; set; }
    }
}