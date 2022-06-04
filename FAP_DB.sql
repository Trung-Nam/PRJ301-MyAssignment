USE [FAP_DB]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 6/4/2022 11:40:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Course_id] [int] IDENTITY(1,1) NOT NULL,
	[Course_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 6/4/2022 11:40:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[Group_id] [int] IDENTITY(1,1) NOT NULL,
	[Group_Name] [nvarchar](50) NOT NULL,
	[Course_id] [int] NOT NULL,
	[Student_id] [nvarchar](50) NOT NULL,
	[Instructor_id] [int] NOT NULL,
	[Lession_id] [int] NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 6/4/2022 11:40:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[Instructor_id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
	[Gender] [bit] NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[Instructor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lession]    Script Date: 6/4/2022 11:40:14 PM ******/
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
/****** Object:  Table [dbo].[Room]    Script Date: 6/4/2022 11:40:14 PM ******/
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
/****** Object:  Table [dbo].[schedule]    Script Date: 6/4/2022 11:40:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedule](
	[Student_id] [nvarchar](50) NOT NULL,
	[Lession_id] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[RecordTime] [date] NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slot]    Script Date: 6/4/2022 11:40:14 PM ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 6/4/2022 11:40:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Student_id] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
	[Gender] [bit] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (1, N'DE-C201')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (2, N'DE-C202')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (3, N'DE-C203')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (4, N'DE-C204')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (5, N'DE-C205')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (6, N'DE-C206')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (7, N'BE-C201')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (8, N'BE-C202')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (9, N'BE-C203')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (10, N'AL-R102')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (11, N'AL-R103')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (12, N'AL-R104')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (13, N'AL-L202')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (14, N'AL-L203')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (15, N'AL-L204')
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
INSERT [dbo].[Student] ([Student_id], [Name], [DOB], [Gender]) VALUES (N'HE15000', N'Nguyễn Văn A', CAST(N'2000-12-11' AS Date), 1)
INSERT [dbo].[Student] ([Student_id], [Name], [DOB], [Gender]) VALUES (N'HE151001', N'Nguyễn Thị B', CAST(N'2000-11-22' AS Date), 0)
INSERT [dbo].[Student] ([Student_id], [Name], [DOB], [Gender]) VALUES (N'HE151002', N'Lê Thị C', CAST(N'2000-02-03' AS Date), 0)
INSERT [dbo].[Student] ([Student_id], [Name], [DOB], [Gender]) VALUES (N'HE151003', N'Trần Văn D', CAST(N'2000-02-04' AS Date), 1)
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
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Lession] FOREIGN KEY([Lession_id])
REFERENCES [dbo].[Lession] ([Lession_id])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Lession]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Student] FOREIGN KEY([Student_id])
REFERENCES [dbo].[Student] ([Student_id])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Student]
GO
ALTER TABLE [dbo].[Lession]  WITH CHECK ADD  CONSTRAINT [FK_Lession_Instructor1] FOREIGN KEY([Instructor_id])
REFERENCES [dbo].[Instructor] ([Instructor_id])
GO
ALTER TABLE [dbo].[Lession] CHECK CONSTRAINT [FK_Lession_Instructor1]
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
ALTER TABLE [dbo].[schedule]  WITH CHECK ADD  CONSTRAINT [FK_schedule_Lession] FOREIGN KEY([Lession_id])
REFERENCES [dbo].[Lession] ([Lession_id])
GO
ALTER TABLE [dbo].[schedule] CHECK CONSTRAINT [FK_schedule_Lession]
GO
ALTER TABLE [dbo].[schedule]  WITH CHECK ADD  CONSTRAINT [FK_schedule_Student] FOREIGN KEY([Student_id])
REFERENCES [dbo].[Student] ([Student_id])
GO
ALTER TABLE [dbo].[schedule] CHECK CONSTRAINT [FK_schedule_Student]
GO
