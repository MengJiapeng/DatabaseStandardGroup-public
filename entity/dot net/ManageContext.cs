using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication2.Models;

namespace WebApplication2.Models
{
    public class ManageContext:DbContext
    {
        public ManageContext(DbContextOptions<ManageContext> options)
            : base(options)
        { }
        public DbSet<School> school { get; set; }
        public DbSet<UserInfo> user_info { get; set; }
        public DbSet<Course> course { get; set; }
        public DbSet<ClassInfo> class_info { get; set; }
        public DbSet<CourseSelection> course_selection { get; set; }
        public DbSet<Attendance> attendance { get; set; }
        public DbSet<Seminar> seminar { get; set; }
        public DbSet<Topic> topic { get; set; }
        public DbSet<FixGroup> fix_group { get; set; }
        public DbSet<FixGroupMember> fix_group_member { get; set; }
        public DbSet<SeminarGroup> seminar_group { get; set; }
        public DbSet<SeminarGroupMember> seminar_group_member { get; set; }
        public DbSet<SeminarGroupTopic> seminar_group_topic { get; set; }
        public DbSet<StudentScoreGroup> student_score_group { get; set; }
        public DbSet<Location> location { get; set; }
        public DbSet<WebApplication2.Models.Student> Student { get; set; }
        public DbSet<WebApplication2.Models.Teacher> Teacher { get; set; }

    }
}
