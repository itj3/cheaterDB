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

--takes an accusation id and returns the dean associated with the course section
--the student(s) were accused cheating in.
CREATE OR REPLACE FUNCTION get_dean(accu_id Accusation.acc_id%type)
RETURN varchar2
IS
result varchar2(21);
BEGIN
	SELECT dean INTO result 
	FROM ((((College INNER JOIN Department USING (col_id))
	             	 INNER JOIN Course USING (dept_id)) 
	             	 INNER JOIN CourseSection USING (cou_id)) 
	             	 INNER JOIN Accusation USING (cs_id)) 
	WHERE acc_id = accu_id;
END get_dean;
/

--if the inner joins don't make sense it might be easier to represent in a nested select
/*
SELECT dean INTO result FROM College WHERE col_id IN
		(SELECT col_id FROM Department WHERE dept_id IN (
			SELECT dept_id FROM Course WHERE cou_id IN (
				SELECT cou_id FROM CourseSection WHERE cs_id IN (
					SELECT cs_id FROM Accusation WHERE acc_id = accud_id))));
*/

