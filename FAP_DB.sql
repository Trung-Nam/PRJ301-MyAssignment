USE [master]
GO
/****** Object:  Database [FAP_Database]    Script Date: 6/7/2022 12:09:36 AM ******/
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
/****** Object:  Table [dbo].[Course]    Script Date: 6/7/2022 12:09:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Course_id] [nvarchar](50) NOT NULL,
	[Course_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 6/7/2022 12:09:36 AM ******/
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
/****** Object:  Table [dbo].[Instructor]    Script Date: 6/7/2022 12:09:36 AM ******/
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
/****** Object:  Table [dbo].[Lession]    Script Date: 6/7/2022 12:09:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lession](
	[Lession_id] [int] IDENTITY(1,1) NOT NULL,
	[Group_id] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Instructor_id] [int] NOT NULL,
	[Slot] [int] NOT NULL,
	[Room] [int] NOT NULL,
 CONSTRAINT [PK_Lession] PRIMARY KEY CLUSTERED 
(
	[Lession_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 6/7/2022 12:09:36 AM ******/
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
/****** Object:  Table [dbo].[Schedule]    Script Date: 6/7/2022 12:09:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
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
/****** Object:  Table [dbo].[Slot]    Script Date: 6/7/2022 12:09:36 AM ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 6/7/2022 12:09:36 AM ******/
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
/****** Object:  Table [dbo].[Student_Group]    Script Date: 6/7/2022 12:09:36 AM ******/
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
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'CSD201', N'Data Structures and Algorithms')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'CSD301', N'Advanced Algorithms')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'DBI202', N'Introduction to Databases')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'DBW301', N'Data warehouse')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'JFE301', N'Japanese IT Fundamentals')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'NWC203c', N'Computer Networking')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'OSG202', N'Operating Systems')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'PFP191', N'Programming Fundamentals with Python')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'PRF192', N'Programming Fundamentals')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'PRJ301', N'Java Web Application Development')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'PRN211', N'Basic Cross Platform Application Programming')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'PRO192', N'Object-Oriented Programming')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'PRU211m', N'C# Programming and Unity')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'WED201c', N'Web Design')
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
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Lession] FOREIGN KEY([Lession_id])
REFERENCES [dbo].[Lession] ([Lession_id])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Lession]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Student] FOREIGN KEY([Student_id])
REFERENCES [dbo].[Student] ([Student_id])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Student]
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
USE [master]
GO
ALTER DATABASE [FAP_Database] SET  READ_WRITE 
GO
