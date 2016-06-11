Use Students;

Create PROCEDURE Getstudentname(

@studentid INT                   --Input parameter ,  Studentid of the student 

)
AS
BEGIN
SELECT Firstname+' '+Lastname FROM tbl_Students WHERE studentid=@studentid 
END

Create PROCEDURE GetstudentnameInOutputVariable
(

@studentid INT,                       --Input parameter ,  Studentid of the student
@studentname VARCHAR(200)  OUT        -- Out parameter declared with the help of OUT keyword
)
AS
BEGIN
SELECT @studentname= Firstname+' '+Lastname FROM tbl_Students WHERE studentid=@studentid
END

Alter PROCEDURE GetstudentnameInOutputVariable
(

@studentid INT,                   --Input parameter ,  Studentid of the student
@studentname VARCHAR (200) OUT,    -- Output parameter to collect the student name
@StudentEmail VARCHAR (200)OUT     -- Output Parameter to collect the student email
)
AS
BEGIN
SELECT @studentname= Firstname+' '+Lastname, 
    @StudentEmail=email FROM tbl_Students WHERE studentid=@studentid
END

Create Procedure InsertStudentrecord
(
 @StudentFirstName Varchar(200),
 @StudentLastName  Varchar(200),
 @StudentEmail     Varchar(50)
) 
As
 Begin
   Insert into tbl_Students (Firstname, lastname, Email)
   Values(@StudentFirstName, @StudentLastName,@StudentEmail)
 End

 Execute Getstudentname 1

 Exec Getstudentname 1

 Select * From tbl_Students;

Insert into tbl_Students (Firstname, lastname, Email)
 Values('Vivek', 'Johari', 'vivek@abc.com')

Insert into tbl_Students (Firstname, lastname, Email)
 Values('Pankaj', 'Kumar', 'pankaj@abc.com')

Insert into tbl_Students (Firstname, lastname, Email)
 Values('Amit', 'Singh', 'amit@abc.com')

Insert into tbl_Students (Firstname, lastname, Email)
 Values('Manish', 'Kumar', 'manish@abc.comm')

Insert into tbl_Students (Firstname, lastname, Email)
 Values('Abhishek', 'Singh', 'abhishek@abc.com')

Declare @Studentname as nvarchar(200)   -- Declaring the variable to collect the Studentname
Declare @Studentemail as nvarchar(50)     -- Declaring the variable to collect the Studentemail
Execute GetstudentnameInOutputVariable 1 , @Studentname output, @Studentemail output
select @Studentname,@Studentemail      -- "Select" Statement is used to show the output from 

Procedure
