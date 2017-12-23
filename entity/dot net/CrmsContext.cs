using System;
using Microsoft.EntityFrameworkCore;

namespace Xmu.Crms.Shared.Models
{
    public class CrmsContext : DbContext
    {
        public CrmsContext(DbContextOptions options) : base(options)
        {
        }

        public DbSet<Attendance> Attendences { get; set; }
        public DbSet<ClassInfo> ClassInfo { get; set; }
        public DbSet<Course> Course { get; set; }
        public DbSet<CourseSelection> CourseSelection { get; set; }
        public DbSet<FixGroup> FixGroup { get; set; }
        public DbSet<FixGroupTopic> FixGroupTopic { get; set; }
        public DbSet<FixGroupMember> FixGroupMember { get; set; }
        public DbSet<Location> Location { get; set; }
        public DbSet<School> School { get; set; }
        public DbSet<Seminar> Seminar { get; set; }
        public DbSet<SeminarGroup> SeminarGroup { get; set; }
        public DbSet<SeminarGroupMember> SeminarGroupMember { get; set; }
        public DbSet<SeminarGroupTopic> SeminarGroupTopic { get; set; }
        public DbSet<StudentScoreGroup> StudentScoreGroup { get; set; }
        public DbSet<Topic> Topic { get; set; }
        public DbSet<UserInfo> UserInfo { get; set; }
        public DbSet<Event> Event { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Attendance>()
                .ToTable("attendance");
            modelBuilder.Entity<Attendance>(entity =>
            {
                entity
                    .Property<DateTime>("gmt_modified")
                    .IsRowVersion();
                entity
                    .Property<DateTime>("gmt_create")
                    .ValueGeneratedOnAdd();
                entity
                    .HasKey(m => m.Id);
                entity
                    .Property(m => m.Id)
                    .HasColumnName("id");
                entity
                    .Property(m => m.AttendanceStatus)
                    .HasColumnName("attendance_status");
            });

            //class_info表
            modelBuilder.Entity<ClassInfo>()
                .ToTable("class_info");
            modelBuilder.Entity<ClassInfo>(entity =>
            {
                entity
                    .Property<DateTime>("gmt_modified")
                    .IsRowVersion();
                entity
                    .Property<DateTime>("gmt_create")
                    .ValueGeneratedOnAdd();
                entity
                    .HasKey(m => m.Id);
                entity
                    .Property(m => m.Id)
                    .HasColumnName("id");
                entity
                    .Property(m => m.Name)
                    .HasColumnName("name");
                entity
                    .Property(m => m.Site)
                    .HasColumnName("site");
                entity
                    .Property(m => m.ClassTime)
                    .HasColumnName("class_time");
                entity
                    .Property(m => m.ReportPercentage)
                    .HasColumnName("report_percentage");
                entity
                    .Property(m => m.PresentationPercentage)
                    .HasColumnName("presentation_percentage");
                entity
                    .Property(m => m.FivePointPercentage)
                    .HasColumnName("five_point_percentage");
                entity
                    .Property(m => m.FourPointPercentage)
                    .HasColumnName("four_point_percentage");
                entity
                    .Property(m => m.ThreePointPercentage)
                    .HasColumnName("three_point_percentage");
            });


            //course表
            modelBuilder.Entity<Course>()
                .ToTable("course");
            modelBuilder.Entity<Course>(entity =>
            {
                entity
                    .Property<DateTime>("gmt_modified")
                    .IsRowVersion();
                entity
                    .Property<DateTime>("gmt_create")
                    .ValueGeneratedOnAdd();
                entity
                    .HasKey(m => m.Id);
                entity
                    .Property(m => m.Id)
                    .HasColumnName("id");
                entity
                    .Property(m => m.Name)
                    .HasColumnName("name");
                entity
                    .Property(m => m.StartDate)
                    .HasColumnName("start_date");
                entity
                    .Property(m => m.EndDate)
                    .HasColumnName("end_date");
                entity
                    .Property(m => m.Description)
                    .HasColumnName("description");
                entity
                    .Property(m => m.ReportPercentage)
                    .HasColumnName("report_percentage");
                entity
                    .Property(m => m.PresentationPercentage)
                    .HasColumnName("presentation_percentage");
                entity
                    .Property(m => m.FivePointPercentage)
                    .HasColumnName("five_point_percentage");
                entity
                    .Property(m => m.FourPointPercentage)
                    .HasColumnName("four_point_percentage");
                entity
                    .Property(m => m.ThreePointPercentage)
                    .HasColumnName("three_point_percentage");
            });


            //course_selection表
            modelBuilder.Entity<CourseSelection>()
                .ToTable("course_selection");
            modelBuilder.Entity<CourseSelection>(entity =>
            {
                entity
                    .Property<DateTime>("gmt_modified")
                    .IsRowVersion();
                entity
                    .Property<DateTime>("gmt_create")
                    .ValueGeneratedOnAdd();
                entity
                    .HasKey(m => m.Id);
                entity
                    .Property(m => m.Id)
                    .HasColumnName("id");
            });


            //fix_group表
            modelBuilder.Entity<FixGroup>()
                .ToTable("fix_group");
            modelBuilder.Entity<FixGroup>(entity =>
            {
                entity
                    .Property<DateTime>("gmt_modified")
                    .IsRowVersion();
                entity
                    .Property<DateTime>("gmt_create")
                    .ValueGeneratedOnAdd();
                entity
                    .HasKey(m => m.Id);
                entity
                    .Property(m => m.Id)
                    .HasColumnName("id");
            });


            //fix_group_topic表
            modelBuilder.Entity<FixGroupTopic>()
                .ToTable("fix_group_topic");
            modelBuilder.Entity<FixGroupTopic>(entity =>
            {
                entity
                    .Property<DateTime>("gmt_modified")
                    .IsRowVersion();
                entity
                    .Property<DateTime>("gmt_create")
                    .ValueGeneratedOnAdd();
                entity
                    .HasKey(m => m.Id);
                entity
                    .Property(m => m.Id)
                    .HasColumnName("id");
            });


            //fix_group_member表
            modelBuilder.Entity<FixGroupMember>()
                .ToTable("fix_group_member");
            modelBuilder.Entity<FixGroupMember>(entity =>
            {
                entity
                    .Property<DateTime>("gmt_modified")
                    .IsRowVersion();
                entity
                    .Property<DateTime>("gmt_create")
                    .ValueGeneratedOnAdd();
                entity
                    .HasKey(m => m.Id);
                entity
                    .Property(m => m.Id)
                    .HasColumnName("id");
            });


            //location表
            modelBuilder.Entity<Location>()
                .ToTable("location");
            modelBuilder.Entity<Location>(entity =>
            {
                entity
                    .Property<DateTime>("gmt_modified")
                    .IsRowVersion();
                entity
                    .Property<DateTime>("gmt_create")
                    .ValueGeneratedOnAdd();
                entity
                    .HasKey(m => m.Id);
                entity
                    .Property(m => m.Id)
                    .HasColumnName("id");
                entity
                    .Property(m => m.Longitude)
                    .HasColumnName("longitude");
                entity
                    .Property(m => m.Latitude)
                    .HasColumnName("latitude");
                entity
                    .Property(m => m.Status)
                    .HasColumnName("status");
            });


            //school表
            modelBuilder.Entity<School>()
                .ToTable("school");
            modelBuilder.Entity<School>(entity =>
            {
                entity
                    .Property<DateTime>("gmt_modified")
                    .IsRowVersion();
                entity
                    .Property<DateTime>("gmt_create")
                    .ValueGeneratedOnAdd();
                entity
                    .HasKey(m => m.Id);
                entity
                    .Property(m => m.Id)
                    .HasColumnName("id");
                entity
                    .Property(m => m.Name)
                    .HasColumnName("name");
                entity
                    .Property(m => m.Province)
                    .HasColumnName("province");
                entity
                    .Property(m => m.City)
                    .HasColumnName("city");
            });


            //seminar表
            modelBuilder.Entity<Seminar>()
                .ToTable("seminar");
            modelBuilder.Entity<Seminar>(entity =>
            {
                entity
                    .Property<DateTime>("gmt_modified")
                    .IsRowVersion();
                entity
                    .Property<DateTime>("gmt_create")
                    .ValueGeneratedOnAdd();
                entity
                    .HasKey(m => m.Id);
                entity
                    .Property(m => m.Id)
                    .HasColumnName("id");
                entity
                    .Property(m => m.Name)
                    .HasColumnName("name");
                entity
                    .Property(m => m.Description)
                    .HasColumnName("description");
                entity
                    .Property(m => m.IsFixed)
                    .HasColumnName("is_fixed");
                entity
                    .Property(m => m.StartTime)
                    .HasColumnName("start_time");
                entity
                    .Property(m => m.EndTime)
                    .HasColumnName("end_time");
            });


            //seminar_group表
            modelBuilder.Entity<SeminarGroup>()
                .ToTable("seminar_group");
            modelBuilder.Entity<SeminarGroup>(entity =>
            {
                entity
                    .Property<DateTime>("gmt_modified")
                    .IsRowVersion();
                entity
                    .Property<DateTime>("gmt_create")
                    .ValueGeneratedOnAdd();
                entity
                    .HasKey(m => m.Id);
                entity
                    .Property(m => m.Id)
                    .HasColumnName("id");
                entity
                    .Property(m => m.Report)
                    .HasColumnName("report");
                entity
                    .Property(m => m.ReportGrade)
                    .HasColumnName("report_grade");
                entity
                    .Property(m => m.PresentationGrade)
                    .HasColumnName("presentation_grade");
                entity
                    .Property(m => m.FinalGrade)
                    .HasColumnName("final_grade");
            });


            //seminar_group_member表
            modelBuilder.Entity<SeminarGroupMember>()
                .ToTable("seminar_group_member");
            modelBuilder.Entity<SeminarGroupMember>(entity =>
            {
                entity
                    .Property<DateTime>("gmt_modified")
                    .IsRowVersion();
                entity
                    .Property<DateTime>("gmt_create")
                    .ValueGeneratedOnAdd();
                entity
                    .HasKey(m => m.Id);
                entity
                    .Property(m => m.Id)
                    .HasColumnName("id");
            });


            //seminar_group_topic表
            modelBuilder.Entity<SeminarGroupTopic>()
                .ToTable("seminar_group_topic");
            modelBuilder.Entity<SeminarGroupTopic>(entity =>
            {
                entity
                    .Property<DateTime>("gmt_modified")
                    .IsRowVersion();
                entity
                    .Property<DateTime>("gmt_create")
                    .ValueGeneratedOnAdd();
                entity
                    .HasKey(m => m.Id);
                entity
                    .Property(m => m.Id)
                    .HasColumnName("id");
                entity
                    .Property(m => m.PresentationGrade)
                    .HasColumnName("presentation_grade");
            });


            //student_score_group表
            modelBuilder.Entity<StudentScoreGroup>()
                .ToTable("student_score_group");
            modelBuilder.Entity<StudentScoreGroup>(entity =>
            {
                entity
                    .Property<DateTime>("gmt_modified")
                    .IsRowVersion();
                entity
                    .Property<DateTime>("gmt_create")
                    .ValueGeneratedOnAdd();
                entity
                    .HasKey(m => m.Id);
                entity
                    .Property(m => m.Id)
                    .HasColumnName("id");
                entity
                    .Property(m => m.Grade)
                    .HasColumnName("grade");
            });


            //topic表
            modelBuilder.Entity<Topic>()
                .ToTable("topic");
            modelBuilder.Entity<Topic>(entity =>
            {
                entity
                    .Property<DateTime>("gmt_modified")
                    .IsRowVersion();
                entity
                    .Property<DateTime>("gmt_create")
                    .ValueGeneratedOnAdd();
                entity
                    .HasKey(m => m.Id);
                entity
                    .Property(m => m.Id)
                    .HasColumnName("id");
                entity
                    .Property(m => m.Name)
                    .HasColumnName("name");
                entity
                    .Property(m => m.Description)
                    .HasColumnName("description");
                entity
                    .Property(m => m.GroupNumberLimit)
                    .HasColumnName("group_number_limit");
                entity
                    .Property(m => m.GroupStudentLimit)
                    .HasColumnName("group_student_limit");
            });


            //user_info表
            modelBuilder.Entity<UserInfo>()
                .ToTable("user_info");
            modelBuilder.Entity<UserInfo>(entity =>
            {
                entity
                    .Property<DateTime>("gmt_modified")
                    .IsRowVersion();
                entity
                    .Property<DateTime>("gmt_create")
                    .ValueGeneratedOnAdd();
                entity
                    .HasKey(m => m.Id);
                entity
                    .Property(m => m.Id)
                    .HasColumnName("id");
                entity
                    .Property(m => m.Phone)
                    .HasColumnName("phone");
                entity
                    .Property(m => m.Avatar)
                    .HasColumnName("avatar");
                entity
                    .Property(m => m.Password)
                    .HasColumnName("password");
                entity
                    .Property(m => m.Name)
                    .HasColumnName("name");
                entity
                    .Property(m => m.Gender)
                    .HasColumnName("gender");
                entity
                    .Property(m => m.Type)
                    .HasColumnName("type");
                entity
                    .Property(m => m.Number)
                    .HasColumnName("number");
                entity
                    .Property(m => m.Education)
                    .HasColumnName("education");
                entity
                    .Property(m => m.Title)
                    .HasColumnName("title");
                entity
                    .Property(m => m.Email)
                    .HasColumnName("email");
            });

            //event表
            modelBuilder.Entity<Event>()
                .ToTable("event");
            modelBuilder.Entity<Event>(entity =>
            {
                entity
                    .Property<DateTime>("gmt_modified")
                    .IsRowVersion();
                entity
                    .Property<DateTime>("gmt_create")
                    .ValueGeneratedOnAdd();
                entity
                    .HasKey(m => m.Id);
                entity
                    .Property(m => m.Id)
                    .HasColumnName("id");
                entity
                    .Property(m => m.Bean)
                    .HasColumnName("bean_name");
                entity
                    .Property(m => m.Parameter)
                    .HasColumnName("parameter");
                entity
                   .Property(m => m.Method)
                   .HasColumnName("method_name");
            });
        }
    }
}