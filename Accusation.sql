CREATE TABLE Accusation(
	acc_id number(4) CONSTRAINT acc_pk PRIMARY KEY DEFERRABLE INITIALLY IMMEDIATE,
	acc_date date CONSTRAINT acc_date_nn NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
	type varchar(10) CONSTRAINT acc_type_nn NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
	evidence varchar(1000) CONSTRAINT acc_evid_nn NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
	status varchar(25),
	stu_id number(7),
	int_id number(7),
	CONSTRAINT acc_int_fk FOREIGN KEY(int_id) REFERENCES Instructor(int_id) DEFERRABLE INITIALLY IMMEDIATE,
	CONSTRAINT acc_stu_fk FOREIGN KEY(stu_id) REFERENCES Student(stu_id) DEFERRABLE INITIALLY IMMEDIATE
);