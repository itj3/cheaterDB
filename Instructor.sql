CREATE TABLE Instructor(
	int_id number(7) CONSTRAINT int_pk PRIMARY KEY DEFERRABLE INITIALLY IMMEDIATE,
	email varchar(15) CONSTRAINT int_email_nn NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
	first_name varchar(10) CONSTRAINT int_fn_nn NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
	last_name varchar(10) CONSTRAINT int_ln_nn NOT NULL DEFERRABLE INITIALLY IMMEDIATE
);