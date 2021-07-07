--use UniversityDatabase;

--Q1 -> A total number of students at each department for each year in the database.

--select DepartmentID,TotalStudentsYear1,TotalStudentsYear2,TotalStudentsYear3,TotalStudentsYear4
--from (select Departments.DepartmentID,
--sum(case when (Students.StudentYear=1) then 1 else 0 end) as TotalStudentsYear1,
--sum(case when (Students.StudentYear=2) then 1 else 0 end) as TotalStudentsYear2,
--sum(case when (Students.StudentYear=3) then 1 else 0 end) as TotalStudentsYear3,
--sum(case when (Students.StudentYear=4) then 1 else 0 end) as TotalStudentsYear4
--from Departments
--inner join Students on Departments.DepartmentID=Students.DepartmentID
--group by Departments.DepartmentID) as Total_Studs;

--Q2 -> A list of 10 courses taken by most students in a single academic year

--select top(10) CourseName,CourseID,Total_Students from
--(select Courses.CourseName,Courses.CourseID,count(StudentCourses.CourseID)as Total_Students from Courses
--inner join StudentCourses on StudentCourses.CourseID=Courses.CourseID
--group by CourseName,Courses.CourseID)as Total_Courses_Taken
--order by Total_Students desc,CourseID ASC;

--Q3 -> A list of teachers whose classes were taken by more than 150% of average number of students
--per teacher (in all classes in the database, for all years).

--with tot_studs as(select EmployeeID,count(EmployeeID) as tot from Groups
--inner join StudentCourses on StudentCourses.GroupID=Groups.GroupID
--group by EmployeeID)
--select Employees.EmployeeID,DepartmentID,EmployeeName,EmployeeAddress,EmployeeEmail,EmployeePhoneNumber,SupervisorID
--from Employees 
--inner join tot_studs on tot_studs.EmployeeID=Employees.EmployeeID
--where tot_studs.tot > cast(1.5*(select avg(cast(tot_studs.tot as decimal(10,2))) from tot_studs)as decimal(10,2))

--Q4 -> Maximum number of hours taught in a single room in a week, and the year and the semester
--when it happened.

--select  Courses.DepartmentID, CourseYear,CourseSem,RoomID,count(RoomID)as RoomUsage,sum(TotalHours) as MaxHours from Courses
--inner join Groups on Groups.CourseID=Courses.CourseID
--inner join Classes on Classes.GroupID=Groups.GroupID
--group by Courses.DepartmentID, CourseYear,CourseSem,RoomID


--Q5 -> Total number of students who have classes from 8:00 to 20:00 on Monday, without a break of at
--least 1h

--with get_filtered_student as(select StudentCourses.StudentID,TimeFrom,TimeTo,ClassDay,
--Lag(TimeTo, 1) OVER(PARTITION BY StudentID ORDER BY TimeFrom ASC) AS LastClassEnd from StudentCourses
--inner join Classes on Classes.GroupID=StudentCourses.GroupID
--where TimeFrom >= '8:00' and TimeTo <= '20:00'and ClassDay='Monday')
--,get_time_gap as(select *,SUM(ABS(datediff(MINUTE,TimeFrom,LastClassEnd))) OVER (PARTITION BY StudentID) as TotalTimeGap
--from get_filtered_student)
--select count(distinct StudentID) as Total_Students from get_time_gap where TotalTimeGap <= 60;
