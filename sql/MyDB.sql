USE [master]
GO
/****** Object:  Database [MyDB]    Script Date: 2020/12/23 17:12:27 ******/
CREATE DATABASE [MyDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MyDB', FILENAME = N'D:\DATA\MyDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MyDB_log', FILENAME = N'D:\DATA\MyDB_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MyDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MyDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MyDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MyDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MyDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MyDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [MyDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MyDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [MyDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MyDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MyDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MyDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MyDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MyDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MyDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MyDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MyDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MyDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MyDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MyDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MyDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MyDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MyDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MyDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MyDB] SET RECOVERY FULL 
GO
ALTER DATABASE [MyDB] SET  MULTI_USER 
GO
ALTER DATABASE [MyDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MyDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MyDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MyDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [MyDB]
GO
/****** Object:  Table [dbo].[clazz]    Script Date: 2020/12/23 17:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clazz](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](64) NULL,
	[grade] [varchar](64) NULL,
	[subject] [varchar](64) NULL,
	[num] [int] NULL,
	[leader] [varchar](64) NULL,
	[department] [varchar](64) NULL,
 CONSTRAINT [PK_clazz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[student]    Script Date: 2020/12/23 17:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [varchar](64) NULL,
	[name] [varchar](64) NULL,
	[sex] [varchar](64) NULL,
	[age] [int] NULL,
	[clazz] [varchar](64) NULL,
	[phone] [varchar](64) NULL,
	[email] [varchar](64) NULL,
	[position] [varchar](64) NULL,
	[id_card] [varchar](64) NULL,
	[address] [varchar](64) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 2020/12/23 17:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [varchar](64) NULL,
	[pwd] [varchar](64) NULL,
	[name] [varchar](64) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[clazz] ON 

INSERT [dbo].[clazz] ([id], [name], [grade], [subject], [num], [leader], [department]) VALUES (6, N'1班', N'2019级', N'网络工程', 45, N'李华', N'软件学院')
INSERT [dbo].[clazz] ([id], [name], [grade], [subject], [num], [leader], [department]) VALUES (7, N'1班', N'2019级', N'网络工程', 45, N'李华', N'软件学院')
INSERT [dbo].[clazz] ([id], [name], [grade], [subject], [num], [leader], [department]) VALUES (8, N'1班', N'2019级', N'网络工程', 45, N'李华', N'软件学院')
INSERT [dbo].[clazz] ([id], [name], [grade], [subject], [num], [leader], [department]) VALUES (9, N'1班', N'2019级', N'网络工程', 45, N'李华', N'软件学院')
INSERT [dbo].[clazz] ([id], [name], [grade], [subject], [num], [leader], [department]) VALUES (11, N'1班', N'2019级', N'网络工程', 45, N'李华', N'软件学院')
INSERT [dbo].[clazz] ([id], [name], [grade], [subject], [num], [leader], [department]) VALUES (18, N'1班', N'2019级', N'网络工程', 45, N'李华', N'软件学院')
INSERT [dbo].[clazz] ([id], [name], [grade], [subject], [num], [leader], [department]) VALUES (19, N'1班', N'2019级', N'网络工程', 45, N'李华', N'软件学院')
INSERT [dbo].[clazz] ([id], [name], [grade], [subject], [num], [leader], [department]) VALUES (20, N'1班', N'2019级', N'网络工程', 45, N'李华', N'软件学院')
SET IDENTITY_INSERT [dbo].[clazz] OFF
SET IDENTITY_INSERT [dbo].[student] ON 

INSERT [dbo].[student] ([id], [student_id], [name], [sex], [age], [clazz], [phone], [email], [position], [id_card], [address]) VALUES (27, N'609190801', N'李华', N'   男', 20, N'  2', N'1371228734', N'2525522@gmail.com', N'班长', N'41132415151515661671', N'河南省南阳市宛城区孔明北路66号')
INSERT [dbo].[student] ([id], [student_id], [name], [sex], [age], [clazz], [phone], [email], [position], [id_card], [address]) VALUES (28, N'609190801', N'李华', N'  男', 20, N' 2', N'1371228734', N'2525522@gmail.com', N'班长', N'41132415151515661671', N'河南省南阳市宛城区孔明北路66号')
INSERT [dbo].[student] ([id], [student_id], [name], [sex], [age], [clazz], [phone], [email], [position], [id_card], [address]) VALUES (29, N'609190801', N'李华', N'  男', 20, N' 2', N'1371228734', N'2525522@gmail.com', N'班长', N'41132415151515661671', N'河南省南阳市宛城区孔明北路66号')
INSERT [dbo].[student] ([id], [student_id], [name], [sex], [age], [clazz], [phone], [email], [position], [id_card], [address]) VALUES (30, N'609190801', N'李华', N'  男', 20, N' 2', N'1371228734', N'2525522@gmail.com', N'班长', N'41132415151515661671', N'河南省南阳市宛城区孔明北路66号')
INSERT [dbo].[student] ([id], [student_id], [name], [sex], [age], [clazz], [phone], [email], [position], [id_card], [address]) VALUES (31, N'609190801', N'李华', N'  男', 20, N' 2', N'1371228734', N'2525522@gmail.com', N'班长', N'41132415151515661671', N'河南省南阳市宛城区孔明北路66号')
INSERT [dbo].[student] ([id], [student_id], [name], [sex], [age], [clazz], [phone], [email], [position], [id_card], [address]) VALUES (32, N'609190801', N'李华', N'  男', 20, N' 2', N'1371228734', N'2525522@gmail.com', N'班长', N'41132415151515661671', N'河南省南阳市宛城区孔明北路66号')
INSERT [dbo].[student] ([id], [student_id], [name], [sex], [age], [clazz], [phone], [email], [position], [id_card], [address]) VALUES (33, N'609190801', N'李华', N'   男', 20, N'  2', N'1371228734', N'2525522@gmail.com', N'班长', N'41132415151515661671', N'河南省南阳市宛城区孔明北路66号')
INSERT [dbo].[student] ([id], [student_id], [name], [sex], [age], [clazz], [phone], [email], [position], [id_card], [address]) VALUES (34, N'609190801', N'李华', N'  男', 20, N' 2', N'1371228734', N'2525522@gmail.com', N'班长', N'41132415151515661671', N'河南省南阳市宛城区孔明北路66号')
INSERT [dbo].[student] ([id], [student_id], [name], [sex], [age], [clazz], [phone], [email], [position], [id_card], [address]) VALUES (35, N'609190801', N'李华', N'  男', 20, N' 2', N'1371228734', N'2525522@gmail.com', N'班长', N'41132415151515661671', N'河南省南阳市宛城区孔明北路66号')
SET IDENTITY_INSERT [dbo].[student] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [user_name], [pwd], [name]) VALUES (1, N'sa', N'2', N'李华')
SET IDENTITY_INSERT [dbo].[users] OFF
USE [master]
GO
ALTER DATABASE [MyDB] SET  READ_WRITE 
GO
