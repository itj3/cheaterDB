--Student Data Insert

Insert into Student (stu_id, email, grade_level, first_name, last_name) values (1234567, 'we456@nau.edu', 30, 'Will', 'Elf');
Insert into Student (stu_id, email, grade_level, first_name, last_name) values (9876543, 'tyl905@nau.edu', 60, 'Tracia','Larry');
Insert into Student (stu_id, email, grade_level, first_name, last_name) values (1357986, 'zul666@nau.edu', 90, 'Zinc', 'Lithium');
Insert into Student (stu_id, email, grade_level, first_name, last_name) values (4816771, 'lc184@nau.edu', 100, 'Lela', 'Cooper');
Insert into Student (stu_id, email, grade_level, first_name, last_name) values (7514233, 'jb422@nau.edu', 85, 'Jamie','Bush');
Insert into Student (stu_id, email, grade_level, first_name, last_name) values (6576037, 'rf272@nau.edu', 60, 'Ronnie', 'Fowler');

--Instructor Data Insert

Insert into Instructor (int_id, email, first_name, last_name) values (002966680, 'maggie.vanderberg@nau.edu', 'Maggie', 'Vanderberg');
Insert into Instructor (int_id, email, first_name, last_name) values (003009643, 'omar.badreddin@nau.edu', 'Omar', 'Badreddin');
Insert into Instructor (int_id, email, first_name, last_name) values (002972392, 'stephen.jacobs@nau.edu', 'Stephen', 'Jacobs');
Insert into Instructor (int_id, email, first_name, last_name) values (003396813, 'benjamin.briggs@nau.edu', 'Benjamin', 'Briggs');
Insert into Instructor (int_id, email, first_name, last_name) values (008413910, 'al.byrd@nau.edu', 'Al', 'Byrd');
Insert into Instructor (int_id, email, first_name, last_name) values (004126121, 'sidney.valdez@nau.edu', 'Sidney', 'Valdez');
Insert into Instructor (int_id, email, first_name, last_name) values (009781503, 'jamie.thornton@nau.edu', 'Jamie', 'Thornton');
Insert into Instructor (int_id, email, first_name, last_name) values (007509407, 'pedro.delgado@nau.edu', 'Pedro', 'Delgado');
Insert into Instructor (int_id, email, first_name, last_name) values (009297086, 'dominic.lyons@nau.edu', 'Dominic', 'Lyons');

--College Data Insert

Insert into College (col_id, title, dean) values (0001, 'College of Engineering Forestry and Natural Sciences', 'Jean Toshiba');
Insert into College (col_id, title, dean) values (0002, 'Social and Behavioral Science', 'Cabbage Dell');
Insert into College (col_id, title, dean) values (0003, 'University College', 'Frankie Lenovo');

--Department Data Insert

ALTER TABLE Department DISABLE CONSTRAINT dept_col_fk;

Insert into Department (dept_id, chair, title, col_id) values (00001, 'Robin Scott', 'Engineering', 0001);
Insert into Department (dept_id, chair, title, col_id) values (00002, 'Johnathon Johnson', 'Basket Weaving', 0003);
Insert into Department (dept_id, chair, title, col_id) values (00003, 'Timothy Thompson', 'Museum Studies', 0002);
Insert into Department (dept_id, chair, title, col_id) values (00004, 'Skynet', 'Computer Science', 0001);
Insert into Department (dept_id, chair, title, col_id) values (00005, 'Blaise Pascal', 'Mathematics', 0003);

ALTER TABLE Department Enable CONSTRAINT dept_col_fk;

--CourseSection Data Insert

ALTER TABLE CourseSection DISABLE CONSTRAINT cs_int_fk;

Insert into CourseSection (cs_id, cs_date, int_id) values (001 , '1-Aug-2014', 002966680);
Insert into CourseSection (cs_id, cs_date, int_id) values (002 , '1-Aug-2014', 002972392);
Insert into CourseSection (cs_id, cs_date, int_id) values (003 , '1-Aug-2014', 003009643);
Insert into CourseSection (cs_id, cs_date, int_id) values (004 , '1-Aug-2014', 003396813);
Insert into CourseSection (cs_id, cs_date, int_id) values (005 , '1-Aug-2014', 002972392);
Insert into CourseSection (cs_id, cs_date, int_id) values (006 , '1-Aug-2014', 008413910);
Insert into CourseSection (cs_id, cs_date, int_id) values (007 , '1-Aug-2014', 003396813);
Insert into CourseSection (cs_id, cs_date, int_id) values (008 , '1-Aug-2014', 004126121);
Insert into CourseSection (cs_id, cs_date, int_id) values (009 , '1-Aug-2014', 008413910);
Insert into CourseSection (cs_id, cs_date, int_id) values (010 , '1-Aug-2014', 009781503);

Insert into CourseSection (cs_id, cs_date, int_id) values (011 , '1-Dec-2015', 004126121);
Insert into CourseSection (cs_id, cs_date, int_id) values (012 , '1-Dec-2015', 007509407);
Insert into CourseSection (cs_id, cs_date, int_id) values (013 , '1-Dec-2015', 009781503);
Insert into CourseSection (cs_id, cs_date, int_id) values (014 , '1-Dec-2015', 009297086);
Insert into CourseSection (cs_id, cs_date, int_id) values (015 , '1-Dec-2015', 007509407);
Insert into CourseSection (cs_id, cs_date, int_id) values (016 , '1-Dec-2015', 002966680);
Insert into CourseSection (cs_id, cs_date, int_id) values (017 , '1-Dec-2015', 009297086);
Insert into CourseSection (cs_id, cs_date, int_id) values (018 , '1-Dec-2015', 003009643);
Insert into CourseSection (cs_id, cs_date, int_id) values (019 , '1-Dec-2015', 002966680);
Insert into CourseSection (cs_id, cs_date, int_id) values (020 , '1-Dec-2015', 003009643);


ALTER TABLE CourseSection Enable CONSTRAINT cs_int_fk;

--Class Data Insert

ALTER TABLE ClassSchedule DISABLE CONSTRAINT cl_stu_fk; 
ALTER TABLE ClassSchedule DISABLE CONSTRAINT cl_cs_fk;

Insert into ClassSchedule (cs_id, stu_id) values ( 013, 1234567);
Insert into ClassSchedule (cs_id, stu_id) values ( 020, 1234567);
Insert into ClassSchedule (cs_id, stu_id) values ( 001, 1234567);
Insert into ClassSchedule (cs_id, stu_id) values ( 010, 1234567);

Insert into ClassSchedule (cs_id, stu_id) values ( 012, 9876543);
Insert into ClassSchedule (cs_id, stu_id) values ( 019, 9876543);
Insert into ClassSchedule (cs_id, stu_id) values ( 002, 9876543);
Insert into ClassSchedule (cs_id, stu_id) values ( 009, 9876543);

Insert into ClassSchedule (cs_id, stu_id) values ( 013, 1357986);
Insert into ClassSchedule (cs_id, stu_id) values ( 018, 1357986);
Insert into ClassSchedule (cs_id, stu_id) values ( 003, 1357986);
Insert into ClassSchedule (cs_id, stu_id) values ( 008, 1357986);

Insert into ClassSchedule (cs_id, stu_id) values ( 014, 4816771);
Insert into ClassSchedule (cs_id, stu_id) values ( 017, 4816771);
Insert into ClassSchedule (cs_id, stu_id) values ( 004, 4816771);
Insert into ClassSchedule (cs_id, stu_id) values ( 007, 4816771);

Insert into ClassSchedule (cs_id, stu_id) values ( 015, 7514233);
Insert into ClassSchedule (cs_id, stu_id) values ( 017, 7514233);
Insert into ClassSchedule (cs_id, stu_id) values ( 005, 7514233);
Insert into ClassSchedule (cs_id, stu_id) values ( 006, 7514233);

Insert into ClassSchedule (cs_id, stu_id) values ( 013, 6576037);
Insert into ClassSchedule (cs_id, stu_id) values ( 018, 6576037);
Insert into ClassSchedule (cs_id, stu_id) values ( 004, 6576037);
Insert into ClassSchedule (cs_id, stu_id) values ( 007, 6576037);

ALTER TABLE ClassSchedule Enable CONSTRAINT cl_stu_fk; 
ALTER TABLE ClassSchedule Enable CONSTRAINT cl_cs_fk;

--Course Data Insert

ALTER TABLE Course Disable CONSTRAINT cou_dept_fk;

Insert into Course (cou_id, name, cou_desc, dept_id) values (001, 'Introduction to Engineering', 'Basic engineering design concepts', 0001);
Insert into Course (cou_id, name, cou_desc, dept_id) values (002, 'Engineering II', 'Advance engineering design concepts and there implementations in the real world', 0001);
Insert into Course (cou_id, name, cou_desc, dept_id) values (003, 'NAGPRA in Arizona', 'The effects of NAGPRA on small Arizona meseums and archives', 0002);
Insert into Course (cou_id, name, cou_desc, dept_id) values (004, 'Intoduction to Archives', 'Common issues with archives and the hidden secrets behind there walls', 0002);
Insert into Course (cou_id, name, cou_desc, dept_id) values (005, 'Under Water Basket Weaving', 'We weave baskets underwater', 0003);
Insert into Course (cou_id, name, cou_desc, dept_id) values (006, 'Traditional Hopi Basket Weaving', 'We draw insperation from the traditional Hopi designs to recreate the style', 0003);
Insert into Course (cou_id, name, cou_desc, dept_id) values (007, 'Introduction to Computer Science', 'Introduction to algorithmic thinking and object-oriented programming.', 0004);
Insert into Course (cou_id, name, cou_desc, dept_id) values (008, 'Principles of Database Systems', 'Basic concepts in database systems, including data manipulation language and data definition language. The relational model and its implementation will be covered in depth together with an overview of SQL.', 0004);
Insert into Course (cou_id, name, cou_desc, dept_id) values (009, 'Statistics 1', 'raphical and quantitative description of data; binomial, normal, and t distributions; one- and two-sample hypothesis tests and confidence intervals; simple linear regression and correlation.', 0005);
Insert into Course (cou_id, name, cou_desc, dept_id) values (010, 'Discrete  Mathematics', 'Elementary discrete mathematics including topics from graph theory and combinatorics with emphasis on problem solving.', 0005);

ALTER TABLE Course Enable CONSTRAINT cou_dept_fk;

--Accusation Data Insert

ALTER TABLE Accusation DISABLE CONSTRAINT acc_cs_fk;
ALTER TABLE Accusation DISABLE CONSTRAINT acc_stu_fk;
ALTER TABLE Accusation DISABLE CONSTRAINT acc_int_fk;

Insert into Accusation (acc_id, acc_date, type, evidence, status, cs_id, stu_id, int_id) values ( 0001, '12-Dec-2014', 'Copy', 'Student had identical answers to homework as another student. Answers were wrong', 'Confirmed', 013, 1357986, 003009643);
Insert into Accusation (acc_id, acc_date, type, evidence, status, cs_id, stu_id, int_id) values ( 0002, '11-Nov-2014', 'Plagiarize', 'Students paper came back with quotes from wikipedia after running paper through safeassign', 'Pending', 009, 9876543, 007509407);
Insert into Accusation (acc_id, acc_date, type, evidence, status, cs_id, stu_id, int_id) values ( 0003, '14-Feb-2015', 'Plagiarize', 'Students paper came back with quotes from wikipedia after running paper through safeassign', 'Pending', 012, 9876543, 002972392);
Insert into Accusation (acc_id, acc_date, type, evidence, status, cs_id, stu_id, int_id) values ( 0004, '12-Mar-2015', 'Copy', 'Student had identical answers to homework as another student. Answers were wrong', 'Confirmed', 013, 1234567, 003009643);

ALTER TABLE Accusation Enable CONSTRAINT acc_cs_fk;
ALTER TABLE Accusation Enable CONSTRAINT acc_stu_fk;
ALTER TABLE Accusation Enable CONSTRAINT acc_int_fk;
