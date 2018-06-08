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
