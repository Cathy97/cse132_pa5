-- department
insert into department values('B.S. in Computer Science', 0, 40, 10, 15, 15, 0);
insert into department values('B.A. in Philosophy', 0, 35, 15, 20, 0, 0);
insert into department values('B.S. in Mechanical Engineering', 0, 50, 20, 20, 10, 0);
insert into department values('M.S. in Computer Science', 0, 45, 0, 0, 0, 45);


-- STUDENT
insert into student values(1, 'Benjamin', NULL, 'B', 'SD', 'Undergrad', 'Yes');
insert into student values(2, 'Kristen', NULL, 'W', 'SD', 'Undergrad', 'Yes');
insert into student values(3, 'Daniel', NULL, 'F', 'SD', 'Undergrad', 'Yes');
insert into student values(4, 'Claire', NULL, 'J', 'SD', 'Undergrad', 'Yes');
insert into student values(5, 'Julie', NULL, 'C', 'SD', 'Undergrad', 'Yes');
insert into student values(6, 'Kevin', NULL, 'L', 'SD', 'Undergrad', 'Yes');
insert into student values(7, 'Michael', NULL, 'B', 'SD', 'Undergrad', 'Yes');
insert into student values(8, 'Joseph', NULL, 'J', 'SD', 'Undergrad', 'Yes');
insert into student values(9, 'Devin', NULL, 'P', 'SD', 'Undergrad', 'Yes');
insert into student values(10, 'Logan', NULL, 'F', 'SD', 'Undergrad', 'Yes');
insert into student values(11, 'Vikram', NULL, 'N', 'SD', 'Undergrad', 'Yes');
insert into student values(12, 'Rachel', NULL, 'Z', 'SD', 'Undergrad', 'Yes');
insert into student values(13, 'Zach', NULL, 'M', 'SD', 'Undergrad', 'Yes');
insert into student values(14, 'Justin', NULL, 'H', 'SD', 'Undergrad', 'Yes');
insert into student values(15, 'Rahul', NULL, 'R', 'SD', 'Undergrad', 'Yes');
insert into student values(16, 'Dave', NULL, 'C', 'SD', 'MS', 'Yes');
insert into student values(17, 'Nelson', NULL, 'H', 'SD', 'MS', 'Yes');
insert into student values(18, 'Andrew', NULL, 'P', 'SD', 'MS', 'Yes');
insert into student values(19, 'Nathan', NULL, 'S', 'SD', 'MS', 'Yes');
insert into student values(20, 'John', NULL, 'H', 'SD', 'MS', 'Yes');
insert into student values(21, 'Anwell', NULL, 'W', 'SD', 'MS', 'Yes');
insert into student values(22, 'Tim', NULL, 'K', 'SD', 'MS', 'Yes');

-- course
insert into course values('CSE8A', 'B.S. in Computer Science', 'S/U', 'lower', 'no', 4, 4);
insert into course values('CSE105', 'B.S. in Computer Science', 'letter', 'upper', 'no', 4, 4);
insert into course values('CSE123', 'B.S. in Computer Science', 'letter', 'upper', 'no', 4, 4);
insert into course values('CSE250A', 'M.S. in Computer Science', 'letter', 'grad', 'no', 4, 4);
insert into course values('CSE250B', 'M.S. in Computer Science', 'letter', 'grad', 'no', 4, 4);
insert into course values('CSE255', 'M.S. in Computer Science', 'letter', 'grad', 'no', 4, 4);
insert into course values('CSE232A', 'M.S. in Computer Science', 'letter', 'grad', 'no', 4, 4);
insert into course values('CSE221', 'M.S. in Computer Science', 'S/U', 'grad', 'no', 4, 4);
insert into course values('MAE3', 'B.S. in Mechanical Engineering', 'letter', 'lower', 'no', 4, 4);
insert into course values('MAE107', 'B.S. in Mechanical Engineering', 'letter', 'upper', 'no', 4, 4);
insert into course values('MAE108', 'B.S. in Mechanical Engineering', 'letter', 'upper', 'no', 2, 2);
insert into course values('PHIL10', 'B.A. in Philosophy', 'letter', 'lower', 'no', 4, 4);
insert into course values('PHIL12', 'B.A. in Philosophy', 'letter', 'lower', 'no', 4, 4);
insert into course values('PHIL165', 'B.A. in Philosophy', 'S/U', 'upper', 'no', 2, 2);
insert into course values('PHIL167', 'B.A. in Philosophy', 'letter', 'upper', 'no', 4, 4);

-- faculty
insert into faculty values('Justin Bieber', 'Associate Professor');
insert into faculty values('Flo Rida', 'Professor');
insert into faculty values('Selena Gomez', 'Professor');
insert into faculty values('Adele', 'Professor');
insert into faculty values('Taylor Swift', 'Professor');
insert into faculty values('Kelly Clarkson', 'Professor');
insert into faculty values('Adam Levine', 'Professor');
insert into faculty values('Bjork', 'Professor');

-- CPQG
INSERT INTO CPQG (co_number, f_name, quarter, year, a, b, c, d, other) VALUES 
	('cse8a', 'Justin Bieber', 'Winter', 2017, 1, 1, 0, 0, 0),
	('cse8a', 'Selena Gomez', 'Fall', 2017, 0, 0, 1, 0, 0),
	('cse8a', 'Kelly Clarkson', 'Winter', 2018, 1, 1, 0, 0, 0),
	('cse105', 'Taylor Swift', 'Spring', 2017, 1, 1, 1, 0, 0),
	('cse250a', 'Bjork', 'Winter', 2017, 0, 0, 1, 0, 0),
	('cse250a', 'Bjork', 'Winter', 2018, 0, 1, 0, 1, 1),
	('cse250b', 'Justin Bieber', 'Spring', 2017, 2, 0, 0, 0, 0),
	('cse255', 'Justin Bieber', 'Winter', 2018, 0, 2, 0, 0, 1),
	('cse232a', 'Kelly Clarkson', 'Winter', 2018, 1, 0, 0, 0, 0),
	('cse221', 'Justin Bieber', 'Fall', 2017, 2, 0, 0, 0, 0),
	('mae107', 'Bjork', 'Fall', 2017, 0, 1, 0, 0, 0),
	('mae108', 'Selena Gomez', 'Winter', 2017, 1, 1, 0, 0, 0),
	('mae108', 'Selena Gomez', 'Spring', 2017, 0, 2, 0, 0, 0),
	('phil10', 'Bjork', 'Winter', 2018, 2, 0, 2, 0, 0),
	('phil165', 'Flo Rida', 'Fall', 2017, 0, 0, 0, 1, 1),
	('phil165', 'Adam Levine', 'Winter', 2018, 1, 0, 0, 0, 0);

-- CPG
INSERT INTO CPG (co_number, f_name, a, b, c, d, other) VALUES 
	('cse8a', 'Justin Bieber', 1, 1, 0, 0, 0),
	('cse8a', 'Selena Gomez', 0, 0, 1, 0, 0),
	('cse8a', 'Kelly Clarkson', 1, 1, 0, 0, 0),
	('cse105', 'Taylor Swift', 1, 1, 1, 0, 0),
	('cse250a', 'Bjork', 0, 1, 1, 1, 1),
	('cse250b', 'Justin Bieber', 2, 0, 0, 0, 0),
	('cse255', 'Justin Bieber', 0, 2, 0, 0, 1),
	('cse232a', 'Kelly Clarkson', 1, 0, 0, 0, 0),
	('cse221', 'Justin Bieber', 2, 0, 0, 0, 0),
	('mae107', 'Bjork', 0, 1, 0, 0, 0),
	('mae108', 'Selena Gomez', 1, 3, 0, 0, 0),
	('phil10', 'Bjork', 2, 0, 2, 0, 0),
	('phil165', 'Flo Rida', 0, 0, 0, 1, 1),
	('phil165', 'Adam Levine', 1, 0, 0, 0, 0);
