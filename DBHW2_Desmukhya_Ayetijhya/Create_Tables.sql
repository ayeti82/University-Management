--use UniversityDatabase;

CREATE TABLE University(
	[UniversityID] [varchar](10) NOT NULL,
	[UniversityName] [varchar](50) NOT NULL,
	CONSTRAINT PK_University PRIMARY KEY (UniversityID)
 );

 CREATE TABLE Departments(
	[DepartmentID] [varchar](10) NOT NULL,
	[DepartmentName] [varchar](50) NOT NULL,
	[UniversityID] [varchar](10) NOT NULL,
	CONSTRAINT PK_Departments PRIMARY KEY (DepartmentID),
	CONSTRAINT FK_Departments_University FOREIGN KEY(UniversityID) REFERENCES University(UniversityID)
);

CREATE TABLE Courses(
	[CourseID] [varchar](10) NOT NULL,
	[CourseName] [varchar](50) NOT NULL,
	[DepartmentID] [varchar](10) NOT NULL,
	[CourseYear] [int] NOT NULL,
	[CourseSem] [int] NOT NULL,
	[isElective] [bit] NOT NULL,
	[MinStudents] [int] NOT NULL,
	[MaxStudents] [int] NULL,
	[CourseType] [varchar](20) NOT NULL,
    CONSTRAINT PK_Course PRIMARY KEY (CourseID),
	CONSTRAINT FK_Courses_Departments FOREIGN KEY(DepartmentID) REFERENCES Departments(DepartmentID),
);

CREATE TABLE Prerequisites(
	[PrerequisiteID] int NOT NULL IDENTITY(1000,1),
	[CourseID] [varchar](10) NOT NULL,
	[PrerequisiteCourseID] [varchar](10) NOT NULL,
    CONSTRAINT PK_Prerequisites PRIMARY KEY(PrerequisiteID),
    CONSTRAINT FK_Prerequisites_Courses FOREIGN KEY(CourseID) REFERENCES Courses(CourseID),
	CONSTRAINT FK_PrerequisitesCourse_Courses FOREIGN KEY(PrerequisiteCourseID) REFERENCES Courses(CourseID)
);

CREATE TABLE Rooms(
	[RoomID] [int] NOT NULL,
	[DepartmentID] [varchar](10) NOT NULL,
	[RoomType] [varchar](10) NOT NULL,
    CONSTRAINT PK_Rooms PRIMARY KEY(RoomID,DepartmentID),
    CONSTRAINT FK_Rooms_Departments FOREIGN KEY(DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Employees(
	[EmployeeID] [varchar](10) NOT NULL,
	[DepartmentID] [varchar](10) NOT NULL,
	[EmployeeName] [varchar](50) NOT NULL,
	[EmployeeAddress] [varchar](50) NOT NULL,
	[EmployeeEmail] [varchar](30) NOT NULL,
	[EmployeePhoneNumber] [varchar](20) NOT NULL,
	[SupervisorID] [int] NULL,
	CONSTRAINT PK_Employees PRIMARY KEY(EmployeeID),
	CONSTRAINT FK_Employees_Departments FOREIGN KEY(DepartmentID) REFERENCES Departments(DepartmentID),
);

CREATE TABLE Supervisors(
	[SupervisorID] [int] NOT NULL IDENTITY(2000,1),
	[EmployeeID] [varchar](10) NOT NULL,
	[SupervisorRole] [varchar](50) NULL,
	CONSTRAINT PK_Supervisors PRIMARY KEY (EmployeeID),
	CONSTRAINT FK_Supervisors_Employees FOREIGN KEY(EmployeeID) REFERENCES Employees(EmployeeID)
 );

CREATE TABLE Teachers(
	[TeacherID] [int] NOT NULL IDENTITY(3000,1),
	[EmployeeID] [varchar](10) NOT NULL,
	[TeacherRole] [varchar](50) NULL,
	CONSTRAINT PK_Teachers PRIMARY KEY (EmployeeID),
	CONSTRAINT FK_Teachers_Employees FOREIGN KEY(EmployeeID) REFERENCES Employees(EmployeeID),
);

CREATE TABLE TeachersCourses(
	[TeacherCoursesID] [int] NOT NULL IDENTITY(4000,1),
	[EmployeeID] [varchar](10) NOT NULL,
	[CourseID] [varchar](10) NOT NULL,
	CONSTRAINT PK_TeachersCourses PRIMARY KEY (TeacherCoursesID),
	CONSTRAINT FK_TeachersCourses_Courses FOREIGN KEY(CourseID) REFERENCES Courses(CourseID),
	CONSTRAINT FK_TeachersCourses_Teachers FOREIGN KEY(EmployeeID) REFERENCES Teachers(EmployeeID)
 );

CREATE TABLE TeachingHistories(
	[TeacherHistoryID] [int] NOT NULL IDENTITY(5000,1),
	[CourseID] [varchar](10) NOT NULL,
	[EmployeeID] [varchar](10) NOT NULL,
	[TeachingYear] [int] NOT NULL,
	CONSTRAINT PK_TeachingHistories PRIMARY KEY (TeacherHistoryID),
	CONSTRAINT FK_TeachingHistories_Courses FOREIGN KEY(CourseID) REFERENCES Courses(CourseID),
	CONSTRAINT FK_TeachersHistories_Teachers FOREIGN KEY(EmployeeID) REFERENCES Teachers(EmployeeID)
 );

CREATE TABLE Students(
	[StudentID] [int] NOT NULL IDENTITY(6000,1),
	[StudentName] [varchar](50) NOT NULL,
	[DepartmentID] [varchar](10) NOT NULL,
	[StudentAddress] [varchar](50) NOT NULL,
	[StudentEmail] [varchar](50) NOT NULL,
	[StudentPhoneNumber] [varchar](50) NOT NULL,
	[StudentYear] [int] NOT NULL,
	[StudentSemester] [int] NOT NULL,
	CONSTRAINT PK_Student PRIMARY KEY (StudentID),
	CONSTRAINT FK_Students_Departments FOREIGN KEY(DepartmentID) REFERENCES Departments(DepartmentID),
);

CREATE TABLE Groups(
	[GroupID] [int] NOT NULL IDENTITY(7000,1),
	[CourseID] [varchar](10) NOT NULL,
	[EmployeeID] [varchar](10) NOT NULL,
	[GroupNumber] [int] NOT NULL,
	CONSTRAINT PK_Groups PRIMARY KEY (GroupID),
	CONSTRAINT FK_Groups_Courses FOREIGN KEY(CourseID) REFERENCES Courses(CourseID),
	CONSTRAINT FK_Groups_Teachers FOREIGN KEY(EmployeeID) REFERENCES Teachers(EmployeeID)
);

CREATE TABLE Classes(
	[GroupID] [int] NOT NULL,
	[DepartmentID] [varchar](10) NOT NULL,
	[RoomID] [int] NOT NULL,
	[ClassDay] [varchar](15) NOT NULL,
	[TimeFrom] [time](0) NOT NULL,
	[TimeTo] [time](0) NOT NULL,
	[TotalHours] [decimal](3,2) NOT NULL,
	CONSTRAINT PK_Classes PRIMARY KEY (GroupID),
	CONSTRAINT FK_Classes_Groups FOREIGN KEY(GroupID) REFERENCES Groups(GroupID),
	CONSTRAINT FK_Classes_Roooms FOREIGN KEY(RoomID,DepartmentID) REFERENCES Rooms(RoomID,DepartmentID)
)

CREATE TABLE StudentCourses(
	[StudentCoursesID] [int] NOT NULL IDENTITY(8000,1),
	[CourseID] [varchar](10) NOT NULL,
	[GroupID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
    CONSTRAINT PK_StudentCourses PRIMARY KEY (StudentCoursesID),
	CONSTRAINT FK_StudentCourses_Courses FOREIGN KEY(CourseID) REFERENCES Courses(CourseID),
	CONSTRAINT FK_StudentCourses_Groups FOREIGN KEY(GroupID) REFERENCES Groups(GroupID),
	CONSTRAINT FK_StudentCourses_Students FOREIGN KEY(StudentID) REFERENCES Students(StudentID)
);

CREATE TABLE StudentHistories(
	[StudentHistoryID] [int] NOT NULL IDENTITY(9000,1),
	[CourseID] [varchar](10) NOT NULL,
	[StudentID] [int] NOT NULL,
	[Grade] [decimal](2, 1) NOT NULL,
	CONSTRAINT PK_StudentHistories PRIMARY KEY (StudentHistoryID),
	CONSTRAINT FK_StudentHistories_Courses FOREIGN KEY(CourseID) REFERENCES Courses(CourseID),
	CONSTRAINT FK_StudentHistories_Students FOREIGN KEY(StudentID) REFERENCES Students(StudentID)
);

CREATE TABLE ClassSchedules(
	[ClassScheduleID] [int] NOT NULL IDENTITY(10000,1),
	[AcademicYear] [int] NOT NULL,
	[GroupID] [int] NOT NULL,
	CONSTRAINT PK_ClassSchedules PRIMARY KEY (ClassScheduleID),
	CONSTRAINT FK_ClassSchedules_Group FOREIGN KEY(GroupID)REFERENCES Classes(GroupID),
);





