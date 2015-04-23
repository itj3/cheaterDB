Drop view allaccu;
Drop view pending;

--for professor 003009643
create view allaccu as
	select last_name "Last Name", first_name "First Name", stu_id "Student ID",status "Status" ,cs_id "Course ID"
	from accusation
	natural join student
	join ClassSchedule using(stu_id)
	where int_id = 003009643;
	
	
--more private
create view pending as
	select stu_id "Student ID", cs_id "Course ID", int_id "Instructor"
	from accusation
	join ClassSchedule using(stu_id)
	where lower(status) = 'pending';
	