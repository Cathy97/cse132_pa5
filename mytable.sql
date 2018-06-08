CREATE TABLE DEPARTMENT(
    DEPT_NAME VARCHAR(60) NOT NULL,
    MIN_GPA DECIMAL(4,3),
    TOTAL_UNIT INT NOT NULL,
    MAJ_UNIT_LOWDIV INT NOT NULL,
    MAJ_UNIT_UPDIV INT NOT NULL,
    ELECTIVE INT NOT NULL,
    GRAD_UNIT INT NOT NULL,
    PRIMARY KEY(DEPT_NAME)
);

CREATE TABLE FACULTY(
    F_NAME VARCHAR(20) NOT NULL,
    TITLE VARCHAR(50),
    PRIMARY KEY(F_NAME)
);

CREATE TABLE COURSE(
    co_number VARCHAR(20) NOT NULL,
    DEPT_NAME VARCHAR(40) NOT NULL,
    GRADE_OPT VARCHAR(20) NOT NULL,
    LEVEL VARCHAR(20) NOT NULL,
    LAB_REQ VARCHAR(5) NOT NULL,
    UNITS_MIN INT NOT NULL,
    UNITS_MAX INT NOT NULL,
    FOREIGN KEY (DEPT_NAME) REFERENCES DEPARTMENT(DEPT_NAME),
    PRIMARY KEY (co_number)
);

CREATE TABLE student(
	s_ssn INT NOT NULL,
	FIRSTNAME VARCHAR(20) NOT NULL,
    MIDDLENAME VARCHAR(20),
    LASTNAME VARCHAR(20) NOT NULL,
    RESIDENCY VARCHAR(20) NOT NULL,
    STU_STATUS VARCHAR(20) NOT NULL,
    ENROLL VARCHAR(5) NOT NULL,
    PRIMARY KEY(s_ssn)
);

CREATE TABLE class(
	title VARCHAR(80) NOT NULL,
	section_id INT NOT NULL,
	le_day VARCHAR(10) NOT NULL,
	enroll_limit INT NOT NULL,
	di_mandatory INT NOT NULL,
	f_name VARCHAR(20) NOT NULL,
	co_number VARCHAR(20) NOT NULL,
	review_session INT NOT NULL,
	waitlist INT NOT NULL,
	quarter VARCHAR(20) NOT NULL,
	year INT NOT NULL,	
	le_time VARCHAR(20) NOT NULL,
	le_ampm VARCHAR(10) NOT NULL,
	di_day VARCHAR(10) NOT NULL,
	di_time VARCHAR(20) NOT NULL,
	di_ampm VARCHAR(10) NOT NULL,
	lab_day VARCHAR(10) NOT NULL,
	lab_time VARCHAR(20) NOT NULL,
	lab_ampm VARCHAR(10) NOT NULL,
	PRIMARY KEY (section_id),
	FOREIGN KEY (f_name) REFERENCES FACULTY(F_NAME),
	FOREIGN KEY (section_id) REFERENCES class(section_id),
	FOREIGN KEY (co_number) REFERENCES COURSE(co_number)
);

CREATE TABLE course_enrollment(
	s_ssn INT NOT NULL,
	co_number VARCHAR(20) NOT NULL,
	section_id INT NOT NULL,
	units INT NOT NULL,
	FOREIGN KEY (s_ssn) REFERENCES student(s_ssn),
	FOREIGN KEY(co_number) REFERENCES COURSE(co_number),
	CONSTRAINT TAKE_KEY PRIMARY KEY (s_ssn,co_number,section_id)
);

CREATE TABLE past_classes(
	s_ssn INT NOT NULL,
	co_number VARCHAR(20) NOT NULL,
	section_id INT NOT NULL,
	year INT NOT NULL,
	quarter VARCHAR(20) NOT NULL,
	f_name VARCHAR(20) NOT NULL,
	grade VARCHAR(10)
);

CREATE TABLE CPQG (
	co_number varchar(15) NOT NULL,
	f_name varchar(40) NOT NULL,
	quarter varchar(10) NOT NULL,
	year integer,
	a integer,
	b integer,
	c integer,
	d integer,
	other integer
);

CREATE TABLE CPG (
	co_number varchar(15) NOT NULL,
	f_name varchar(40) NOT NULL,
	a integer,
	b integer,
	c integer,
	d integer,
	other integer
);
