--use UniversityDatabase;

--University
INSERT INTO University(UniversityID,UniversityName) VALUES ('WUT','Warsaw University of Technology');

--Departments
INSERT INTO Departments(DepartmentID,DepartmentName,UniversityID) VALUES ('MIS','Faculty of Mathematics and Information Sciences','WUT');
INSERT INTO Departments(DepartmentID,DepartmentName,UniversityID) VALUES ('PAE','Faculty of Power and Aeronautical Engineering','WUT');
INSERT INTO Departments(DepartmentID,DepartmentName,UniversityID) VALUES ('AWM','Faculty of Automobiles and Working Machines','WUT');
INSERT INTO Departments(DepartmentID,DepartmentName,UniversityID) VALUES ('EIT','Faculty of Electronics and Information Technology','WUT');
INSERT INTO Departments(DepartmentID,DepartmentName,UniversityID) VALUES ('CEM','Faculty of Civil Engineering and Mechanics','WUT');

--Courses
INSERT INTO Courses(CourseID,CourseName,CourseSem,CourseYear,DepartmentID,isElective,MinStudents,MaxStudents,CourseType) VALUES ('CEM-M1003','Mathematics I',1,1,'CEM',0,3,30,'Lecture');
INSERT INTO Courses(CourseID,CourseName,CourseSem,CourseYear,DepartmentID,isElective,MinStudents,MaxStudents,CourseType) VALUES ('CEM-M2004','Mathematics II',2,1,'CEM',0,5,15,'Lecture');

INSERT INTO Courses(CourseID,CourseName,CourseSem,CourseYear,DepartmentID,isElective,MinStudents,MaxStudents,CourseType) VALUES ('EIT-EP1001','Engineering Physics-I',1,1,'EIT',0,4,50,'Lecture');
INSERT INTO Courses(CourseID,CourseName,CourseSem,CourseYear,DepartmentID,isElective,MinStudents,MaxStudents,CourseType) VALUES ('EIT-EP1002','Engineering Physics-I' ,1,1,'EIT',0,4,15,'Lab');
INSERT INTO Courses(CourseID,CourseName,CourseSem,CourseYear,DepartmentID,isElective,MinStudents,MaxStudents,CourseType) VALUES ('EIT-EP2004','Engineering Physics-II',2,1,'EIT',0,5,45,'Lecture');

INSERT INTO Courses(CourseID,CourseName,CourseSem,CourseYear,DepartmentID,isElective,MinStudents,MaxStudents,CourseType) VALUES ('PAE-EA003','Elements of Aeronautics',1,1,'PAE',0,3,30,'Lab');

INSERT INTO Courses(CourseID,CourseName,CourseSem,CourseYear,DepartmentID,isElective,MinStudents,MaxStudents,CourseType) VALUES ('AWM-ET002','Engineering Thermodynamics' ,1,1,'AWM',0,4,45,'Lecture');
INSERT INTO Courses(CourseID,CourseName,CourseSem,CourseYear,DepartmentID,isElective,MinStudents,MaxStudents,CourseType) VALUES ('AWM-ANM003','Engineering Analysis and Numerical Methods',2,1,'AWM',0,4,10,'Lab');

INSERT INTO Courses(CourseID,CourseName,CourseSem,CourseYear,DepartmentID,isElective,MinStudents,MaxStudents,CourseType) VALUES ('MIS-C1001','Calculus-I',1,1,'MIS',0,4,50,'Lecture');
INSERT INTO Courses(CourseID,CourseName,CourseSem,CourseYear,DepartmentID,isElective,MinStudents,MaxStudents,CourseType) VALUES ('MIS-D006','Databases',4,2,'MIS',0,5,25,'Lab');
INSERT INTO Courses(CourseID,CourseName,CourseSem,CourseYear,DepartmentID,isElective,MinStudents,MaxStudents,CourseType) VALUES ('MIS-AIF009','Artificial Intelligence Fundamentals',6,3,'MIS',0,5,25,'Lab');
INSERT INTO Courses(CourseID,CourseName,CourseSem,CourseYear,DepartmentID,isElective,MinStudents,MaxStudents,CourseType) VALUES ('MIS-AC011','Algorithmns and Computability',7,4,'MIS',0,5,10,'Lab');
INSERT INTO Courses(CourseID,CourseName,CourseSem,CourseYear,DepartmentID,isElective,MinStudents,CourseType) VALUES ('MIS-NPL013','Introduction to Natural Processing Language',6,3,'MIS',1,5,'Project');
INSERT INTO Courses(CourseID,CourseName,CourseSem,CourseYear,DepartmentID,isElective,MinStudents,MaxStudents,CourseType) VALUES ('MIS-C2004','Calculus-II',2,1,'MIS',0,5,45,'Lecture');
INSERT INTO Courses(CourseID,CourseName,CourseSem,CourseYear,DepartmentID,isElective,MinStudents,CourseType) VALUES ('MIS-IML012','Introduction to Machine Learning',5,3,'MIS',1,5,'Project');


--Prerequisites
INSERT INTO Prerequisites(CourseID,PrerequisiteCourseID) VALUES ('CEM-M2004','CEM-M1003');

INSERT INTO Prerequisites(CourseID,PrerequisiteCourseID) VALUES ('EIT-EP2004','EIT-EP1001');
INSERT INTO Prerequisites(CourseID,PrerequisiteCourseID) VALUES ('EIT-EP2004','EIT-EP1002');

INSERT INTO Prerequisites(CourseID,PrerequisiteCourseID) VALUES ('MIS-C2004','MIS-C1001');
INSERT INTO Prerequisites(CourseID,PrerequisiteCourseID) VALUES ('MIS-IML012','MIS-C1001');
INSERT INTO Prerequisites(CourseID,PrerequisiteCourseID) VALUES ('MIS-IML012','MIS-C2004');



--Rooms
INSERT INTO Rooms(DepartmentID,RoomID,RoomType) VALUES ('CEM',101,'Lecture');
INSERT INTO Rooms(DepartmentID,RoomID,RoomType) VALUES ('CEM',211,'Lab');

INSERT INTO Rooms(DepartmentID,RoomID,RoomType) VALUES ('EIT',101,'Lecture');
INSERT INTO Rooms(DepartmentID,RoomID,RoomType) VALUES ('EIT',200,'Lab');

INSERT INTO Rooms(DepartmentID,RoomID,RoomType) VALUES ('PAE',211,'Lecture');
INSERT INTO Rooms(DepartmentID,RoomID,RoomType) VALUES ('PAE',117,'Lab');

INSERT INTO Rooms(DepartmentID,RoomID,RoomType) VALUES ('AWM',111,'Lecture');
INSERT INTO Rooms(DepartmentID,RoomID,RoomType) VALUES ('AWM',101,'Lab');

INSERT INTO Rooms(DepartmentID,RoomID,RoomType) VALUES ('MIS',101,'Lecture');
INSERT INTO Rooms(DepartmentID,RoomID,RoomType) VALUES ('MIS',202,'Lab');


--Employees

INSERT INTO Employees(EmployeeID,DepartmentID,EmployeeName,EmployeeAddress,EmployeeEmail,EmployeePhoneNumber) VALUES ('CEM000','CEM','Gary S Smith','128  Fraggle Drive','dajzebj3xpo@temporary-mail.net','845-482-4645');
INSERT INTO Employees(EmployeeID,DepartmentID,EmployeeName,EmployeeAddress,EmployeeEmail,EmployeePhoneNumber,SupervisorID) VALUES ('CEM001','CEM','Joyce T Wright','154  Dane Street','jvvrt7ceazt@temporary-mail.net','508-991-3768',2000);
INSERT INTO Employees(EmployeeID,DepartmentID,EmployeeName,EmployeeAddress,EmployeeEmail,EmployeePhoneNumber,SupervisorID) VALUES ('CEM002','CEM','Jeff R Hunt','4383  Williams Mine Road','uddub4h40zt@temporary-mail.net','908-245-3230',2000);

INSERT INTO Employees(EmployeeID,DepartmentID,EmployeeName,EmployeeAddress,EmployeeEmail,EmployeePhoneNumber) VALUES ('EIT000','EIT','Eleanor R Cruz','1566  Michigan Avenue','2s7jym0sk41@temporary-mail.net','724-695-3674');
INSERT INTO Employees(EmployeeID,DepartmentID,EmployeeName,EmployeeAddress,EmployeeEmail,EmployeePhoneNumber,SupervisorID) VALUES ('EIT002','EIT','Chris S Rose','1821  Penn Street','fqm9fsl33ad@temporary-mail.net','573-262-8930',2001);

INSERT INTO Employees(EmployeeID,DepartmentID,EmployeeName,EmployeeAddress,EmployeeEmail,EmployeePhoneNumber) VALUES ('PAE000','PAE','Marie G Phelps','2382  Flinderation Road','z9rjsu17lb@temporary-mail.net','708-373-7333');
INSERT INTO Employees(EmployeeID,DepartmentID,EmployeeName,EmployeeAddress,EmployeeEmail,EmployeePhoneNumber,SupervisorID) VALUES ('PAE002','PAE','Alphonso M Goodrich','4080  Lewis Street','9e6ytgx6bxn@temporary-mail.net','630-865-9176',2002);

INSERT INTO Employees(EmployeeID,DepartmentID,EmployeeName,EmployeeAddress,EmployeeEmail,EmployeePhoneNumber) VALUES ('AWM000','AWM','Cesar B Dahms','1843  Poco Mas Drive','oxdploxogp@temporary-mail.net','214-503-2387');
INSERT INTO Employees(EmployeeID,DepartmentID,EmployeeName,EmployeeAddress,EmployeeEmail,EmployeePhoneNumber,SupervisorID) VALUES ('AWM001','AWM','Jeff L Watson','1209  Briarwood Drive','6zs2wxoe18@temporary-mail.net','856-530-8644',2003);
INSERT INTO Employees(EmployeeID,DepartmentID,EmployeeName,EmployeeAddress,EmployeeEmail,EmployeePhoneNumber,SupervisorID) VALUES ('AWM002','AWM','Gordon D Huot','837  Nicholas Street','y49vqq93lw@temporary-mail.net','785-318-1452',2003);

INSERT INTO Employees(EmployeeID,DepartmentID,EmployeeName,EmployeeAddress,EmployeeEmail,EmployeePhoneNumber) VALUES ('MIS000','MIS','Kimberly W Roach','4748  Fraggle Drive','fvufvoexun@temporary-mail.net','630-364-4777');
INSERT INTO Employees(EmployeeID,DepartmentID,EmployeeName,EmployeeAddress,EmployeeEmail,EmployeePhoneNumber,SupervisorID) VALUES ('MIS010','MIS','Wm G Smith','3010  Mount Street','uaeffet@temporary-mail.net','203-222-0229',2004);
INSERT INTO Employees(EmployeeID,DepartmentID,EmployeeName,EmployeeAddress,EmployeeEmail,EmployeePhoneNumber,SupervisorID) VALUES ('MIS011','MIS','Donna R Fox','221  Rosemont Avenue','uab0zt@temporary-mail.net','593-950-9669',2004);
INSERT INTO Employees(EmployeeID,DepartmentID,EmployeeName,EmployeeAddress,EmployeeEmail,EmployeePhoneNumber,SupervisorID) VALUES ('MIS012','MIS','Mark L Harris','801  Nutter Street','afrgh0zt@temporary-mail.net','492-789-1112',2004);
INSERT INTO Employees(EmployeeID,DepartmentID,EmployeeName,EmployeeAddress,EmployeeEmail,EmployeePhoneNumber,SupervisorID) VALUES ('MIS013','MIS','Alysa D Baptiste','4100  Prospect Street','ufegrvt@temporary-mail.net','357-283-6777',2004);
INSERT INTO Employees(EmployeeID,DepartmentID,EmployeeName,EmployeeAddress,EmployeeEmail,EmployeePhoneNumber,SupervisorID) VALUES ('MIS014','MIS','Geraldine G Lopresti','3413  Rogers Street','24grhrgt@temporary-mail.net','094-865-9595',2004);
INSERT INTO Employees(EmployeeID,DepartmentID,EmployeeName,EmployeeAddress,EmployeeEmail,EmployeePhoneNumber,SupervisorID) VALUES ('MIS015','MIS','David A Dawson','4230  Monroe Street','feseftr0zt@temporary-mail.net','593-282-4933',2004);

--Supervisors
INSERT INTO Supervisors(EmployeeID,SupervisorRole) VALUES ('CEM000','Administrator');
INSERT INTO Supervisors(EmployeeID,SupervisorRole) VALUES ('EIT000','Co-ordinator');
INSERT INTO Supervisors(EmployeeID,SupervisorRole) VALUES ('PAE000','Dean');
INSERT INTO Supervisors(EmployeeID,SupervisorRole) VALUES ('AWM000','Administrator');
INSERT INTO Supervisors(EmployeeID,SupervisorRole) VALUES ('MIS000','Co-ordinator');

--Teachers
INSERT INTO Teachers(EmployeeID,TeacherRole) VALUES('CEM002','PHD');
INSERT INTO Teachers(EmployeeID) VALUES('EIT002');
INSERT INTO Teachers(EmployeeID,TeacherRole) VALUES('PAE002','M.Sc');
INSERT INTO Teachers(EmployeeID,TeacherRole) VALUES('AWM002','STUD');
INSERT INTO Teachers(EmployeeID) VALUES('MIS011');
INSERT INTO Teachers(EmployeeID,TeacherRole) VALUES('MIS012','M.Sc');
INSERT INTO Teachers(EmployeeID,TeacherRole) VALUES('MIS013','M.Sc');
INSERT INTO Teachers(EmployeeID,TeacherRole) VALUES('MIS014','PHD');
INSERT INTO Teachers(EmployeeID) VALUES('MIS015');

--Teacher Courses
INSERT INTO TeachersCourses(EmployeeID,CourseID) VALUES('CEM002','CEM-M1003');
INSERT INTO TeachersCourses(EmployeeID,CourseID) VALUES('CEM002','CEM-M2004');

INSERT INTO TeachersCourses(EmployeeID,CourseID) VALUES('EIT002','EIT-EP1001');
INSERT INTO TeachersCourses(EmployeeID,CourseID) VALUES('EIT002','EIT-EP1002');
INSERT INTO TeachersCourses(EmployeeID,CourseID) VALUES('EIT002','EIT-EP2004');

INSERT INTO TeachersCourses(EmployeeID,CourseID) VALUES('PAE002','PAE-EA003');

INSERT INTO TeachersCourses(EmployeeID,CourseID) VALUES('AWM002','AWM-ANM003');
INSERT INTO TeachersCourses(EmployeeID,CourseID) VALUES('AWM002','AWM-ET002');

INSERT INTO TeachersCourses(EmployeeID,CourseID) VALUES('MIS011','MIS-C1001');
INSERT INTO TeachersCourses(EmployeeID,CourseID) VALUES('MIS011','MIS-C2004');
INSERT INTO TeachersCourses(EmployeeID,CourseID) VALUES('MIS011','MIS-AIF009');
INSERT INTO TeachersCourses(EmployeeID,CourseID) VALUES('MIS012','MIS-D006');
INSERT INTO TeachersCourses(EmployeeID,CourseID) VALUES('MIS012','MIS-IML012');
INSERT INTO TeachersCourses(EmployeeID,CourseID) VALUES('MIS012','MIS-NPL013');
INSERT INTO TeachersCourses(EmployeeID,CourseID) VALUES('MIS013','MIS-AC011');
INSERT INTO TeachersCourses(EmployeeID,CourseID) VALUES('MIS014','MIS-IML012');
INSERT INTO TeachersCourses(EmployeeID,CourseID) VALUES('MIS014','MIS-AC011');
INSERT INTO TeachersCourses(EmployeeID,CourseID) VALUES('MIS015','MIS-AIF009');

--Teacher History
INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('CEM002','CEM-M1003',2019);
INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('CEM002','CEM-M1003',2020);
INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('CEM002','CEM-M2004',2019);
INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('CEM002','CEM-M2004',2020);

INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('EIT002','EIT-EP1001',2020);
INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('EIT002','EIT-EP1002',2020);
INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('EIT002','EIT-EP2004',2020);

INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('PAE002','PAE-EA003',2018);
INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('PAE002','PAE-EA003',2020);

INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('AWM002','AWM-ANM003',2018);
INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('AWM002','AWM-ET002',2020);
INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('AWM002','AWM-ET002',2018);
INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('AWM002','AWM-ET002',2019);

INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('MIS011','MIS-C1001',2019);
INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('MIS011','MIS-C2004',2019);
INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('MIS011','MIS-C1001',2020);
INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('MIS011','MIS-C2004',2020);
INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('MIS011','MIS-AIF009',2020);
INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('MIS012','MIS-D006',2018);
INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('MIS012','MIS-D006',2019);
INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('MIS012','MIS-IML012',2020);
INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('MIS012','MIS-NPL013',2019);
INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('MIS013','MIS-AC011',2020);
INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('MIS014','MIS-IML012',2018);
INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('MIS014','MIS-IML012',2019);
INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('MIS014','MIS-AC011',2019);
INSERT INTO TeachingHistories(EmployeeID,CourseID,TeachingYear) VALUES('MIS015','MIS-AIF009',2020);

--Students

INSERT INTO Students(StudentName,StudentAddress,StudentEmail,StudentPhoneNumber,StudentYear,StudentSemester,DepartmentID) VALUES('Natasha Long','633  Nicholas Street','nlong@wut.edu.us','785-277-5294',1,2,'CEM');
INSERT INTO Students(StudentName,StudentAddress,StudentEmail,StudentPhoneNumber,StudentYear,StudentSemester,DepartmentID) VALUES('Barbara Kennedy','3524  New Street','bkennedy@wut.edu.us','541-295-5528',1,2,'CEM');
INSERT INTO Students(StudentName,StudentAddress,StudentEmail,StudentPhoneNumber,StudentYear,StudentSemester,DepartmentID) VALUES('Kyle Diaz','1729  Luke Lane','kdiaz@wut.edu.us','580-239-4646',1,2,'CEM');

INSERT INTO Students(StudentName,StudentAddress,StudentEmail,StudentPhoneNumber,StudentYear,StudentSemester,DepartmentID) VALUES('Bethany K Matthews','504  Willison Street','bmatthews@wut.edu.us','763-221-3154',1,1,'PAE');

INSERT INTO Students(StudentName,StudentAddress,StudentEmail,StudentPhoneNumber,StudentYear,StudentSemester,DepartmentID) VALUES('Brent Beckwith','3271  C Street','bbeckwith@wut.edu.us','508-391-3946',1,2,'EIT');

INSERT INTO Students(StudentName,StudentAddress,StudentEmail,StudentPhoneNumber,StudentYear,StudentSemester,DepartmentID) VALUES('Kirsten Tucker','34 Rothbury Terrace, Newcastle Upon Tyne','ktucker@wut.edu.us','765-765-5654',1,2,'AWM');
INSERT INTO Students(StudentName,StudentAddress,StudentEmail,StudentPhoneNumber,StudentYear,StudentSemester,DepartmentID) VALUES('Cooper Buck','1 Scarborough Grove, Shipley','cbuck@wut.edu.us','234-345-3444',1,2,'AWM');

INSERT INTO Students(StudentName,StudentAddress,StudentEmail,StudentPhoneNumber,StudentYear,StudentSemester,DepartmentID) VALUES('Giancarlo Roberson','8 Reed Close, Larkfield','groberson@wut.edu.us','766-134-6564',1,1,'MIS');
INSERT INTO Students(StudentName,StudentAddress,StudentEmail,StudentPhoneNumber,StudentYear,StudentSemester,DepartmentID) VALUES('Warren Cline','224 Towngate, Ossett','wcline@wut.edu.us','565-566-5294',1,2,'MIS');
INSERT INTO Students(StudentName,StudentAddress,StudentEmail,StudentPhoneNumber,StudentYear,StudentSemester,DepartmentID) VALUES('Stacy Hanson','8 Morpeth Avenue','shanson@wut.edu.us','750-098-5565',2,3,'MIS');
INSERT INTO Students(StudentName,StudentAddress,StudentEmail,StudentPhoneNumber,StudentYear,StudentSemester,DepartmentID) VALUES('Esther Golden','19 Parkway, Huntingdon','egolden@wut.edu.us','234-275-2334',2,4,'MIS');
INSERT INTO Students(StudentName,StudentAddress,StudentEmail,StudentPhoneNumber,StudentYear,StudentSemester,DepartmentID) VALUES('Angel Hodges','21 Gorse Bank Road, Hale Barns','ahodges@wut.edu.us','776-355-5347',3,5,'MIS');
INSERT INTO Students(StudentName,StudentAddress,StudentEmail,StudentPhoneNumber,StudentYear,StudentSemester,DepartmentID) VALUES('Cheyanne Mcconnell','3 Bell Close, Stilton','cmcconnell@wut.edu.us','908-899-8789',4,7,'MIS');
INSERT INTO Students(StudentName,StudentAddress,StudentEmail,StudentPhoneNumber,StudentYear,StudentSemester,DepartmentID) VALUES('Elisa Johns','59 James Bond Street, Tamarki','ejohns@wut.edu.us','354-768-1238',3,6,'MIS');

--Groups
INSERT INTO Groups(GroupNumber,CourseID,EmployeeID) VALUES(1,'AWM-ANM003','AWM002');
INSERT INTO Groups(GroupNumber,CourseID,EmployeeID) VALUES(1,'AWM-ET002','AWM002');

INSERT INTO Groups(GroupNumber,CourseID,EmployeeID) VALUES(1,'CEM-M1003','CEM002');
INSERT INTO Groups(GroupNumber,CourseID,EmployeeID) VALUES(1,'CEM-M2004','CEM002');

INSERT INTO Groups(GroupNumber,CourseID,EmployeeID) VALUES(1,'EIT-EP1001','EIT002');
INSERT INTO Groups(GroupNumber,CourseID,EmployeeID) VALUES(1,'EIT-EP1002','EIT002');
INSERT INTO Groups(GroupNumber,CourseID,EmployeeID) VALUES(1,'EIT-EP2004','EIT002');

INSERT INTO Groups(GroupNumber,CourseID,EmployeeID) VALUES(1,'MIS-AC011','MIS013');
INSERT INTO Groups(GroupNumber,CourseID,EmployeeID) VALUES(2,'MIS-AC011','MIS014');
INSERT INTO Groups(GroupNumber,CourseID,EmployeeID) VALUES(1,'MIS-AIF009','MIS011');
INSERT INTO Groups(GroupNumber,CourseID,EmployeeID) VALUES(1,'MIS-C1001','MIS011');
INSERT INTO Groups(GroupNumber,CourseID,EmployeeID) VALUES(1,'MIS-C2004','MIS011');
INSERT INTO Groups(GroupNumber,CourseID,EmployeeID) VALUES(1,'MIS-D006','MIS012');
INSERT INTO Groups(GroupNumber,CourseID,EmployeeID) VALUES(1,'MIS-IML012','MIS012');
INSERT INTO Groups(GroupNumber,CourseID,EmployeeID) VALUES(2,'MIS-IML012','MIS014');
INSERT INTO Groups(GroupNumber,CourseID,EmployeeID) VALUES(1,'MIS-NPL013','MIS012');

INSERT INTO Groups(GroupNumber,CourseID,EmployeeID) VALUES(1,'PAE-EA003','PAE002');

--Classes
INSERT INTO Classes(GroupID,DepartmentID,RoomID,TimeFrom,TimeTo,ClassDay,TotalHours) VALUES (7000,'AWM',101,'8:00','11:00','Monday',3);
INSERT INTO Classes(GroupID,DepartmentID,RoomID,TimeFrom,TimeTo,ClassDay,TotalHours) VALUES (7001,'AWM',111,'11:30','14:30','Monday',3);
INSERT INTO Classes(GroupID,DepartmentID,RoomID,TimeFrom,TimeTo,ClassDay,TotalHours) VALUES (7002,'CEM',101,'8:00','10:00','Monday',2);
INSERT INTO Classes(GroupID,DepartmentID,RoomID,TimeFrom,TimeTo,ClassDay,TotalHours) VALUES (7003,'CEM',101,'10:30','12:30','Monday',2);
INSERT INTO Classes(GroupID,DepartmentID,RoomID,TimeFrom,TimeTo,ClassDay,TotalHours) VALUES (7004,'EIT',101,'8:00','11:00','Monday',3);
INSERT INTO Classes(GroupID,DepartmentID,RoomID,TimeFrom,TimeTo,ClassDay,TotalHours) VALUES (7005,'EIT',200,'15:00','18:00','Monday',3);
INSERT INTO Classes(GroupID,DepartmentID,RoomID,TimeFrom,TimeTo,ClassDay,TotalHours) VALUES (7006,'EIT',101,'11:30','14:30','Monday',3);
INSERT INTO Classes(GroupID,DepartmentID,RoomID,TimeFrom,TimeTo,ClassDay,TotalHours) VALUES (7007,'MIS',202,'11:30','14:30','Monday',3);
INSERT INTO Classes(GroupID,DepartmentID,RoomID,TimeFrom,TimeTo,ClassDay,TotalHours) VALUES (7008,'MIS',202,'8:00','11:00','Monday',3);
INSERT INTO Classes(GroupID,DepartmentID,RoomID,TimeFrom,TimeTo,ClassDay,TotalHours) VALUES (7009,'MIS',202,'15:00','17:00','Monday',2);
INSERT INTO Classes(GroupID,DepartmentID,RoomID,TimeFrom,TimeTo,ClassDay,TotalHours) VALUES (7010,'MIS',101,'15:00','18:00','Monday',3);
INSERT INTO Classes(GroupID,DepartmentID,RoomID,TimeFrom,TimeTo,ClassDay,TotalHours) VALUES (7011,'MIS',101,'18:30','20:30','Monday',2);
INSERT INTO Classes(GroupID,DepartmentID,RoomID,TimeFrom,TimeTo,ClassDay,TotalHours) VALUES (7012,'MIS',202,'18:30','20:30','Monday',2);
INSERT INTO Classes(GroupID,DepartmentID,RoomID,TimeFrom,TimeTo,ClassDay,TotalHours) VALUES (7013,'MIS',202,'15:00','18:00','Tuesday',3);
INSERT INTO Classes(GroupID,DepartmentID,RoomID,TimeFrom,TimeTo,ClassDay,TotalHours) VALUES (7014,'MIS',202,'8:00','11:00','Tuesday',3);
INSERT INTO Classes(GroupID,DepartmentID,RoomID,TimeFrom,TimeTo,ClassDay,TotalHours) VALUES (7015,'MIS',202,'8:00','11:00','Wednesday',3);
INSERT INTO Classes(GroupID,DepartmentID,RoomID,TimeFrom,TimeTo,ClassDay,TotalHours) VALUES (7016,'PAE',117,'8:00','11:00','Friday',3);


--Student Courses
INSERT INTO StudentCourses(CourseID,GroupID,StudentID) VALUES('CEM-M2004',7003,6000);
INSERT INTO StudentCourses(CourseID,GroupID,StudentID) VALUES('CEM-M2004',7003,6001);
INSERT INTO StudentCourses(CourseID,GroupID,StudentID) VALUES('CEM-M2004',7003,6002);
INSERT INTO StudentCourses(CourseID,GroupID,StudentID) VALUES('PAE-EA003',7016,6003);
INSERT INTO StudentCourses(CourseID,GroupID,StudentID) VALUES('EIT-EP2004',7006,6004);
INSERT INTO StudentCourses(CourseID,GroupID,StudentID) VALUES('AWM-ANM003',7000,6005);
INSERT INTO StudentCourses(CourseID,GroupID,StudentID) VALUES('AWM-ANM003',7000,6006);
INSERT INTO StudentCourses(CourseID,GroupID,StudentID) VALUES('MIS-C1001',7010,6007);
INSERT INTO StudentCourses(CourseID,GroupID,StudentID) VALUES('MIS-C2004',7011,6008);
INSERT INTO StudentCourses(CourseID,GroupID,StudentID) VALUES('MIS-D006',7012,6010);
INSERT INTO StudentCourses(CourseID,GroupID,StudentID) VALUES('MIS-IML012',7013,6011);
INSERT INTO StudentCourses(CourseID,GroupID,StudentID) VALUES('MIS-AC011',7008,6012);
INSERT INTO StudentCourses(CourseID,GroupID,StudentID) VALUES('MIS-AIF009',7009,6012);
INSERT INTO StudentCourses(CourseID,GroupID,StudentID) VALUES('MIS-AIF009',7009,6013);
INSERT INTO StudentCourses(CourseID,GroupID,StudentID) VALUES('MIS-NPL013',7015,6013);
INSERT INTO StudentCourses(CourseID,GroupID,StudentID) VALUES('MIS-IML012',7013,6013);

--Student Histories
INSERT INTO StudentHistories(StudentID,CourseID,Grade) VALUES(6005,'AWM-ET002',4.0);
INSERT INTO StudentHistories(StudentID,CourseID,Grade) VALUES(6006,'AWM-ET002',4.0);

INSERT INTO StudentHistories(StudentID,CourseID,Grade) VALUES(6000,'CEM-M1003',4.0);
INSERT INTO StudentHistories(StudentID,CourseID,Grade) VALUES(6001,'CEM-M1003',3.5);
INSERT INTO StudentHistories(StudentID,CourseID,Grade) VALUES(6002,'CEM-M1003',4.5);

INSERT INTO StudentHistories(StudentID,CourseID,Grade) VALUES(6004,'EIT-EP1001',4.5);
INSERT INTO StudentHistories(StudentID,CourseID,Grade) VALUES(6004,'EIT-EP1002',4.0);

INSERT INTO StudentHistories(StudentID,CourseID,Grade) VALUES(6008,'MIS-C1001',4.5);

INSERT INTO StudentHistories(StudentID,CourseID,Grade) VALUES(6009,'MIS-C1001',3.0);
INSERT INTO StudentHistories(StudentID,CourseID,Grade) VALUES(6009,'MIS-C2004',5.0);

INSERT INTO StudentHistories(StudentID,CourseID,Grade) VALUES(6010,'MIS-C1001',4.5);
INSERT INTO StudentHistories(StudentID,CourseID,Grade) VALUES(6010,'MIS-C2004',5.0);

INSERT INTO StudentHistories(StudentID,CourseID,Grade) VALUES(6011,'MIS-C1001',3.5);
INSERT INTO StudentHistories(StudentID,CourseID,Grade) VALUES(6011,'MIS-C2004',5.0);
INSERT INTO StudentHistories(StudentID,CourseID,Grade) VALUES(6011,'MIS-D006',4.5);

INSERT INTO StudentHistories(StudentID,CourseID,Grade) VALUES(6012,'MIS-C1001',3.0);
INSERT INTO StudentHistories(StudentID,CourseID,Grade) VALUES(6012,'MIS-C2004',3.5);
INSERT INTO StudentHistories(StudentID,CourseID,Grade) VALUES(6012,'MIS-D006',4.0);
INSERT INTO StudentHistories(StudentID,CourseID,Grade) VALUES(6012,'MIS-NPL013',4.0);
INSERT INTO StudentHistories(StudentID,CourseID,Grade) VALUES(6012,'MIS-AIF009',2.0);

INSERT INTO StudentHistories(StudentID,CourseID,Grade) VALUES(6013,'MIS-IML012',2.0);

--Class Schedule
INSERT INTO ClassSchedules(AcademicYear,GroupID) VALUES(2020,7000);
INSERT INTO ClassSchedules(AcademicYear,GroupID) VALUES(2020,7001);
INSERT INTO ClassSchedules(AcademicYear,GroupID) VALUES(2020,7002);
INSERT INTO ClassSchedules(AcademicYear,GroupID) VALUES(2020,7003);
INSERT INTO ClassSchedules(AcademicYear,GroupID) VALUES(2020,7004);
INSERT INTO ClassSchedules(AcademicYear,GroupID) VALUES(2020,7005);
INSERT INTO ClassSchedules(AcademicYear,GroupID) VALUES(2020,7006);
INSERT INTO ClassSchedules(AcademicYear,GroupID) VALUES(2020,7007);
INSERT INTO ClassSchedules(AcademicYear,GroupID) VALUES(2020,7008);
INSERT INTO ClassSchedules(AcademicYear,GroupID) VALUES(2020,7009);
INSERT INTO ClassSchedules(AcademicYear,GroupID) VALUES(2020,7010);
INSERT INTO ClassSchedules(AcademicYear,GroupID) VALUES(2020,7011);
INSERT INTO ClassSchedules(AcademicYear,GroupID) VALUES(2020,7012);
INSERT INTO ClassSchedules(AcademicYear,GroupID) VALUES(2020,7013);
INSERT INTO ClassSchedules(AcademicYear,GroupID) VALUES(2020,7014);
INSERT INTO ClassSchedules(AcademicYear,GroupID) VALUES(2020,7015);
INSERT INTO ClassSchedules(AcademicYear,GroupID) VALUES(2020,7016);
