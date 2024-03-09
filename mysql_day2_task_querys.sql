


create table student (student_id int primary key, student_name varchar(50), student_email varchar(50), mobile_number int(15), batch_id int(20), batch_name varchar(50), mentor_name varchar(50));

create table task (task_id int primary key, task_name varchar(50), mentor_id int(20), mentor_name varchar(50), batch_name varchar(50), student_id int, foreign key (student_id) references student(student_id));

create table dashboard (dashboard_id int primary key, mentor_id int(20), batch_id int(20), student_id int, foreign key (student_id) references student(student_id));

create table queryTable (query_id int primary key, query_description varchar(255), mentor_id int(20), student_id int, foreign key (student_id) references student(student_id));

create table mockinterview (mockinterview_id int primary key, mentor_id int, batch_id int, student_id int, foreign key (student_id) references student(student_id));

create table batchtable (batch_id int primary key, batch_name varchar(50), total_student int, mentor_id int);

create table mentorinfo (mentor_id int primary key, mentor_name varchar(50), mentor_email varchar(50), mobile_number int, assigned_batch varchar(50));

ALTER TABLE `student` ADD FOREIGN KEY (`batch_id`) REFERENCES `batchtable` (`batch_id`);

ALTER TABLE `task` ADD FOREIGN KEY (`mentor_id`) REFERENCES `mentorinfo` (`mentor_id`);

ALTER TABLE `batchtable` ADD FOREIGN KEY (`mentor_id`) REFERENCES `mentorinfo` (`mentor_id`);

ALTER TABLE `querytable` ADD FOREIGN KEY (`mentor_id`) REFERENCES `mentorinfo` (`mentor_id`);

ALTER TABLE `dashboard` ADD FOREIGN KEY (`mentor_id`) REFERENCES `mentorinfo` (`mentor_id`);

ALTER TABLE `dashboard` ADD FOREIGN KEY (`batch_id`) REFERENCES `batchtable` (`batch_id`);

ALTER TABLE `mockinterview` ADD FOREIGN KEY (`mentor_id`) REFERENCES `mentorinfo` (`mentor_id`);

ALTER TABLE `mockinterview` ADD FOREIGN KEY (`batch_id`) REFERENCES `batchtable` (`batch_id`);
