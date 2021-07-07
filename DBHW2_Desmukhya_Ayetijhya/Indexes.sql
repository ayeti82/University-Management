--use UniversityDatabase;
--GO

--For query searches regarding StudentYear & Semesters
CREATE NONCLUSTERED INDEX [IDX_Sudents_StudentYear]
ON [dbo].[Students] ([StudentYear] ASC,[StudentSemester] ASC) INCLUDE(StudentID,StudentName) 

--For query searches regarding students from a particular department
CREATE NONCLUSTERED INDEX [IDX_Sudents_DepartmentID]
ON [dbo].[Students] ([DepartmentID] ASC) INCLUDE(StudentID,StudentName) 

--For query searches within specific time
CREATE NONCLUSTERED INDEX [IDX_Classes_TimeFrom]
ON [dbo].[Classes] ([DepartmentID] ASC,[TimeFrom] ASC,[TimeTo] ASC) 

--For query searches specific to Electives
CREATE NONCLUSTERED INDEX [IDX_Courses_isElective]
ON [dbo].[Courses] ([CourseID] ASC,[isElective] DESC) 

--For query searches regarding Year, Semester wise Courses
CREATE NONCLUSTERED INDEX [IDX_Courses_DepartmentID_CourseYear_CourseSem]
ON [dbo].[Courses] ([DepartmentID] ASC,[CourseYear] ASC,[CourseSem] ASC) INCLUDE (CourseID)

--For speed up of search of DepartmentID
CREATE NONCLUSTERED INDEX [IDX_Departments_DepartmentID]
ON [dbo].[Departments] ([DepartmentID] ASC)

-- For query searches on groups of a particular Department
CREATE NONCLUSTERED INDEX [IDX_Groups_CourseID]
ON [dbo].[Groups] ([CourseID] ASC) INCLUDE (GroupID,EmployeeID) 

--Similar function to the previous index
CREATE NONCLUSTERED INDEX [IDX_Prerequisites_CourseID]
ON [dbo].[Prerequisites] ([CourseID] ASC) INCLUDE (PrerequisiteCourseID)

--For query searches regarding a particular department
CREATE NONCLUSTERED INDEX [IDX_Rooms_DepartmentID]
ON [dbo].[Rooms] ([DepartmentID] ASC) INCLUDE (RoomType) 

--For query searches related to a particular student/students
CREATE NONCLUSTERED INDEX [IDX_StudentCourses_StudentID]
ON [dbo].[StudentCourses] ([StudentID] ASC) INCLUDE (CourseID,GroupID) 

--Similar to previous index
CREATE NONCLUSTERED INDEX [IDX_StudentHistories_StudentID]
ON [dbo].[StudentHistories] ([StudentID] ASC) INCLUDE (CourseID,Grade) 

--For query searches regarding a particular role
CREATE NONCLUSTERED INDEX [IDX_Supervisors_SupervisorRole]
ON [dbo].[Supervisors] ([SupervisorRole] ASC) INCLUDE (EmployeeID) 

--Similar to previous index
CREATE NONCLUSTERED INDEX [IDX_Teachers_TeacherRole]
ON [dbo].[Teachers] ([TeacherRole] ASC) INCLUDE (EmployeeID) 

--For query searches regarding a particular employee
CREATE NONCLUSTERED INDEX [IDX_TeachersCourses_EmployeeID]
ON [dbo].[TeachersCourses] ([EmployeeID] ASC) INCLUDE (CourseID) 

--Similar to previous index
CREATE NONCLUSTERED INDEX [IDX_TeachingHistories_EmployeeID]
ON [dbo].[TeachingHistories] ([EmployeeID] ASC) INCLUDE (CourseID) 





