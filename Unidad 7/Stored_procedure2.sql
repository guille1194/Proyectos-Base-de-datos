Create Database Factory;
use Factory;

CREATE TABLE employee(
    id          INTEGER NOT NULL PRIMARY KEY,
    first_name  VARCHAR(10),
    last_name   VARCHAR(10),
    salary      DECIMAL(10,2),
    city        VARCHAR(20),   
 )

 INSERT INTO employee VALUES (2, 'Monu',  'Rathor',4789,'Agra');
 GO
 INSERT INTO employee VALUES (4, 'Rahul' ,  'Saxena',   5567,'London');
 GO
 INSERT INTO employee VALUES (5, 'prabhat',  'kumar',  4467,'Bombay');
 go
 INSERT INTO employee VALUES (6, 'ramu',  'kksingh',  3456, 'jk');
 go
 select * from employee

Create PROCEDURE MasterInsertUpdateDelete
(
    @id         INTEGER,
    @first_name  VARCHAR(10),
    @last_name   VARCHAR(10),
    @salary      DECIMAL(10,2),
    @city        VARCHAR(20), 
    @StatementType nvarchar(20) = ''
)
 
AS
BEGIN
IF @StatementType = 'Insert'
BEGIN
insert into employee (id,first_name,last_name,salary,city) values( @id, @first_name,  @last_name,  @salary, @city)   
END
 
IF @StatementType = 'Select'
BEGIN
select * from employee
END 
 
IF @StatementType = 'Update'
BEGIN
UPDATE employee SET
            First_name =  @first_name, last_name = @last_name, salary = @salary,
            city = @city
      WHERE id = @id
END
 
else IF @StatementType = 'Delete'
BEGIN
DELETE FROM employee WHERE id = @id
END
end

Exec MasterInsertUpdateDelete  @id=1, @first_name='guille',@last_name='navarro',@salary='500.00',@city='Tijuana', @StatementType='Insert';

Exec MasterInsertUpdateDelete @StatementType='Select';

Exec MasterInsertUpdateDelete  @id=1, @first_name='juan',@last_name='lopez',@salary='500.00',@city='Tijuana', @StatementType='Update';

Exec MasterInsertUpdateDelete @id=1, @StatementType='Delete';
