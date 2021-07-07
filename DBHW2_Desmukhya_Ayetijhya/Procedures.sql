--use UniversityDatabase;
--GO
CREATE PROCEDURE replaceTeacher
@GroupID int,
@Date date AS SET NOCOUNT ON;
with teacher_sick as(
select Groups.GroupID,EmployeeID,TimeFrom,TimeTo,CourseID,ClassDay from Classes
inner join Groups on Groups.GroupID=Classes.GroupID
where Groups.GroupID=@GroupID
),
teachers_available as(
select TeachersCourses.EmployeeID,teacher_sick.CourseID from teacher_sick
inner join TeachersCourses on TeachersCourses.CourseID=teacher_sick.CourseID
where TeachersCourses.EmployeeID!=teacher_sick.EmployeeID
),
get_timing as(
select Groups.EmployeeID,TimeFrom,teachers_available.CourseID from teachers_available
inner join Groups on Groups.EmployeeID=teachers_available.EmployeeID
inner join Classes on Classes.GroupID=Groups.GroupID
where ClassDay =datename(weekday,@Date)
)
select distinct teacher_sick.EmployeeID as Teacher,teacher_sick.CourseID,teacher_sick.ClassDay,
teacher_sick.TimeFrom, teacher_sick.TimeTo,get_timing.EmployeeID as Substitute_Teacher from get_timing
join teacher_sick on teacher_sick.CourseID=get_timing.CourseID
where get_timing.TimeFrom < teacher_sick.TimeFrom or get_timing.TimeFrom>teacher_sick.TimeTo
GO

EXECUTE replaceTeacher 7008,N'2021-05-24';
