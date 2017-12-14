drop table if exists school;
create table school(
    id  bigint unsigned primary key auto_increment,
    gmt_create datetime default current_timestamp,
    gmt_modified datetime default current_timestamp on update current_timestamp,
    name varchar(20) not null,
    province varchar(10) not null, 
    city varchar(10) not null
)default charset=utf8;

drop table if exists user_info;
create table user_info(
    id bigint unsigned primary key auto_increment,
    gmt_create datetime default current_timestamp,
    gmt_modified datetime default current_timestamp on update current_timestamp,
    phone_number char(11) not null,
    wechat_id varchar(50),
    openid varchar(50),
    avatar varchar(50),
    user_password varchar(16) not null,
    name varchar(10),
    school_id bigint unsigned,
    is_male tinyint(1) unsigned,
    is_student tinyint(1) unsigned ,
    number varchar(20),
    education tinyint(1) unsigned ,
    title varchar(10),
    email varchar(50)
)default charset=utf8;

drop table if exists course;
create table course(
    id bigint unsigned primary key auto_increment,
    gmt_create datetime default current_timestamp,
    gmt_modified datetime default current_timestamp on update current_timestamp,
    name varchar(30) not null,
    start_date date,
    end_date date,
    teacher_id bigint unsigned,
    description varchar(50),
    report_percentage tinyint(3) unsigned default null,
    presentation_percentage tinyint(3) unsigned default null,
    five_point_percentage tinyint(3) unsigned default null,
    four_point_percentage tinyint(3) unsigned default null,
    three_point_percentage tinyint(3) unsigned default null
)default charset=utf8;

drop table if exists class_info;
create table class_info (
  id bigint(20) unsigned not null auto_increment,
  gmt_create datetime default current_timestamp,
  gmt_modified datetime default current_timestamp on update current_timestamp,
  name varchar(255) not null,
  course_id bigint(20) unsigned,
  site varchar(255) default null,
  class_time varchar(255) default null,
  report_percentage tinyint(3) unsigned default null,
  presentation_percentage tinyint(3) unsigned default null,
  five_point_percentage tinyint(3) unsigned default null,
  four_point_percentage tinyint(3) unsigned default null,
  three_point_percentage tinyint(3) unsigned default null,
  primary key (id)
)default charset=utf8;

drop table if exists course_selection;
create table course_selection (
  id bigint(20) unsigned not null auto_increment,
  gmt_create datetime default current_timestamp,
  gmt_modified datetime default current_timestamp on update current_timestamp,
  class_id bigint(20) unsigned,
  student_id bigint(20) unsigned,
  primary key (id)
)default charset=utf8;

drop table if exists attendance;
create table attendance(
    id bigint unsigned auto_increment primary key,
    gmt_create datetime default current_timestamp,
    gmt_modified datetime default current_timestamp on update current_timestamp,
    student_id bigint unsigned not null,
    seminar_id bigint unsigned not null,
    class_id bigint unsigned not null,
    attendance_status tinyint unsigned default 0,
    check (attendance_status=0 || attendance_status=1)
)default charset=utf8;

drop table if exists seminar;
create table seminar(
    id bigint unsigned auto_increment primary key,
    gmt_create datetime default current_timestamp,
    gmt_modified datetime default current_timestamp on update current_timestamp,
    name varchar(300) not null,
    seminar_description varchar(5000) default null,
    course_id bigint unsigned,
    is_fixed tinyint unsigned default 0,
    start_time date not null,
    end_time date not null,
    check (is_fixed=0 || is_fixed=1)
)default charset=utf8;

drop table if exists topic;
create table topic(
    id bigint unsigned auto_increment primary key,
    gmt_create datetime default current_timestamp,
    gmt_modified datetime default current_timestamp on update current_timestamp,
    name varchar(300) not null,
    description varchar(5000) default null,
    group_number_limit tinyint unsigned not null,
    group_student_limit tinyint unsigned not null,
    seminar_id bigint unsigned not null
)default charset=utf8;

drop table if exists fix_group;
create table fix_group(
       id bigint primary key  auto_increment,
       gmt_create datetime default current_timestamp, 
	   gmt_modified datetime default current_timestamp on update current_timestamp,
       class_id bigint unsigned,
       leader bigint unsigned
)default charset=utf8;

drop table if exists fix_group_member;
create table fix_group_member(
       id bigint primary key  auto_increment,
       gmt_create datetime default current_timestamp, 
	   gmt_modified datetime default current_timestamp on update current_timestamp,
       fix_group_id bigint unsigned,
       student_id bigint unsigned 
)default charset=utf8;

drop table if exists seminar_group;
create table seminar_group(
       id bigint primary key  auto_increment,
       gmt_create datetime default current_timestamp, 
	   gmt_modified datetime default current_timestamp on update current_timestamp,
       seminar_id bigint unsigned,
       report_garde int unsigned check(report_grade>=1 and grade<=5),
       presentation_grade int unsigned,
       final_grade int unsigned,
       report varchar(100),
       class_id bigint unsigned,
       leader_id bigint unsigned
)default charset=utf8;

drop table if exists seminar_group_member;
create table seminar_group_member(
       id bigint primary key  auto_increment,
       gmt_create datetime default current_timestamp, 
	   gmt_modified datetime default current_timestamp on update current_timestamp,
       seminar_group_id bigint unsigned,
       student_id bigint unsigned
)default charset=utf8;

drop table if exists seminar_group_topic;
create table seminar_group_topic(
       id bigint primary key  auto_increment,
       gmt_create datetime default current_timestamp, 
	   gmt_modified datetime default current_timestamp on update current_timestamp,
       topic_id bigint unsigned,
       seminar_group_id bigint unsigned,
       presentation_grade int unsigned
)default charset=utf8;

drop table if exists student_score_group;
create table student_score_group(
       id bigint primary key  auto_increment,
       gmt_create datetime default current_timestamp, 
	   gmt_modified datetime default current_timestamp on update current_timestamp,
       student_id bigint unsigned,
       seminar_group_topic bigint unsigned,
       grade tinyint unsigned check(grade>=1 and grade<=5)
)default charset=utf8;

drop table if exists location;
create table location(
    id bigint unsigned primary key auto_increment,
    gmt_create datetime default current_timestamp, 
	gmt_modified datetime default current_timestamp on update current_timestamp,
    class_id bigint unsigned,
    seminar_id bigint unsigned,
    longitude decimal(10, 6),
    latitude decimal(10, 6),
    status tinyint unsigned
)default charset=utf8;