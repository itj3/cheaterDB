--takes a student id and returns if they have been accused of cheating.
CREATE OR REPLACE FUNCTION check_student(stud_id Accusation.stu_id%type)
RETURN boolean
IS
a_count number := 0;
has_cheated boolean := False;
BEGIN
	SELECT count(*) INTO a_count FROM Accusation WHERE stu_id = stud_id;
	IF a_count > 0 THEN
		has_cheated := True;
	END IF;
	RETURN has_cheated;
END check_student;
/
--this works but I have no idea how to call it...