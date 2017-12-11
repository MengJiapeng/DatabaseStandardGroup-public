create table school
(
    id  bigint unsigned primary key auto_increment,
    gmt_create datetime default current_timestamp,
    gmt_modified datetime default current_timestamp on update current_timestamp,
    school_name varchar(20) not null,
    province varchar(10) not null,
    city varchar(10) not null
);

create table user_info
(
    id bigint unsigned primary key auto_increment,
    gmt_create datetime default current_timestamp,
    gmt_modified datetime default current_timestamp on update current_timestamp,
    phone_number char(11) not null,
    wechat_id varchar(50),
    icon varchar(50),
    user_password varchar(16) not null,
    user_name varchar(10),
    school_id bigint unsigned,
    is_male tinyint(1) unsigned,
    is_student tinyint(1) unsigned ,
    number varchar(20),
    education tinyint(1) unsigned ,
    email varchar(50)
);

create table course
(
    id bigint unsigned primary key auto_increment,
    gmt_create datetime default current_timestamp,
    gmt_modified datetime default current_timestamp on update current_timestamp,
    course_name varchar(30) not null,
    start_date date,
    end_date date,
    teacher_id bigint unsigned,
    description varchar(50),
    score_rule_id bigint unsigned
);

DROP TABLE IF EXISTS `score_rule`;
CREATE TABLE `score_rule` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT current_timestamp,
  `gmt_modified` datetime DEFAULT current_timestamp ON UPDATE current_timestamp,
  `report` tinyint(3) unsigned DEFAULT NULL,
  `five_point_percentage` tinyint(3) unsigned DEFAULT NULL,
  `four_point_percentage` tinyint(3) unsigned DEFAULT NULL,
  `three_point_percentage` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT current_timestamp,
  `gmt_modified` datetime DEFAULT current_timestamp ON UPDATE current_timestamp,
  `class_name` varchar(255) NOT NULL,
  `course_id` bigint(20) unsigned,
  `site` varchar(255) DEFAULT NULL,
  `class_time` varchar(255) DEFAULT NULL,
  `score_rule_id` bigint(20) unsigned,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `course_selection`;
CREATE TABLE `course_selection` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT current_timestamp,
  `gmt_modified` datetime DEFAULT current_timestamp ON UPDATE current_timestamp,
  `class_id` bigint(20) unsigned,
  `student_id` bigint(20) unsigned,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS attendance;
CREATE TABLE attendance(
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    gmt_create DATETIME DEFAULT CURRENT_TIMESTAMP,
    gmt_modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    student_id BIGINT UNSIGNED NOT NULL,
    class_id BIGINT UNSIGNED NOT NULL,
    attendance_status TINYINT UNSIGNED DEFAULT 0,
    CHECK (attendance_status=0 || attendance_status=1)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS seminar;
CREATE TABLE seminar(
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    gmt_create DATETIME DEFAULT CURRENT_TIMESTAMP,
    gmt_modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    seminar_name VARCHAR(300) NOT NULL,
    seminar_description VARCHAR(5000) DEFAULT NULL,
    course_id BIGINT UNSIGNED,
    is_fixed TINYINT UNSIGNED DEFAULT 0,
    start_time DATE NOT NULL,
    end_time DATE NOT NULL,
    CHECK (is_fixed=0 || is_fixed=1)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS topic;
CREATE TABLE topic(
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    gmt_create DATETIME DEFAULT CURRENT_TIMESTAMP,
    gmt_modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    topic_name VARCHAR(300) NOT NULL,
    description VARCHAR(5000) DEFAULT NULL,
    group_number_limit TINYINT UNSIGNED NOT NULL,
    group_student_limit TINYINT UNSIGNED NOT NULL,
    seminar_id BIGINT UNSIGNED NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

drop table if exists fix_group
create Table fix_group(
       id bigint primary key  auto_increment,
       gmt_create datetime default current_timestamp, 
	   gmt_modified datetime default current_timestamp on update current_timestamp,
       class_id bigint unsigned
);

drop table if exists fix_group_member
create Table fix_group_member(
       id bigint primary key  auto_increment,
       gmt_create datetime default current_timestamp, 
	   gmt_modified datetime default current_timestamp on update current_timestamp,
       fix_group_id bigint unsigned,
       student_id bigint unsigned,
       leader bigint unsigned  
);
drop table if exists seminar_group
create Table seminar_group(
       id bigint primary key  auto_increment,
       gmt_create datetime default current_timestamp, 
	   gmt_modified datetime default current_timestamp on update current_timestamp,
       seminar_id bigint unsigned,
       report_garde int unsigned check(report_grade>=1 and grade<=5),
       report varchar(5000)
);

drop table if exists seminar_group_member
create Table seminar_group_member(
       id bigint primary key  auto_increment,
       gmt_create datetime default current_timestamp, 
	   gmt_modified datetime default current_timestamp on update current_timestamp,
       seminar_group_id bigint unsigned,
       student_id bigint unsigned,
       is_leader tinyint unsigned check(is_leader>=0 and is_leader<=1)
);

drop table if exists seminar_group_topic
create Table seminar_group_topic(
       id bigint primary key  auto_increment,
       gmt_create datetime default current_timestamp, 
	   gmt_modified datetime default current_timestamp on update current_timestamp,
       topic_id bigint unsigned,
       seminar_group_id bigint unsigned,
       presentation_grade int unsigned
);

drop table if exists student_score_group
create Table student_score_group(
       id bigint primary key  auto_increment,
       gmt_create datetime default current_timestamp, 
	   gmt_modified datetime default current_timestamp on update current_timestamp,
       student_id bigint unsigned,
       seminar_group_topic bigint unsigned,
       grade tinyint unsigned check(grade>=1 and grade<=5)
);