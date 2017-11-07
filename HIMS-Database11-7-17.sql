USE [master]
GO
/****** Object:  Database [HIMS]    Script Date: 11/7/2017 3:50:49 PM ******/
CREATE DATABASE [HIMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HIMS', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\HIMS.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HIMS_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\HIMS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HIMS] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HIMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HIMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HIMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HIMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HIMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HIMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [HIMS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HIMS] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [HIMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HIMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HIMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HIMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HIMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HIMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HIMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HIMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HIMS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HIMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HIMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HIMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HIMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HIMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HIMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HIMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HIMS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HIMS] SET  MULTI_USER 
GO
ALTER DATABASE [HIMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HIMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HIMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HIMS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [HIMS]
GO
/****** Object:  Table [dbo].[appointment]    Script Date: 11/7/2017 3:50:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[appointment](
	[appointment_id] [int] IDENTITY(1,1) NOT NULL,
	[patient_id] [int] NULL,
	[physician_id] [int] NULL,
	[schedule_id] [int] NULL,
	[time_id] [int] NULL,
	[purpose_id] [int] NULL,
	[remarks] [varchar](250) NULL,
	[date_time] [datetime] NULL,
 CONSTRAINT [PK_AppointmentId] PRIMARY KEY CLUSTERED 
(
	[appointment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[patient]    Script Date: 11/7/2017 3:50:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[patient](
	[patient_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](50) NULL,
	[middle_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[age] [int] NULL,
 CONSTRAINT [PK_PatientId] PRIMARY KEY CLUSTERED 
(
	[patient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[physician]    Script Date: 11/7/2017 3:50:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[physician](
	[physician_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](50) NULL,
	[middle_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[specialization] [varchar](100) NULL,
 CONSTRAINT [PK_PhysicianId] PRIMARY KEY CLUSTERED 
(
	[physician_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[purpose]    Script Date: 11/7/2017 3:50:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[purpose](
	[purpose_id] [int] IDENTITY(1,1) NOT NULL,
	[purpose] [varchar](30) NULL,
 CONSTRAINT [PK_PurposeId] PRIMARY KEY CLUSTERED 
(
	[purpose_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[schedule]    Script Date: 11/7/2017 3:50:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[schedule](
	[schedule_id] [int] IDENTITY(1,1) NOT NULL,
	[day] [varchar](10) NULL,
 CONSTRAINT [PK_ScheduleId] PRIMARY KEY CLUSTERED 
(
	[schedule_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[schedule_time_mapping]    Script Date: 11/7/2017 3:50:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedule_time_mapping](
	[schedule_time_id] [int] IDENTITY(1,1) NOT NULL,
	[schedule_id] [int] NULL,
	[time_id] [int] NULL,
	[physician_id] [int] NULL,
 CONSTRAINT [PK_ScheduleTimeId] PRIMARY KEY CLUSTERED 
(
	[schedule_time_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[time]    Script Date: 11/7/2017 3:50:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[time](
	[time_id] [int] IDENTITY(1,1) NOT NULL,
	[start_time] [int] NOT NULL,
	[end_time] [int] NOT NULL,
 CONSTRAINT [PK_TimeId] PRIMARY KEY CLUSTERED 
(
	[time_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[appointment] ON 

INSERT [dbo].[appointment] ([appointment_id], [patient_id], [physician_id], [schedule_id], [time_id], [purpose_id], [remarks], [date_time]) VALUES (2, 1, 2, 2, 2, 2, N'Test', CAST(0x0000A82400B58C90 AS DateTime))
INSERT [dbo].[appointment] ([appointment_id], [patient_id], [physician_id], [schedule_id], [time_id], [purpose_id], [remarks], [date_time]) VALUES (5, 2, 1, 3, 1, 2, N'test 03', CAST(0x0000A82500000000 AS DateTime))
INSERT [dbo].[appointment] ([appointment_id], [patient_id], [physician_id], [schedule_id], [time_id], [purpose_id], [remarks], [date_time]) VALUES (6, 2, 1, 3, 1, 2, N'test 04', CAST(0x0000A83A00000000 AS DateTime))
INSERT [dbo].[appointment] ([appointment_id], [patient_id], [physician_id], [schedule_id], [time_id], [purpose_id], [remarks], [date_time]) VALUES (7, 1, 2, 4, 1, 2, N'test 04 - updated', CAST(0x0000A83B00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[appointment] OFF
SET IDENTITY_INSERT [dbo].[patient] ON 

INSERT [dbo].[patient] ([patient_id], [first_name], [middle_name], [last_name], [age]) VALUES (1, N'mary grace', N'del mundo', N'gonzales', 26)
INSERT [dbo].[patient] ([patient_id], [first_name], [middle_name], [last_name], [age]) VALUES (2, N'kimberly', N'jamolangue', N'ocampo', 25)
INSERT [dbo].[patient] ([patient_id], [first_name], [middle_name], [last_name], [age]) VALUES (3, N'john mark', N'luis', N'deguinion', 50)
SET IDENTITY_INSERT [dbo].[patient] OFF
SET IDENTITY_INSERT [dbo].[physician] ON 

INSERT [dbo].[physician] ([physician_id], [first_name], [middle_name], [last_name], [specialization]) VALUES (1, N'John', N'Legaspi', N'Palmero', N'Cardiologist')
INSERT [dbo].[physician] ([physician_id], [first_name], [middle_name], [last_name], [specialization]) VALUES (2, N'Steve', N'Buendia', N'Gonzaga', N'Dermatologist')
INSERT [dbo].[physician] ([physician_id], [first_name], [middle_name], [last_name], [specialization]) VALUES (3, N'Bill', N'Ogayre', N'Wyt', N'Gastroenterologist')
INSERT [dbo].[physician] ([physician_id], [first_name], [middle_name], [last_name], [specialization]) VALUES (4, N'Ram', N'Batulan', N'Amor', N'Hematologist/Oncologist')
INSERT [dbo].[physician] ([physician_id], [first_name], [middle_name], [last_name], [specialization]) VALUES (5, N'Ron', N'Dy', N'Martyr', N'Neurologist')
SET IDENTITY_INSERT [dbo].[physician] OFF
SET IDENTITY_INSERT [dbo].[purpose] ON 

INSERT [dbo].[purpose] ([purpose_id], [purpose]) VALUES (1, N'Consultation')
INSERT [dbo].[purpose] ([purpose_id], [purpose]) VALUES (2, N'Follow up')
INSERT [dbo].[purpose] ([purpose_id], [purpose]) VALUES (3, N'Laboratory')
INSERT [dbo].[purpose] ([purpose_id], [purpose]) VALUES (4, N'Others')
SET IDENTITY_INSERT [dbo].[purpose] OFF
SET IDENTITY_INSERT [dbo].[schedule] ON 

INSERT [dbo].[schedule] ([schedule_id], [day]) VALUES (1, N'Monday')
INSERT [dbo].[schedule] ([schedule_id], [day]) VALUES (2, N'Tuesday')
INSERT [dbo].[schedule] ([schedule_id], [day]) VALUES (3, N'Wednesday')
INSERT [dbo].[schedule] ([schedule_id], [day]) VALUES (4, N'Thursday')
INSERT [dbo].[schedule] ([schedule_id], [day]) VALUES (5, N'Friday')
INSERT [dbo].[schedule] ([schedule_id], [day]) VALUES (6, N'Saturday')
INSERT [dbo].[schedule] ([schedule_id], [day]) VALUES (7, N'Sunday')
SET IDENTITY_INSERT [dbo].[schedule] OFF
SET IDENTITY_INSERT [dbo].[schedule_time_mapping] ON 

INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (1, 1, 1, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (2, 1, 2, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (3, 1, 3, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (4, 1, 4, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (5, 1, 8, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (6, 1, 9, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (7, 1, 10, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (8, 1, 11, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (9, 1, 10, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (10, 1, 11, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (11, 1, 12, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (12, 1, 13, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (13, 1, 2, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (14, 1, 3, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (15, 1, 4, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (16, 1, 5, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (17, 1, 12, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (18, 1, 13, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (19, 1, 14, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (20, 1, 15, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (21, 2, 1, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (22, 2, 2, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (23, 2, 3, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (24, 2, 4, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (25, 2, 2, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (26, 2, 3, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (27, 2, 4, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (28, 2, 4, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (29, 2, 10, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (30, 2, 11, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (31, 2, 12, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (32, 2, 13, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (33, 2, 2, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (34, 2, 3, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (35, 2, 4, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (36, 2, 5, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (37, 2, 12, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (38, 2, 13, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (39, 2, 14, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (40, 2, 15, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (41, 3, 1, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (42, 3, 2, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (43, 3, 3, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (44, 3, 4, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (45, 3, 2, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (46, 3, 3, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (47, 3, 4, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (48, 3, 4, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (49, 3, 5, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (50, 3, 6, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (51, 3, 7, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (52, 3, 8, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (53, 3, 9, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (54, 3, 10, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (55, 3, 2, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (56, 3, 3, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (57, 3, 4, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (58, 3, 4, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (59, 3, 5, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (60, 3, 6, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (61, 3, 7, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (62, 3, 8, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (63, 3, 9, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (64, 3, 10, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (65, 3, 2, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (66, 3, 3, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (67, 3, 4, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (68, 3, 4, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (69, 3, 5, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (70, 3, 6, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (71, 3, 7, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (72, 3, 8, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (73, 3, 9, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (74, 3, 10, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (75, 3, 12, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (76, 3, 13, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (77, 3, 14, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (78, 3, 15, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (79, 4, 1, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (80, 4, 2, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (81, 4, 3, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (82, 4, 4, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (83, 4, 2, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (84, 4, 3, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (85, 4, 4, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (86, 4, 4, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (87, 4, 5, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (88, 4, 6, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (89, 4, 7, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (90, 4, 8, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (91, 4, 9, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (92, 4, 10, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (93, 4, 2, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (94, 4, 3, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (95, 4, 4, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (96, 4, 4, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (97, 4, 5, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (98, 4, 6, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (99, 4, 7, 4)
GO
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (100, 4, 8, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (101, 4, 9, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (102, 4, 10, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (103, 4, 12, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (104, 4, 13, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (105, 4, 14, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (106, 4, 15, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (107, 5, 2, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (108, 5, 3, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (109, 5, 4, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (110, 5, 4, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (111, 5, 5, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (112, 5, 6, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (113, 5, 7, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (114, 5, 8, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (115, 5, 9, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (116, 5, 10, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (117, 5, 2, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (118, 5, 3, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (119, 5, 4, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (120, 5, 4, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (121, 5, 5, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (122, 5, 6, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (123, 5, 7, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (124, 5, 8, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (125, 5, 9, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (126, 5, 10, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (127, 5, 12, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (128, 5, 13, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (129, 5, 14, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (130, 5, 15, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (131, 6, 1, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (132, 6, 2, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (133, 6, 3, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (134, 6, 4, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (135, 6, 2, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (136, 6, 3, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (137, 6, 4, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (138, 6, 4, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (139, 6, 5, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (140, 6, 6, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (141, 6, 7, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (142, 6, 8, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (143, 6, 9, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (144, 6, 10, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (145, 6, 2, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (146, 6, 3, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (147, 6, 4, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (148, 6, 4, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (149, 6, 5, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (150, 6, 6, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (151, 6, 7, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (152, 6, 8, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (153, 6, 9, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (154, 6, 10, 3)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (155, 6, 2, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (156, 6, 3, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (157, 6, 4, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (158, 6, 4, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (159, 6, 5, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (160, 6, 6, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (161, 6, 7, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (162, 6, 8, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (163, 6, 9, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (164, 6, 10, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (165, 7, 2, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (166, 7, 3, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (167, 7, 4, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (168, 7, 4, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (169, 7, 5, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (170, 7, 6, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (171, 7, 7, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (172, 7, 8, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (173, 7, 9, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (174, 7, 10, 1)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (175, 7, 1, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (176, 7, 2, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (177, 7, 3, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (178, 7, 4, 2)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (179, 7, 1, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (180, 7, 2, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (181, 7, 3, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (182, 7, 4, 4)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (183, 7, 2, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (184, 7, 3, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (185, 7, 4, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (186, 7, 4, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (187, 7, 5, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (188, 7, 6, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (189, 7, 7, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (190, 7, 8, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (191, 7, 9, 5)
INSERT [dbo].[schedule_time_mapping] ([schedule_time_id], [schedule_id], [time_id], [physician_id]) VALUES (192, 7, 10, 5)
SET IDENTITY_INSERT [dbo].[schedule_time_mapping] OFF
SET IDENTITY_INSERT [dbo].[time] ON 

INSERT [dbo].[time] ([time_id], [start_time], [end_time]) VALUES (1, 7, 8)
INSERT [dbo].[time] ([time_id], [start_time], [end_time]) VALUES (2, 8, 9)
INSERT [dbo].[time] ([time_id], [start_time], [end_time]) VALUES (3, 9, 10)
INSERT [dbo].[time] ([time_id], [start_time], [end_time]) VALUES (4, 10, 11)
INSERT [dbo].[time] ([time_id], [start_time], [end_time]) VALUES (5, 11, 12)
INSERT [dbo].[time] ([time_id], [start_time], [end_time]) VALUES (6, 12, 13)
INSERT [dbo].[time] ([time_id], [start_time], [end_time]) VALUES (7, 13, 14)
INSERT [dbo].[time] ([time_id], [start_time], [end_time]) VALUES (8, 14, 15)
INSERT [dbo].[time] ([time_id], [start_time], [end_time]) VALUES (9, 15, 16)
INSERT [dbo].[time] ([time_id], [start_time], [end_time]) VALUES (10, 16, 17)
INSERT [dbo].[time] ([time_id], [start_time], [end_time]) VALUES (11, 17, 18)
INSERT [dbo].[time] ([time_id], [start_time], [end_time]) VALUES (12, 18, 19)
INSERT [dbo].[time] ([time_id], [start_time], [end_time]) VALUES (13, 19, 20)
INSERT [dbo].[time] ([time_id], [start_time], [end_time]) VALUES (14, 20, 21)
INSERT [dbo].[time] ([time_id], [start_time], [end_time]) VALUES (15, 21, 22)
SET IDENTITY_INSERT [dbo].[time] OFF
ALTER TABLE [dbo].[appointment]  WITH CHECK ADD  CONSTRAINT [FK_appointment_patient] FOREIGN KEY([patient_id])
REFERENCES [dbo].[patient] ([patient_id])
GO
ALTER TABLE [dbo].[appointment] CHECK CONSTRAINT [FK_appointment_patient]
GO
ALTER TABLE [dbo].[appointment]  WITH CHECK ADD  CONSTRAINT [FK_appointment_physician] FOREIGN KEY([physician_id])
REFERENCES [dbo].[physician] ([physician_id])
GO
ALTER TABLE [dbo].[appointment] CHECK CONSTRAINT [FK_appointment_physician]
GO
ALTER TABLE [dbo].[appointment]  WITH CHECK ADD  CONSTRAINT [FK_appointment_purpose] FOREIGN KEY([purpose_id])
REFERENCES [dbo].[purpose] ([purpose_id])
GO
ALTER TABLE [dbo].[appointment] CHECK CONSTRAINT [FK_appointment_purpose]
GO
ALTER TABLE [dbo].[appointment]  WITH CHECK ADD  CONSTRAINT [FK_appointment_schedule] FOREIGN KEY([schedule_id])
REFERENCES [dbo].[schedule] ([schedule_id])
GO
ALTER TABLE [dbo].[appointment] CHECK CONSTRAINT [FK_appointment_schedule]
GO
ALTER TABLE [dbo].[appointment]  WITH CHECK ADD  CONSTRAINT [FK_appointment_time] FOREIGN KEY([time_id])
REFERENCES [dbo].[time] ([time_id])
GO
ALTER TABLE [dbo].[appointment] CHECK CONSTRAINT [FK_appointment_time]
GO
ALTER TABLE [dbo].[schedule_time_mapping]  WITH CHECK ADD  CONSTRAINT [FK_schedule_time_physician] FOREIGN KEY([physician_id])
REFERENCES [dbo].[physician] ([physician_id])
GO
ALTER TABLE [dbo].[schedule_time_mapping] CHECK CONSTRAINT [FK_schedule_time_physician]
GO
ALTER TABLE [dbo].[schedule_time_mapping]  WITH CHECK ADD  CONSTRAINT [FK_schedule_time_sched] FOREIGN KEY([schedule_id])
REFERENCES [dbo].[schedule] ([schedule_id])
GO
ALTER TABLE [dbo].[schedule_time_mapping] CHECK CONSTRAINT [FK_schedule_time_sched]
GO
ALTER TABLE [dbo].[schedule_time_mapping]  WITH CHECK ADD  CONSTRAINT [FK_schedule_time_time] FOREIGN KEY([time_id])
REFERENCES [dbo].[time] ([time_id])
GO
ALTER TABLE [dbo].[schedule_time_mapping] CHECK CONSTRAINT [FK_schedule_time_time]
GO
USE [master]
GO
ALTER DATABASE [HIMS] SET  READ_WRITE 
GO
