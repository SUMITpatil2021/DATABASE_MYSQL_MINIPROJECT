DROP TABLE IF EXISTS Student;
CREATE TABLE IF NOT EXISTS Student
(
StudentId varchar(10) not null unique,
SemesterId varchar(10) not null ,
StudentName varchar(20) not null,
Birthdate date,
AcademicYear year,
Email varchar(50) not null,
PhoneNo varchar(15) not null unique,
Percentage float(5,2),
AdmissionDate date NOT NULL,

CONSTRAINT pk_sid PRIMARY KEY(StudentId),
CONSTRAINT chkPhoneNo
        CHECK( LENGTH(PhoneNO) BETWEEN 10 AND 15)
);  
 

DROP TABLE IF EXISTS Semester;
CREATE TABLE IF NOT EXISTS Semester(
    SemesterId varchar(10) PRIMARY KEY,
    SemesterName VARCHAR(50) NOT NULL,
    SemsterStartDate DATE NOT NULL,
    SemesterEndDate DATE NOT NULL,
    VacationStartDate DATE,
    VacationEndDate DATE
);


DROP TABLE IF EXISTS Faculty;
CREATE TABLE IF NOT EXISTS Faculty(
   FacultyId VARCHAR(20) PRIMARY KEY,
   FacultyName VARCHAR(20) NOT NULL,
   PhoneNO VARCHAR(20) NOT NULL,
   EmailId VARCHAR(30),
   Salary DECIMAL(7,2),
   CONSTRAINT chkMobNo
        CHECK(LENGTH(PhoneNO) BETWEEN 10 AND 15)
); 


DROP TABLE IF EXISTS Course;
CREATE TABLE IF NOT EXISTS Course(
    CourseId VARCHAR (20) PRIMARY KEY,
    CourseName VARCHAR(100) UNIQUE NOT NULL
);


DROP TABLE IF EXISTS CoursesPerSemester;
CREATE TABLE IF NOT EXISTS CoursesPerSemester (
    Id INT AUTO_INCREMENT PRIMARY KEY,
	CourseId varchar(10) UNIQUE,
	SemesterId varchar(10),
	CourseStartDate Date,
    	CourseEndDate Date,
	CONSTRAINT fkCourseId
        FOREIGN KEY (CourseId) 
        REFERENCES Course(CourseId)
        ON DELETE SET NULL
);


DROP TABLE IF EXISTS Admission;
CREATE TABLE IF NOT EXISTS Admission(
Id INT AUTO_INCREMENT PRIMARY KEY,
CourseId varchar(10),
SemesterId  varchar(10) ,
StudentId varchar(10),
Cancelled varchar(20),
    CONSTRAINT fkStudId
        FOREIGN KEY (StudentId) 
        REFERENCES Student(StudentId)
        ON DELETE CASCADE,
	CONSTRAINT fkSemesterId
        FOREIGN KEY (SemesterId) 
        REFERENCES Semester(SemesterId)
        ON DELETE SET NULL,
	CONSTRAINT fkCourse_Id
        FOREIGN KEY (CourseId) 
        REFERENCES Course(CourseId)
        ON DELETE CASCADE
		
);



DROP TABLE IF EXISTS Attendance;
CREATE TABLE IF NOT EXISTS Attendance (
    AttId int AUTO_INCREMENT PRIMARY KEY,
	StudentId varchar(10),
    CourseId varchar(10),
    SemesterId varchar(10),
    ClassNo int NOT NULL,
    ArriveTime TIME,
    LeaveTime TIME,
	CONSTRAINT fkStudSId
        FOREIGN KEY (StudentId) 
        REFERENCES Student(StudentId)
        ON DELETE CASCADE,
	CONSTRAINT fkSemesterSId
        FOREIGN KEY (SemesterId) 
        REFERENCES Semester(SemesterId)
        ON DELETE SET NULL,
	CONSTRAINT Course_Id
        FOREIGN KEY (CourseId) 
        REFERENCES Course(CourseId)
        ON DELETE SET NULL
);



DROP TABLE IF EXISTS Timetable;
CREATE TABLE IF NOT EXISTS Timetable (
    Id INT AUTO_INCREMENT PRIMARY KEY,
                 SemesterId varchar(10) ,
	ClassNo int NOT NULL,
	FacultyId varchar(20) NOT NULL,
	CourseId VARCHAR(20),
	ClassDate Date,
    StartTime TIME,
    EndTime TIME,
	CONSTRAINT fkSemesterDId
        FOREIGN KEY (SemesterId) 
        REFERENCES Semester(SemesterId)
        ON DELETE CASCADE,
	CONSTRAINT fkCourseDId
        FOREIGN KEY (CourseId) 
        REFERENCES Course(CourseId)
        ON DELETE CASCADE
);



DROP TABLE IF EXISTS FacultyPerCourse;
CREATE TABLE IF NOT EXISTS FacultyPerCourse(
   Id INT AUTO_INCREMENT PRIMARY KEY,
   CourseId VARCHAR(20),
   SemesterId VARCHAR(20),
   FacultyId varchar(20),
   CONSTRAINT fkSemesterFId
        FOREIGN KEY (SemesterId) 
        REFERENCES Semester(SemesterId)
        ON DELETE SET NULL,
	CONSTRAINT fkCourseFId
        FOREIGN KEY (CourseId) 
        REFERENCES Course(CourseId)
        ON DELETE CASCADE,
	CONSTRAINT fkFacultyFId
        FOREIGN KEY (FacultyId) 
        REFERENCES Faculty(FacultyId)
        ON DELETE SET NULL
); 



DROP TABLE IF EXISTS Exam;
CREATE TABLE IF NOT EXISTS Exam(
Id INT AUTO_INCREMENT PRIMARY KEY,
CourseId varchar(10),
SemesterId varchar(10) ,
TestNo int not null,
TestDate date not null,
TestTime time,

    CONSTRAINT fkSemesterEId
        FOREIGN KEY (SemesterId) 
        REFERENCES Semester(SemesterId)
        ON DELETE SET NULL,
	CONSTRAINT fkCourseEId
        FOREIGN KEY (CourseId) 
        REFERENCES Course(CourseId)
        ON DELETE CASCADE
); 


DROP TABLE IF EXISTS Result;
CREATE TABLE IF NOT EXISTS Result(
ResultId INT AUTO_INCREMENT PRIMARY KEY,
CourseId varchar(10),
SemesterId varchar(10) ,
TestNo int not null,
StudentId varchar(10) ,
Score float(5,2) not null,

    CONSTRAINT fkStudRId FOREIGN KEY (StudentId) REFERENCES Student(StudentId)
           ON DELETE CASCADE,
    CONSTRAINT fkSemesterRId FOREIGN KEY (SemesterId) REFERENCES Semester(SemesterId)
          ON DELETE SET NULL,
    CONSTRAINT fkCourseRId FOREIGN KEY (CourseId) REFERENCES Course(CourseId)
         ON DELETE CASCADE
);  

