USE [master]
GO
/****** Object:  Database [FAP_Database]    Script Date: 6/28/2022 8:16:51 AM ******/
CREATE DATABASE [FAP_Database]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FAP_Database', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.TRUNGNAM\MSSQL\DATA\FAP_Database.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FAP_Database_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.TRUNGNAM\MSSQL\DATA\FAP_Database_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FAP_Database] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FAP_Database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FAP_Database] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FAP_Database] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FAP_Database] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FAP_Database] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FAP_Database] SET ARITHABORT OFF 
GO
ALTER DATABASE [FAP_Database] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FAP_Database] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FAP_Database] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FAP_Database] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FAP_Database] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FAP_Database] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FAP_Database] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FAP_Database] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FAP_Database] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FAP_Database] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FAP_Database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FAP_Database] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FAP_Database] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FAP_Database] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FAP_Database] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FAP_Database] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FAP_Database] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FAP_Database] SET RECOVERY FULL 
GO
ALTER DATABASE [FAP_Database] SET  MULTI_USER 
GO
ALTER DATABASE [FAP_Database] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FAP_Database] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FAP_Database] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FAP_Database] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FAP_Database] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FAP_Database] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'FAP_Database', N'ON'
GO
ALTER DATABASE [FAP_Database] SET QUERY_STORE = OFF
GO
USE [FAP_Database]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/28/2022 8:16:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id_account] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](max) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id_account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 6/28/2022 8:16:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Course_id] [nvarchar](50) NOT NULL,
	[Course_name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 6/28/2022 8:16:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[Group_id] [int] IDENTITY(1,1) NOT NULL,
	[Group_Name] [nvarchar](50) NOT NULL,
	[Course_id] [nvarchar](50) NOT NULL,
	[Student_id] [nvarchar](50) NOT NULL,
	[Instructor_id] [int] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[Group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 6/28/2022 8:16:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[Instructor_id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
	[Gender] [bit] NOT NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[Instructor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lession]    Script Date: 6/28/2022 8:16:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lession](
	[Lession_id] [int] IDENTITY(1,1) NOT NULL,
	[Group_id] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Date] [date] NOT NULL,
	[Slot] [int] NOT NULL,
	[Instructor_id] [int] NOT NULL,
	[Room] [int] NOT NULL,
 CONSTRAINT [PK_Lession] PRIMARY KEY CLUSTERED 
(
	[Lession_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 6/28/2022 8:16:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[Room_id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[Room_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slot]    Script Date: 6/28/2022 8:16:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slot](
	[Slot_id] [int] IDENTITY(1,1) NOT NULL,
	[Time_Start] [nvarchar](50) NOT NULL,
	[Time_End] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Slot] PRIMARY KEY CLUSTERED 
(
	[Slot_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 6/28/2022 8:16:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Student_id] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
	[Gender] [bit] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Group]    Script Date: 6/28/2022 8:16:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Group](
	[Student_id] [nvarchar](50) NOT NULL,
	[Group_id] [int] NOT NULL,
 CONSTRAINT [PK_Student_Group] PRIMARY KEY CLUSTERED 
(
	[Student_id] ASC,
	[Group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Lession]    Script Date: 6/28/2022 8:16:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Lession](
	[Student_id] [nvarchar](50) NOT NULL,
	[Lession_id] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[RecordTime] [date] NOT NULL,
 CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED 
(
	[Student_id] ASC,
	[Lession_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id_account], [username], [password]) VALUES (1, N'sonnt', N'sonnt')
INSERT [dbo].[Account] ([id_account], [username], [password]) VALUES (2, N'tuanvm', N'tuanvm')
INSERT [dbo].[Account] ([id_account], [username], [password]) VALUES (3, N'longnt', N'longnt')
INSERT [dbo].[Account] ([id_account], [username], [password]) VALUES (6, N'avn', N'avn')
INSERT [dbo].[Account] ([id_account], [username], [password]) VALUES (7, N'ctn', N'ctn')
INSERT [dbo].[Account] ([id_account], [username], [password]) VALUES (8, N'maixl', N'maixl')
INSERT [dbo].[Account] ([id_account], [username], [password]) VALUES (9, N'maitt', N'maitt')
INSERT [dbo].[Account] ([id_account], [username], [password]) VALUES (10, N'quanghn', N'quanghn')
INSERT [dbo].[Account] ([id_account], [username], [password]) VALUES (11, N'huanbx', N'huanbx')
INSERT [dbo].[Account] ([id_account], [username], [password]) VALUES (12, N'anhlt', N'anhlt')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'CSD201', N'Data Structures and Algorithms')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'DBI202', N'Advanced Algorithms')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'DBW301', N'Data warehouse')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'JFE301', N'Japanese IT Fundamentals')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'NWC203c', N'Computer Networking')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'OSG202', N'Operating Systems')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'PFP191', N'Programming Fundamentals with Python')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'PRF192', N'Programming Fundamentals')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'PRJ301', N'Java Web Application Development')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'PRN211', N'Basic Cross-Platfonn Appicaticn Programming With .NET')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'PRN221', N'Advanced Cross-Platfonn Appicaticn Programming With .NET')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'PRO192', N'Object-Oriented Programming')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'PRU211m', N'C# Programming and Unity')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'WED201c', N'Web Design')
GO
SET IDENTITY_INSERT [dbo].[Group] ON 

INSERT [dbo].[Group] ([Group_id], [Group_Name], [Course_id], [Student_id], [Instructor_id]) VALUES (10, N'AI1604', N'CSD201', N'HE150000', 4)
INSERT [dbo].[Group] ([Group_id], [Group_Name], [Course_id], [Student_id], [Instructor_id]) VALUES (12, N'SE1610', N'PRJ301', N'HE151001', 4)
INSERT [dbo].[Group] ([Group_id], [Group_Name], [Course_id], [Student_id], [Instructor_id]) VALUES (16, N'SE1628', N'DBI202', N'HE151003', 8)
INSERT [dbo].[Group] ([Group_id], [Group_Name], [Course_id], [Student_id], [Instructor_id]) VALUES (17, N'SE1501-NET', N'PRU211m', N'HE151000', 6)
INSERT [dbo].[Group] ([Group_id], [Group_Name], [Course_id], [Student_id], [Instructor_id]) VALUES (21, N'IOT1702', N'PRF192', N'HE171000', 6)
SET IDENTITY_INSERT [dbo].[Group] OFF
GO
SET IDENTITY_INSERT [dbo].[Instructor] ON 

INSERT [dbo].[Instructor] ([Instructor_id], [Name], [Code], [DOB], [Gender]) VALUES (4, N'Ngô Tùng Sơn', N'sonnt', CAST(N'1989-12-12' AS Date), 1)
INSERT [dbo].[Instructor] ([Instructor_id], [Name], [Code], [DOB], [Gender]) VALUES (6, N'Vương Minh Tuấn', N'tuanvm', CAST(N'1989-11-12' AS Date), 1)
INSERT [dbo].[Instructor] ([Instructor_id], [Name], [Code], [DOB], [Gender]) VALUES (8, N'Nguyễn Thành Long', N'longnt', CAST(N'1979-03-03' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Instructor] OFF
GO
SET IDENTITY_INSERT [dbo].[Lession] ON 

INSERT [dbo].[Lession] ([Lession_id], [Group_id], [Name], [Date], [Slot], [Instructor_id], [Room]) VALUES (1, 10, N'Describe the list data structure and its’ different way of implementations.', CAST(N'2022-01-17' AS Date), 1, 6, 1)
INSERT [dbo].[Lession] ([Lession_id], [Group_id], [Name], [Date], [Slot], [Instructor_id], [Room]) VALUES (2, 12, N'Introduction to java web application', CAST(N'2022-01-18' AS Date), 2, 4, 2)
INSERT [dbo].[Lession] ([Lession_id], [Group_id], [Name], [Date], [Slot], [Instructor_id], [Room]) VALUES (3, 10, N'English', CAST(N'2022-01-19' AS Date), 3, 4, 4)
SET IDENTITY_INSERT [dbo].[Lession] OFF
GO
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (1, N'BE-301')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (2, N'BE-315')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (3, N'DE-217')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (4, N'DE-222')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (5, N'DE-223')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (6, N'DE-C204')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (7, N'DE-331')
SET IDENTITY_INSERT [dbo].[Room] OFF
GO
SET IDENTITY_INSERT [dbo].[Slot] ON 

INSERT [dbo].[Slot] ([Slot_id], [Time_Start], [Time_End]) VALUES (1, N'7:30', N'9:00')
INSERT [dbo].[Slot] ([Slot_id], [Time_Start], [Time_End]) VALUES (2, N'9:10', N'10:40')
INSERT [dbo].[Slot] ([Slot_id], [Time_Start], [Time_End]) VALUES (3, N'10:50', N'12:20')
INSERT [dbo].[Slot] ([Slot_id], [Time_Start], [Time_End]) VALUES (4, N'12:50', N'14:20')
INSERT [dbo].[Slot] ([Slot_id], [Time_Start], [Time_End]) VALUES (5, N'14:30', N'16:00')
INSERT [dbo].[Slot] ([Slot_id], [Time_Start], [Time_End]) VALUES (6, N'16:10', N'17:40')
SET IDENTITY_INSERT [dbo].[Slot] OFF
GO
INSERT [dbo].[Student] ([Student_id], [FirstName], [MiddleName], [LastName], [DOB], [Gender]) VALUES (N'HE150000', N'Nguyễn', N'Văn', N'A', CAST(N'2001-12-06' AS Date), 1)
INSERT [dbo].[Student] ([Student_id], [FirstName], [MiddleName], [LastName], [DOB], [Gender]) VALUES (N'HE150001', N'Nguyễn', N'Thị', N'C', CAST(N'2001-12-06' AS Date), 0)
INSERT [dbo].[Student] ([Student_id], [FirstName], [MiddleName], [LastName], [DOB], [Gender]) VALUES (N'HE150002', N'Lê', N'Xuân', N'Mai', CAST(N'2001-02-03' AS Date), 0)
INSERT [dbo].[Student] ([Student_id], [FirstName], [MiddleName], [LastName], [DOB], [Gender]) VALUES (N'HE151003', N'Trần', N'Thị ', N'Lệ', CAST(N'2001-12-01' AS Date), 0)
INSERT [dbo].[Student] ([Student_id], [FirstName], [MiddleName], [LastName], [DOB], [Gender]) VALUES (N'HE151004', N'Lê', N'Hồ', N'Quang', CAST(N'2001-02-01' AS Date), 1)
INSERT [dbo].[Student] ([Student_id], [FirstName], [MiddleName], [LastName], [DOB], [Gender]) VALUES (N'HE151005', N'Bùi', N'Xuân', N'Huấn', CAST(N'2001-02-09' AS Date), 1)
INSERT [dbo].[Student] ([Student_id], [FirstName], [MiddleName], [LastName], [DOB], [Gender]) VALUES (N'HE171000', N'Lê', N'Tuấn', N'Anh', CAST(N'2003-11-22' AS Date), 1)
GO
INSERT [dbo].[Student_Group] ([Student_id], [Group_id]) VALUES (N'HE150000', 10)
INSERT [dbo].[Student_Group] ([Student_id], [Group_id]) VALUES (N'HE150001', 10)
INSERT [dbo].[Student_Group] ([Student_id], [Group_id]) VALUES (N'HE150002', 10)
GO
INSERT [dbo].[Student_Lession] ([Student_id], [Lession_id], [Status], [RecordTime]) VALUES (N'HE150000', 1, 0, CAST(N'2022-01-17' AS Date))
INSERT [dbo].[Student_Lession] ([Student_id], [Lession_id], [Status], [RecordTime]) VALUES (N'HE150001', 1, 1, CAST(N'2022-01-17' AS Date))
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Course] FOREIGN KEY([Course_id])
REFERENCES [dbo].[Course] ([Course_id])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Course]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Instructor] FOREIGN KEY([Instructor_id])
REFERENCES [dbo].[Instructor] ([Instructor_id])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Instructor]
GO
ALTER TABLE [dbo].[Lession]  WITH CHECK ADD  CONSTRAINT [FK_Lession_Group] FOREIGN KEY([Group_id])
REFERENCES [dbo].[Group] ([Group_id])
GO
ALTER TABLE [dbo].[Lession] CHECK CONSTRAINT [FK_Lession_Group]
GO
ALTER TABLE [dbo].[Lession]  WITH CHECK ADD  CONSTRAINT [FK_Lession_Instructor] FOREIGN KEY([Instructor_id])
REFERENCES [dbo].[Instructor] ([Instructor_id])
GO
ALTER TABLE [dbo].[Lession] CHECK CONSTRAINT [FK_Lession_Instructor]
GO
ALTER TABLE [dbo].[Lession]  WITH CHECK ADD  CONSTRAINT [FK_Lession_Room] FOREIGN KEY([Room])
REFERENCES [dbo].[Room] ([Room_id])
GO
ALTER TABLE [dbo].[Lession] CHECK CONSTRAINT [FK_Lession_Room]
GO
ALTER TABLE [dbo].[Lession]  WITH CHECK ADD  CONSTRAINT [FK_Lession_Slot] FOREIGN KEY([Slot])
REFERENCES [dbo].[Slot] ([Slot_id])
GO
ALTER TABLE [dbo].[Lession] CHECK CONSTRAINT [FK_Lession_Slot]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Group] FOREIGN KEY([Group_id])
REFERENCES [dbo].[Group] ([Group_id])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Group]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Student] FOREIGN KEY([Student_id])
REFERENCES [dbo].[Student] ([Student_id])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Student]
GO
ALTER TABLE [dbo].[Student_Lession]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Lession] FOREIGN KEY([Lession_id])
REFERENCES [dbo].[Lession] ([Lession_id])
GO
ALTER TABLE [dbo].[Student_Lession] CHECK CONSTRAINT [FK_Schedule_Lession]
GO
ALTER TABLE [dbo].[Student_Lession]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Student] FOREIGN KEY([Student_id])
REFERENCES [dbo].[Student] ([Student_id])
GO
ALTER TABLE [dbo].[Student_Lession] CHECK CONSTRAINT [FK_Schedule_Student]
GO
USE [master]
GO
ALTER DATABASE [FAP_Database] SET  READ_WRITE 
GO
