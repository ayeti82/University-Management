--use UniversityDatabase;

--Modifications on Rooms Table
select * from Rooms;

begin transaction

--Insert 3 rows
INSERT INTO Rooms(RoomID,RoomType,DepartmentID) VALUES(500,'Lab','MIS');
INSERT INTO Rooms(RoomID,RoomType,DepartmentID) VALUES(401,'Lecture','EIT');
INSERT INTO Rooms(RoomID,RoomType,DepartmentID) VALUES(305,'Lab','PAE');

--Update 3 rows
UPDATE Rooms SET RoomType = 'Lecture' WHERE RoomID=500;
UPDATE Rooms SET DepartmentID = 'EIT' WHERE RoomID=500;
UPDATE Rooms SET RoomType = 'Lecture' WHERE RoomType = 'Lab';

--Delete the 3 rows created before
DELETE FROM Rooms WHERE RoomID <=500 AND RoomID >=305;

rollback transaction