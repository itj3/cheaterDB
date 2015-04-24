--Gives complete privilege on all tables/views
--Tables
Grant ALL ON Student to mlh395;
Grant ALL ON Instructor to mlh395;
Grant ALL ON College to mlh395;
Grant ALL ON Department to mlh395;
Grant ALL ON CourseSection to mlh395;
Grant ALL ON ClassSchedule to mlh395;
Grant ALL ON Course to mlh395;
Grant ALL ON Accusation to mlh395;
Grant All On r_acc_before_delete_trig to mlh395;
--Views
Grant ALL ON allaccu to mlh395;
Grant ALL ON pending to mlh395;

--Gives execution privileges on all functions and procedures.
--needs the names functions and procedures
Grant Execute On add_accusation to mlh395;
Grant Execute On check_student to mlh395;
Grant Execute On get_dean to mlh395;