

drop view if exists highestmarks;
create  view highestmarks
as select StudentId , StudentName , Percentage  
from  student 
order by Percentage desc; 




drop view if exists contactDetails;
create view contactDetails
as 
select  StudentId , StudentName ,phoneno,email 
from Student  
order by StudentName ;  



drop  procedure if exists insert_student;
delimiter //
create procedure insert_student(in mStudentId varchar(10),msemesterid varchar(10), mStudentName varchar(20) ,mBirthdate date ,mAcademicYear year ,mEmail varchar(50) ,mPhoneNo varchar(15),mPercentage float(5,2),mAdmissionDate  date )
begin  
insert into student(StudentId , SemesterId,StudentName ,Birthdate,AcademicYear,Email,PhoneNo,Percentage,AdmissionDate) values ( mStudentId ,msemesterId, mStudentName  ,mBirthdate  ,mAcademicYear ,mEmail ,mPhoneNo ,mPercentage ,mAdmissionDate ) ; 
end //
delimiter ; 



set global log_bin_trust_function_creators=1;
drop function if exists percentage_mark;
delimiter //
create function percentage_mark(sid varchar(10))
returns float(5,2)
begin 
	declare x float(5,2);
	select avg( score) into x from result where StudentId=sid ;
	return x;
end//
delimiter ;



delimiter //
drop procedure show_percentage//
create procedure show_percentage(in sid varchar(10))
begin
   declare percentage float(5,2);
     set percentage=  percentage_mark(sid)  ;
     select percentage;
end//
delimiter ;




delimiter //
drop trigger if exists deleteStud//
CREATE TRIGGER deleteStud
AFTER UPDATE ON Admission
FOR EACH ROW

BEGIN
    
Delete from Student s where StudentId = (select StudentId from admission a where cancelled='Cancelled' and s.StudentId=a.StudentId);

END //

delimiter ;




delimiter //
drop  trigger if exists InsertStud//
CREATE TRIGGER InsertStud

AFTER insert ON Student
FOR EACH ROW

BEGIN
    
insert into admission(StudentId,Semesterid,Cancelled) values(new.StudentId, new.SemesterId, 'Admitted');
END //
delimiter ;

