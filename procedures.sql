--allow a teacher to add an accusation to the database
--take date, type, evidence, student id FK, and instructor id FK
--note student ID and intructor ID must be valid IE in the database already
--accusation ID is created and status is set to 'Pending'
CREATE OR REPLACE PROCEDURE add_accusation(adate Accusation.acc_date%type, atype Accusation.type%type, 
										   aevidence Accusation.evidence%type, astu_id Accusation.stu_id%type, 
										   aint_id Accusation.int_id%type)
IS
BEGIN
	INSERT INTO Accusation (acc_id, acc_date, type, evidence, status, stu_id, int_id)
	VALUES ((SELECT MAX(acc_id) FROM Accusation) + 1, adate, atype, aevidence, 'Pending', astu_id, aint_id);
END add_accusation;
/
--example of procudure running
--exec add_accusation('15,Mar-2015', 'Copy', 'testing', 1234567, 003009643);
--to remove example(s)
--delete Accusation where acc_id > 4;






