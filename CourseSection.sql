CREATE TABLE CourseSection(
	cs_id number(4) CONSTRAINT cs_pk PRIMARY KEY DEFERRABLE INITIALLY IMMEDIATE,
	cs_date date CONSTRAINT cs_date_nn NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
	int_id number(7),
	CONSTRAINT cs_int_fk FOREIGN KEY(int_id) REFERENCES Instructor(int_id) DEFERRABLE INITIALLY IMMEDIATE
);