INSERT INTO Student (StudentID, SemesterId,StudentName, Birthdate, AcademicYear,Email, PhoneNo, Percentage,AdmissionDate) values
    ('S1','SEM1',  'John Doe', '2000-05-15', 2023, 'john.doe@email.com', '91234567890', 85.5,'2022-07-15'),
    ('S2','SEM1',  'Jane Smith', '2001-02-20', 2023, 'jane.smith@email.com', '91987654321', 92.0,'2022-07-16'),
    ('S3', 'SEM2','Bob Johnson', '1999-09-10', 2023, 'bob.johnson@email.com', '91654321890', 78.3,'2022-07-15'),
    ('S5','SEM2', 'Charlie Brown', '2002-04-05', 2023, 'charlie.brown@email.com', '91888777666', 91.2,'2021-06-10'),
    ('S4','SEM1',  'Alice Williams', '2000-11-30', 2023, 'alice.williams@email.com', '91765432980', 88.7,'2021-06-10'),
    ('S6','SEM1',  'Eva Martinez', '1998-07-22', 2023, 'eva.martinez@email.com', '91555444333', 79.8,'2022-07-15'),
    ('S7', 'SEM2','David Miller', '2000-08-12', 2023, 'david.miller@email.com', '91444555666', 87.4,'2023-07-15'),
    ('S8','SEM1',  'Grace Lee', '2001-01-18', 2023, 'grace.lee@email.com', '91666777888', 94.5,'2022-07-04'),
    ('S9','SEM2', 'Samuel Wilson', '1999-06-25',2023, 'samuel.wilson@email.com', '91888999222', 82.1,'2022-07-15'),
    ('S10','SEM1',  'Sophia Davis', '2002-03-08', 2023, 'sophia.davis@email.com', '919991111234', 90.3,'2023-07-15');




INSERT INTO Faculty (FacultyID, FacultyName, PhoneNo, EmailId, Salary)
VALUES 
    ('F1', 'Dr. Smith', '+1234567890', 'dr.smith@email.com', 75000),
    ('F2', 'Prof. Johnson', '+1987654321', 'prof.johnson@email.com', 80000),
    ('F3', 'Ms. Davis', '+1654321890', 'ms.davis@email.com', 60000),
    ('F4', 'Mr. Wilson', '+1765432980', 'mr.wilson@email.com', 70000),
    ('F5', 'Dr. Brown', '+1888777666', 'dr.brown@email.com', 85000);


	
INSERT INTO Semester (SemesterId, SemesterName, SemsterStartDate, SemesterEndDate, VacationStartDate, VacationEndDate)
VALUES 
    ('SEM1', 'SemesterI', '2023-01-15', '2023-05-15', '2023-03-01', '2023-03-15'),
    ('SEM2', 'SemesterII', '2023-08-20', '2023-12-20', '2023-10-01', '2023-10-15');

	
INSERT INTO Course (CourseID, CourseName)
VALUES 
    ('C1', 'Java Programming'),
    ('C2', 'Advanced C++ Programming'),
    ('C3', 'Data Structures and Algorithms'),
    ('C4', 'Database Management Systems'),
    ('C5', 'Web Programming'),
	('C6', 'Operating System');


	
INSERT INTO Attendance (AttId,StudentId,CourseId, SemesterId, ClassNo, ArriveTime, LeaveTime)
VALUES 
    
    (1,'S1','C1', 'SEM1', 10, '08:30:00', '12:30:00'),
    (2,'S1','C2', 'SEM1', 20,'08:45:00', '12:45:00'),
    (3,'S1','C3', 'SEM1', 30, '09:00:00', '13:00:00'),

    (4,'S2','C4', 'SEM2', 10, '09:15:00', '13:15:00'),
    (5,'S2','C5', 'SEM2', 20, '09:30:00', '13:30:00'),
    (6,'S2','C6', 'SEM2', 30, '10:00:00', '14:00:00'),
	
   (7,'S3','C1', 'SEM1', 10, '08:30:00', '12:30:00'),
    (8,'S3','C2', 'SEM1', 20, '08:45:00', '12:45:00'),
    (9,'S3','C3', 'SEM1', 30,'09:00:00', '13:00:00'),
	
   (10, 'S4','C4', 'SEM2', 10,'09:15:00', '13:15:00'),
    (11, 'S4','C5', 'SEM2', 20, '09:30:00', '13:30:00'),
    (12, 'S4','C6', 'SEM2', 30, '10:00:00', '14:00:00'),
	
   (13, 'S5','C1', 'SEM1', 10,'08:30:00', '12:30:00'),
    (14, 'S5','C2', 'SEM1', 20, '08:45:00', '12:45:00'),
    (15, 'S5','C3', 'SEM1', 30, '09:00:00', '13:00:00'),
	
  (16, 'S6','C4', 'SEM2', 10,'09:15:00', '13:15:00'),
    (17, 'S6','C5', 'SEM2', 20, '09:30:00', '13:30:00'),
    (18, 'S6','C6', 'SEM2', 30, '10:00:00', '14:00:00'),
	
   (19, 'S7','C1', 'SEM1', 10,'08:30:00', '12:30:00'),
    (20, 'S7','C2', 'SEM1', 20, '08:45:00', '12:45:00'),
    (21, 'S7','C3', 'SEM1', 30, '09:00:00', '13:00:00'),
	
    (22,'S8','C4', 'SEM2', 10, '09:15:00', '13:15:00'),
    (23,'S8','C5', 'SEM2', 20, '09:30:00', '13:30:00'),
    (24,'S8','C6', 'SEM2', 30, '10:00:00', '14:00:00'),
	
    (25,'S9','C1', 'SEM1', 10, '08:30:00', '12:30:00'),
    (26,'S9','C2', 'SEM1', 20, '08:45:00', '12:45:00'),
    (27,'S9','C3', 'SEM1', 30, '09:00:00', '13:00:00'),
	
   (28, 'S10','C4', 'SEM2', 10,'09:15:00', '13:15:00'),
    (29, 'S10','C5', 'SEM2', 20, '09:30:00', '13:30:00'),
    (30, 'S10','C6', 'SEM2', 30, '10:00:00', '14:00:00');



INSERT INTO CoursesPerSemester (CourseId,SemesterId, CourseStartDate, CourseEndDate)
VALUES 
  	
   ('C1', 'SEM1', '2023-01-15', '2023-04-30'),
    ('C2', 'SEM1', '2023-01-20', '2023-05-05'),
    ('C3',  'SEM1','2023-02-01', '2023-05-15'),	
    ('C4', 'SEM2','2023-02-15', '2023-05-30'),
    ('C5','SEM2', '2023-03-01', '2023-06-15'),
   ('C6','SEM2', '2023-09-01', '2023-12-25');
	

INSERT INTO FacultyPerCourse (CourseId, SemesterId, FacultyID)
VALUES 
    ('C1', 'SEM1', 'F1'),
    ('C2', 'SEM1', 'F2'),
    ('C3', 'SEM1', 'F3'),
    ('C4', 'SEM2', 'F4'),
    ('C5', 'SEM2', 'F5'),
    ('C6', 'SEM2', 'F2');
	
	
	
INSERT INTO Admission VALUES
(1, 'C1', 'SEM1', 'S1', 'Admitted'),
(2, 'C2', 'SEM1', 'S2', 'Admitted'),
(3, 'C1', 'SEM2', 'S3',  'Admitted'),
(4, 'C3', 'SEM1', 'S4',  'Admitted'),
(5, 'C2', 'SEM2', 'S5',  'Admitted'),
(6, 'C1', 'SEM1', 'S6',  'Admitted'),
(7, 'C3', 'SEM2', 'S7',  'Admitted'),
(8, 'C2', 'SEM1', 'S8', 'Admitted'),
(9, 'C1', 'SEM2', 'S9',  'Admitted'),
(10, 'C3', 'SEM1', 'S10',  'Admitted');


INSERT INTO Timetable (ID, SemesterId, ClassNo, FacultyId, CourseId, ClassDate, StartTime, EndTime)
VALUES 
    (1, 'SEM1', 10, 'F1', 'C1', '2023-01-16', '08:00:00', '10:00:00'),
    (2, 'SEM1', 20, 'F2', 'C2', '2023-01-20', '09:00:00', '11:00:00'),
    (3, 'SEM1', 30, 'F3', 'C3', '2023-02-02', '10:00:00', '12:00:00'),
    (4, 'SEM2', 10, 'F4', 'C4', '2023-02-17', '11:00:00', '13:00:00'),
    (5, 'SEM2', 30, 'F5', 'C5', '2023-03-10', '12:00:00', '14:00:00'),
    (6, 'SEM2', 20, 'F2', 'C6', '2023-09-12', '13:00:00', '15:00:00');
	


INSERT INTO Result ( CourseId, SemesterId, TestNo, StudentId, Score)
VALUES 
	( 'C1', 'SEM1', 1, 'S1', 92.5),
    ( 'C2', 'SEM1', 2, 'S1', 85.0),
    ( 'C3', 'SEM1', 3, 'S1', 88.0),
    
    ('C1', 'SEM1', 1, 'S2', 76.5),
    ('C2', 'SEM1', 2, 'S2', 95.5),
    ('C3', 'SEM1', 3, 'S2', 89.0),
    
    ('C1', 'SEM2', 1, 'S3', 91.0),
    ('C2', 'SEM2', 2, 'S3', 82.5),
    ('C3', 'SEM2', 3, 'S3', 90.0),
    
    ('C1', 'SEM2', 1, 'S4', 87.5),
    ('C2', 'SEM2', 2, 'S4', 94.0),
    ('C3', 'SEM2', 3, 'S4', 78.5),
    
    ('C1', 'SEM1', 1, 'S5', 88.5),
    ('C2', 'SEM1', 2, 'S5', 96.0),
    ('C3', 'SEM1', 3, 'S5', 84.0),
    
    ('C1', 'SEM2', 1, 'S6', 79.5),
    ('C2', 'SEM2', 2, 'S6', 93.5),
    ('C3', 'SEM2', 3, 'S6', 85.5),
    
    ('C1', 'SEM1', 1, 'S7', 90.0),
    ('C2', 'SEM1', 2, 'S7', 91.5),
    ('C3', 'SEM1', 3, 'S7', 77.0),
    
    ('C1', 'SEM1', 1, 'S8', 83.0),
    ('C2', 'SEM1', 2, 'S8', 92.0),
    ('C3', 'SEM1', 3, 'S8', 89.5),
    
    ('C1', 'SEM2', 1, 'S9', 95.0),
    ('C2', 'SEM2', 2, 'S9', 80.5),
    ('C3', 'SEM2', 3, 'S9', 88.0),
    
    ('C1', 'SEM2', 1, 'S10', 82.0),
    ('C2', 'SEM2', 2, 'S10', 89.5),
    ('C3', 'SEM2', 3, 'S10', 93.0);
	


INSERT INTO Exam ( CourseId, SemesterId, TestNo, TestDate, TestTime)
VALUES 
    ( 'C1', 'SEM1', 1, '2023-11-28', '09:00:00'),
    ('C2', 'SEM1', 2, '2023-11-29', '10:30:00'),
    ('C3', 'SEM1', 3, '2023-11-30', '14:00:00'),
    
    ('C4', 'SEM2', 1, '2023-12-13', '11:30:00'),
    ('C5', 'SEM2', 2, '2023-12-14', '13:45:00'),
    ('C6', 'SEM2', 3, '2023-12-15', '16:00:00');