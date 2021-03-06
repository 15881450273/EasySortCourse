USE [master]
GO
/****** Object:  Database [db_paikesys2]    Script Date: 2019/11/29 17:49:23 ******/
CREATE DATABASE [db_paikesys2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_paikesys2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\db_paikesys2.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_paikesys2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\db_paikesys2_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [db_paikesys2] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_paikesys2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_paikesys2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_paikesys2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_paikesys2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_paikesys2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_paikesys2] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_paikesys2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_paikesys2] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [db_paikesys2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_paikesys2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_paikesys2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_paikesys2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_paikesys2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_paikesys2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_paikesys2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_paikesys2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_paikesys2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db_paikesys2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_paikesys2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_paikesys2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_paikesys2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_paikesys2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_paikesys2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_paikesys2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_paikesys2] SET RECOVERY FULL 
GO
ALTER DATABASE [db_paikesys2] SET  MULTI_USER 
GO
ALTER DATABASE [db_paikesys2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_paikesys2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_paikesys2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_paikesys2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_paikesys2', N'ON'
GO
USE [db_paikesys2]
GO
/****** Object:  Table [dbo].[stucourse]    Script Date: 2019/11/29 17:49:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stucourse](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stuid] [varchar](20) NOT NULL,
	[stuname] [varchar](25) NOT NULL,
	[grade] [varchar](25) NOT NULL,
	[weekda] [varchar](25) NOT NULL,
	[section] [varchar](25) NOT NULL,
	[coursename] [varchar](25) NOT NULL,
	[zhouci] [varchar](25) NOT NULL,
	[dianjiao] [varchar](25) NOT NULL,
	[major] [varchar](25) NOT NULL,
	[shuangyu] [varchar](25) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_admin]    Script Date: 2019/11/29 17:49:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](25) NULL,
	[userpwd] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_class]    Script Date: 2019/11/29 17:49:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_class](
	[classid] [varchar](25) NOT NULL,
	[stuid] [varchar](25) NOT NULL,
	[classaddr] [varchar](25) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_class1]    Script Date: 2019/11/29 17:49:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_class1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[classid] [varchar](25) NULL,
	[stuid] [varchar](25) NULL,
	[classaddr] [varchar](300) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_courseplan]    Script Date: 2019/11/29 17:49:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_courseplan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[courseid] [varchar](25) NULL,
	[coursename] [varchar](50) NULL,
	[khtype] [varchar](25) NULL,
	[score] [float] NULL,
	[xueshiall] [int] NULL,
	[xueshijiangshou] [int] NULL,
	[xueshishiyan] [int] NULL,
	[major] [varchar](50) NULL,
	[grade] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_coursetable]    Script Date: 2019/11/29 17:49:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_coursetable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[taskid] [int] NULL,
	[weekdays] [varchar](5) NULL,
	[sections] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_coursetask]    Script Date: 2019/11/29 17:49:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_coursetask](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[xuhao] [varchar](25) NULL,
	[courseid] [varchar](25) NULL,
	[major] [varchar](50) NULL,
	[grade] [varchar](25) NULL,
	[coursename] [varchar](50) NULL,
	[coursexingzhi] [varchar](25) NULL,
	[xueshiall] [int] NULL,
	[xueshijiangshou] [int] NULL,
	[xueshishiyan] [int] NULL,
	[xueshiallz] [int] NULL,
	[xueshijiangshouz] [int] NULL,
	[xueshishiyanz] [int] NULL,
	[zhouci] [varchar](25) NULL,
	[khtype] [varchar](25) NULL,
	[courserongliang] [int] NULL,
	[teachidz] [varchar](25) NULL,
	[teachidf] [varchar](25) NULL,
	[teachids] [varchar](25) NULL,
	[dianjiao] [varchar](10) NULL,
	[shuangyu] [varchar](10) NULL,
	[remark] [text] NULL,
	[classidz] [varchar](25) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_feedback]    Script Date: 2019/11/29 17:49:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[table] [varchar](50) NULL,
	[type] [varchar](25) NULL,
	[content] [varchar](300) NULL,
	[TorS] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_major]    Script Date: 2019/11/29 17:49:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_major](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[remark] [text] NULL,
	[nums] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_student]    Script Date: 2019/11/29 17:49:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stuid] [varchar](25) NULL,
	[stuname] [varchar](25) NULL,
	[major] [varchar](50) NULL,
	[grade] [varchar](25) NULL,
	[stupwd] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_taboo]    Script Date: 2019/11/29 17:49:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_taboo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[weekdays] [varchar](5) NULL,
	[sections] [varchar](5) NULL,
	[weeksstart] [varchar](5) NULL,
	[weeksend] [varchar](5) NULL,
	[tabootype] [varchar](1) NULL,
	[teachid] [varchar](25) NULL,
	[shenhe] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_teacher]    Script Date: 2019/11/29 17:49:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_teacher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[teachid] [varchar](25) NULL,
	[name] [varchar](25) NULL,
	[zhicheng] [varchar](25) NULL,
	[xueli] [varchar](25) NULL,
	[pwd] [varchar](25) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[stucourse] ON 

INSERT [dbo].[stucourse] ([id], [stuid], [stuname], [grade], [weekda], [section], [coursename], [zhouci], [dianjiao], [major], [shuangyu]) VALUES (1, N'2017001', N'秦傲明', N'2017', N'4', N'4', N'C语言程序设计', N'1-16', N'否', N'软件工程', N'否')
INSERT [dbo].[stucourse] ([id], [stuid], [stuname], [grade], [weekda], [section], [coursename], [zhouci], [dianjiao], [major], [shuangyu]) VALUES (2, N'2017001', N'秦傲明', N'2017', N'1', N'2', N'软件设计模式', N'1-16', N'否', N'软件工程', N'否')
INSERT [dbo].[stucourse] ([id], [stuid], [stuname], [grade], [weekda], [section], [coursename], [zhouci], [dianjiao], [major], [shuangyu]) VALUES (4, N'2017001', N'秦傲明', N'2017', N'5', N'4', N'计算机系统基础', N'1-9', N'否', N'软件工程', N'否')
SET IDENTITY_INSERT [dbo].[stucourse] OFF
SET IDENTITY_INSERT [dbo].[t_admin] ON 

INSERT [dbo].[t_admin] ([id], [username], [userpwd]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[t_admin] OFF
INSERT [dbo].[t_class] ([classid], [stuid], [classaddr]) VALUES (N'1701', N'2017001', N'明理楼b103')
INSERT [dbo].[t_class] ([classid], [stuid], [classaddr]) VALUES (N'1701', N'2017002', N'明理楼b103')
INSERT [dbo].[t_class] ([classid], [stuid], [classaddr]) VALUES (N'1701', N'2017003', N'明理楼b103')
INSERT [dbo].[t_class] ([classid], [stuid], [classaddr]) VALUES (N'1701', N'2017004', N'明理楼b103')
SET IDENTITY_INSERT [dbo].[t_class1] ON 

INSERT [dbo].[t_class1] ([id], [classid], [stuid], [classaddr]) VALUES (1, N'1701', N'2017001', N'明理楼B102')
INSERT [dbo].[t_class1] ([id], [classid], [stuid], [classaddr]) VALUES (2, N'1701', N'2017002', N'明理楼B102')
INSERT [dbo].[t_class1] ([id], [classid], [stuid], [classaddr]) VALUES (3, N'1701', N'2017003', N'明理楼B102')
INSERT [dbo].[t_class1] ([id], [classid], [stuid], [classaddr]) VALUES (4, N'1701', N'2017004', N'明理楼B102')
INSERT [dbo].[t_class1] ([id], [classid], [stuid], [classaddr]) VALUES (5, N'1701', N'2017005', N'明理楼B102')
INSERT [dbo].[t_class1] ([id], [classid], [stuid], [classaddr]) VALUES (6, N'1702', N'2017001', N'明理楼B103')
INSERT [dbo].[t_class1] ([id], [classid], [stuid], [classaddr]) VALUES (7, N'1702', N'2017002', N'明理楼B103')
INSERT [dbo].[t_class1] ([id], [classid], [stuid], [classaddr]) VALUES (8, N'1703', N'2016001', N'明理楼B205')
INSERT [dbo].[t_class1] ([id], [classid], [stuid], [classaddr]) VALUES (9, N'1704', N'2018001', N'思学楼B210')
INSERT [dbo].[t_class1] ([id], [classid], [stuid], [classaddr]) VALUES (10, N'1705', N'2019001', N'明辨楼B110')
SET IDENTITY_INSERT [dbo].[t_class1] OFF
SET IDENTITY_INSERT [dbo].[t_courseplan] ON 

INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (1, N'33333333301', N'就业指导', N'考查', 1.5, 24, 24, 0, N'海洋工程与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (2, N'33333333302', N'社会实践', N'考查', 0.5, 8, 0, 0, N'海洋工程与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (3, N'33333333303', N'液体力学', N'考查', 3, 48, 0, 0, N'海洋工程与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (4, N'33333333304', N'微机原理与接口技术', N'考查', 3, 48, 0, 0, N'海洋工程与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (5, N'33333333305', N'自动控制原理', N'考试', 3, 48, 42, 6, N'海洋工程与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (6, N'33333333306', N'嵌入式系统', N'考查', 2, 32, 32, 0, N'海洋工程与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (7, N'33333333307', N'水声学原理', N'考查', 2, 32, 32, 0, N'海洋工程与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (8, N'33333333308', N'海洋调查方法', N'考查', 2, 32, 32, 0, N'海洋工程与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (9, N'33333333309', N'水下机器人设计', N'考查', 2, 32, 16, 16, N'海洋工程与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (10, N'33333333310', N'大学英语2', N'考查', 2, 32, 26, 6, N'海洋工程与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (11, N'33333333311', N'思想道德修养与法律基础', N'考查', 2, 32, 32, 0, N'海洋工程与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (12, N'33333333312', N'体育2', N'考查', 2, 32, 26, 6, N'海洋工程与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (13, N'33333333313', N'大学物理A1', N'考查', 2, 32, 28, 4, N'海洋工程与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (14, N'33333333314', N'高等数学A2', N'考查', 2, 32, 16, 16, N'海洋工程与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (15, N'33333333315', N'线性代数B', N'考查', 2, 32, 32, 0, N'海洋工程与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (16, N'33333333316', N'通信原理', N'考查', 2, 32, 32, 0, N'海洋工程与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (17, N'33333333317', N'海洋机电控制', N'考查', 2, 32, 32, 0, N'海洋工程与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (18, N'33333333318', N'海洋能技术', N'考查', 2, 32, 28, 4, N'海洋工程与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (19, N'33333333319', N'海洋光学技术基础', N'考查', 2, 32, 32, 0, N'海洋工程与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (20, N'33333333320', N'声呐技术', N'考查', 2, 32, 16, 16, N'海洋工程与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (21, N'33333333359', N'形势与政策', N'考查', 1.5, 24, 24, 0, N'海洋工程与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (22, N'33333333360', N'体育2', N'考查', 0.5, 8, 0, 0, N'海洋工程与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (23, N'33333333361', N'物理海洋学基础', N'考查', 3, 48, 0, 0, N'海洋工程与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (24, N'33333333362', N'海洋探测遥感技术', N'考查', 3, 48, 0, 0, N'海洋工程与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (25, N'33333333363', N'海洋工程建模基础', N'考试', 3, 48, 42, 6, N'海洋工程与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (26, N'33333333364', N'海洋机电控制', N'考查', 2, 32, 32, 0, N'海洋工程与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (27, N'33333333365', N'海洋工程设计', N'考查', 2, 32, 32, 0, N'海洋工程与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (28, N'33333333366', N'数字信号处理', N'考查', 2, 32, 32, 0, N'海洋工程与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (29, N'33333333367', N'海洋环境与全球气候变化', N'考查', 2, 32, 16, 16, N'海洋工程与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (30, N'33333333368', N'大学英语3', N'考查', 2, 32, 26, 6, N'海洋工程与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (31, N'33333333369', N'毛泽东概率论', N'考查', 2, 32, 32, 0, N'海洋工程与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (32, N'33333333370', N'体育3', N'考查', 2, 32, 26, 6, N'海洋工程与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (33, N'33333333371', N'大学物理B', N'考查', 2, 32, 28, 4, N'海洋工程与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (34, N'33333333372', N'高等数学B', N'考查', 2, 32, 16, 16, N'海洋工程与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (35, N'33333333373', N'线性代数A', N'考查', 2, 32, 32, 0, N'海洋工程与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (36, N'33333333374', N'国际航运法', N'考查', 2, 32, 32, 0, N'海洋工程与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (37, N'33333333375', N'海洋与人文', N'考查', 2, 32, 32, 0, N'海洋工程与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (38, N'33333333376', N'海洋生态经济学', N'考查', 2, 32, 28, 4, N'海洋工程与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (39, N'33333333377', N'国际海洋物流概论', N'考查', 2, 32, 32, 0, N'海洋工程与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (40, N'33333333378', N'海洋管理概论', N'考查', 2, 32, 16, 16, N'海洋工程与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (41, N'000000000043', N'就业指导', N'考查', 1.5, 24, 24, 0, N'计算机科学与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (42, N'000000000044', N'人工智能', N'考查', 0.5, 8, 0, 0, N'计算机科学与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (43, N'000000000045', N'形势与政策3', N'考查', 3, 48, 0, 0, N'计算机科学与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (44, N'000000000046', N'科研实践I', N'考查', 3, 48, 0, 0, N'计算机科学与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (45, N'000000000047', N'企业实习', N'考试', 3, 48, 42, 6, N'计算机科学与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (46, N'000000000048', N'中间件技术', N'考查', 2, 32, 32, 0, N'计算机科学与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (47, N'000000000049', N'自然语言处理', N'考查', 2, 32, 32, 0, N'计算机科学与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (48, N'000000000050', N'数值分析', N'考查', 2, 32, 32, 0, N'计算机科学与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (49, N'000000000051', N'大数据储存技术', N'考查', 2, 32, 16, 16, N'计算机科学与技术', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (50, N'000000000052', N'软件工程基础', N'考查', 2, 32, 26, 6, N'计算机科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (51, N'000000000053', N'形势与政策3', N'考查', 2, 32, 32, 0, N'计算机科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (52, N'000000000054', N'计算机图形学', N'考查', 2, 32, 26, 6, N'计算机科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (53, N'000000000055', N'操作系统', N'考查', 2, 32, 28, 4, N'计算机科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (54, N'000000000056', N'数值分析', N'考查', 2, 32, 16, 16, N'计算机科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (55, N'000000000057', N'面向信息技术的沟通技巧', N'考查', 2, 32, 32, 0, N'计算机科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (56, N'000000000058', N'高级数据结构与算法分析', N'考查', 2, 32, 32, 0, N'计算机科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (57, N'000000000059', N'图像信息处理', N'考查', 2, 32, 32, 0, N'计算机科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (58, N'000000000060', N'移动平台开发技术', N'考查', 2, 32, 28, 4, N'计算机科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (59, N'000000000061', N'面向信息技术的沟通技巧', N'考查', 2, 32, 32, 0, N'计算机科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (60, N'000000000062', N'计算机体系结构', N'考查', 2, 32, 16, 16, N'计算机科学与技术', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (61, N'000000000053', N'大学英语2', N'考查', 2, 32, 26, 6, N'计算机科学与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (62, N'000000000054', N'形势与政策2', N'考查', 2, 32, 32, 0, N'计算机科学与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (63, N'000000000055', N'体育2', N'考查', 2, 32, 26, 0, N'计算机科学与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (64, N'000000000056', N'大学物理A2', N'考查', 2, 32, 28, 0, N'计算机科学与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (65, N'000000000057', N'数字逻辑设计', N'考查', 2, 32, 16, 0, N'计算机科学与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (66, N'000000000058', N'线性代数B', N'考查', 2, 32, 32, 6, N'计算机科学与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (67, N'000000000059', N'数据结构', N'考查', 2, 32, 32, 0, N'计算机科学与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (68, N'000000000060', N'概率论与数理统计', N'考查', 2, 32, 32, 0, N'计算机科学与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (69, N'000000000061', N'数据库系统与基础', N'考查', 2, 32, 28, 4, N'计算机科学与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (70, N'000000000062', N'计算机网络基础', N'考查', 2, 32, 32, 0, N'计算机科学与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (71, N'000000000063', N'信息安全原理', N'考查', 2, 32, 16, 16, N'计算机科学与技术', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (72, N'000000000064', N'大学英语1', N'考查', 2, 32, 26, 6, N'计算机科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (73, N'000000000065', N'思想道德修养与法律基础', N'考查', 2, 32, 32, 0, N'计算机科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (74, N'000000000066', N'体育1', N'考查', 2, 32, 26, 6, N'计算机科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (75, N'000000000067', N'大学物理A1', N'考查', 2, 32, 28, 4, N'计算机科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (76, N'000000000068', N'高等数学A1', N'考查', 2, 32, 16, 16, N'计算机科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (77, N'000000000069', N'线性代数A', N'考查', 2, 32, 32, 0, N'计算机科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (78, N'000000000070', N'C程序设计基础', N'考查', 2, 32, 32, 0, N'计算机科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (79, N'000000000071', N'社会实践', N'考查', 2, 32, 32, 0, N'计算机科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (80, N'000000000072', N'程序设计专题', N'考查', 2, 32, 28, 0, N'计算机科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (81, N'000000000073', N'离散数学', N'考查', 2, 32, 32, 6, N'计算机科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (82, N'000000000074', N'计算机系统概论', N'考查', 2, 32, 16, 16, N'计算机科学与技术', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (83, N'000000000001', N'就业指导', N'考查', 1.5, 24, 24, 0, N'软件工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (84, N'000000000002', N'数据挖掘技术', N'考查', 0.5, 8, 0, 0, N'软件工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (85, N'000000000003', N'形势与政策3', N'考查', 3, 48, 0, 0, N'软件工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (86, N'000000000004', N'生产实习', N'考查', 3, 48, 0, 0, N'软件工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (87, N'000000000005', N'企业实习', N'考试', 3, 48, 42, 6, N'软件工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (88, N'000000000006', N'中间件技术', N'考查', 2, 32, 32, 0, N'软件工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (89, N'000000000007', N'大规模信息开发试验', N'考查', 2, 32, 32, 0, N'软件工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (90, N'000000000008', N'数值分析', N'考查', 2, 32, 32, 0, N'软件工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (91, N'000000000009', N'大数据储存技术', N'考查', 2, 32, 16, 16, N'软件工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (92, N'000000000010', N'软件工程基础', N'考查', 2, 32, 26, 6, N'软件工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (93, N'000000000011', N'形势与政策3', N'考查', 2, 32, 32, 0, N'软件工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (94, N'000000000012', N'项目实训', N'考查', 2, 32, 26, 6, N'软件工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (95, N'000000000013', N'操作系统', N'考查', 2, 32, 28, 4, N'软件工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (96, N'000000000014', N'面向对象程序设计', N'考查', 2, 32, 16, 16, N'软件工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (97, N'000000000015', N'面向信息技术的沟通技巧', N'考查', 2, 32, 32, 0, N'软件工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (98, N'000000000016', N'高级数据结构与算法分析', N'考查', 2, 32, 32, 0, N'软件工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (99, N'000000000017', N'软件需求工程', N'考查', 2, 32, 32, 0, N'软件工程', N'2017')
GO
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (100, N'000000000018', N'移动平台开发技术', N'考查', 2, 32, 28, 4, N'软件工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (101, N'000000000019', N'数据逻辑设计', N'考查', 2, 32, 32, 0, N'软件工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (102, N'000000000020', N'计算机体系结构', N'考查', 2, 32, 16, 16, N'软件工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (103, N'000000000021', N'大学英语2', N'考查', 2, 32, 26, 6, N'软件工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (104, N'000000000022', N'形势与政策2', N'考查', 2, 32, 32, 0, N'软件工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (105, N'000000000023', N'体育2', N'考查', 2, 32, 26, 6, N'软件工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (106, N'000000000024', N'大学物理A2', N'考查', 2, 32, 28, 4, N'软件工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (107, N'000000000025', N'高等数学A2', N'考查', 2, 32, 16, 16, N'软件工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (108, N'000000000026', N'线性代数B', N'考查', 2, 32, 32, 0, N'软件工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (109, N'000000000027', N'数据结构', N'考查', 2, 32, 32, 0, N'软件工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (110, N'000000000028', N'JAVA应用技术', N'考查', 2, 32, 32, 0, N'软件工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (111, N'000000000029', N'数据库系统与基础', N'考查', 2, 32, 28, 4, N'软件工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (112, N'000000000030', N'计算机网络基础', N'考查', 2, 32, 32, 0, N'软件工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (113, N'000000000031', N'信息安全原理', N'考查', 2, 32, 16, 16, N'软件工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (114, N'000000000032', N'大学英语1', N'考查', 2, 32, 26, 6, N'软件工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (115, N'000000000033', N'思想道德修养与法律基础', N'考查', 2, 32, 32, 0, N'软件工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (116, N'000000000034', N'体育1', N'考查', 2, 32, 26, 6, N'软件工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (117, N'000000000035', N'大学物理A1', N'考查', 2, 32, 28, 4, N'软件工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (118, N'000000000036', N'高等数学A1', N'考查', 2, 32, 16, 16, N'软件工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (119, N'000000000037', N'线性代数A', N'考查', 2, 32, 32, 0, N'软件工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (120, N'000000000038', N'C程序设计基础', N'考查', 2, 32, 32, 0, N'软件工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (121, N'000000000039', N'社会实践', N'考查', 2, 32, 32, 0, N'软件工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (122, N'000000000040', N'程序设计专题', N'考查', 2, 32, 28, 4, N'软件工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (123, N'000000000041', N'离散数学', N'考查', 2, 32, 32, 0, N'软件工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (124, N'000000000042', N'计算机系统概论', N'考查', 2, 32, 16, 16, N'软件工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (125, N'33333333379', N'就业指导', N'考查', 1.5, 24, 24, 0, N'生物工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (126, N'33333333380', N'社会实践', N'考查', 0.5, 8, 0, 0, N'生物工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (127, N'33333333381', N'工业微生物学', N'考查', 3, 48, 0, 0, N'生物工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (128, N'33333333382', N'生产实习', N'考查', 3, 48, 0, 0, N'生物工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (129, N'33333333383', N'酶工程', N'考试', 3, 48, 42, 6, N'生物工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (130, N'33333333384', N'代谢工程', N'考查', 2, 32, 32, 0, N'生物工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (131, N'33333333385', N'生化生产工艺学', N'考查', 2, 32, 32, 0, N'生物工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (132, N'33333333386', N'生物制药技术', N'考查', 2, 32, 32, 0, N'生物工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (133, N'33333333387', N'合成生物学概论', N'考查', 2, 32, 16, 16, N'生物工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (134, N'33333333388', N'大学英语2', N'考查', 2, 32, 26, 6, N'生物工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (135, N'33333333389', N'思想道德修养与法律基础', N'考查', 2, 32, 32, 0, N'生物工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (136, N'33333333390', N'体育2', N'考查', 2, 32, 26, 6, N'生物工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (137, N'33333333391', N'大学物理A1', N'考查', 2, 32, 28, 4, N'生物工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (138, N'33333333392', N'高等数学A2', N'考查', 2, 32, 16, 16, N'生物工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (139, N'33333333393', N'线性代数B', N'考查', 2, 32, 32, 0, N'生物工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (140, N'33333333394', N'化工原理', N'考查', 2, 32, 32, 0, N'生物工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (141, N'33333333395', N'应用分子生物学与基因工程', N'考查', 2, 32, 32, 0, N'生物工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (142, N'33333333396', N'工业微生物实验', N'考查', 2, 32, 28, 4, N'生物工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (143, N'33333333397', N'生物制药技术', N'考查', 2, 32, 32, 0, N'生物工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (144, N'33333333398', N'生物有机化学', N'考查', 2, 32, 16, 16, N'生物工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (145, N'33333333399', N'大学英语3', N'考查', 2, 32, 26, 6, N'生物工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (146, N'33333333401', N'马克思主义原理', N'考查', 2, 32, 32, 0, N'生物工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (147, N'33333333402', N'体育3', N'考查', 2, 32, 26, 6, N'生物工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (148, N'33333333403', N'大学物理A2', N'考查', 2, 32, 28, 4, N'生物工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (149, N'33333333404', N'高等数学A3', N'考查', 2, 32, 16, 16, N'生物工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (150, N'33333333405', N'线性代数A', N'考查', 2, 32, 32, 0, N'生物工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (151, N'33333333406', N'蛋白质工程', N'考查', 2, 32, 32, 0, N'生物工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (152, N'33333333407', N'化学工程国际前沿', N'考查', 2, 32, 32, 0, N'生物工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (153, N'33333333408', N'生物有机化学', N'考查', 2, 32, 28, 4, N'生物工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (154, N'33333333409', N'界面和胶体和科学导论', N'考查', 2, 32, 32, 0, N'生物工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (155, N'33333333410', N'工业微生物学2', N'考查', 2, 32, 16, 16, N'生物工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (156, N'33333333411', N'大学英语4', N'考查', 2, 32, 26, 6, N'生物工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (157, N'33333333412', N'毛泽东思想概论', N'考查', 2, 32, 32, 0, N'生物工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (158, N'33333333413', N'体育4', N'考查', 2, 32, 26, 6, N'生物工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (159, N'33333333414', N'大学物理B', N'考查', 2, 32, 28, 4, N'生物工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (160, N'33333333415', N'高等数学B', N'考查', 2, 32, 16, 16, N'生物工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (161, N'33333333416', N'生物无机化学', N'考查', 2, 32, 32, 0, N'生物工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (162, N'33333333417', N'生化生产工艺学B', N'考查', 2, 32, 32, 0, N'生物工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (163, N'33333333418', N'社会实践', N'考查', 2, 32, 32, 0, N'生物工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (164, N'33333333419', N'生产实习', N'考查', 2, 32, 28, 4, N'生物工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (165, N'33333333420', N'专业技能训练', N'考查', 2, 32, 32, 0, N'生物工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (166, N'33333333421', N'合成生物学概论', N'考查', 2, 32, 16, 16, N'生物工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (167, N'33333333321', N'就业指导', N'考查', 1.5, 24, 24, 0, N'信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (168, N'33333333322', N'社会实践', N'考查', 0.5, 8, 0, 0, N'信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (169, N'33333333323', N'微积分（甲）', N'考查', 3, 48, 0, 0, N'信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (170, N'33333333324', N'线性代数', N'考查', 3, 48, 0, 0, N'信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (171, N'33333333325', N'大学物理A2', N'考试', 3, 48, 42, 6, N'信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (172, N'33333333326', N'常微分方程', N'考查', 2, 32, 32, 0, N'信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (173, N'33333333327', N'数字系统设计', N'考查', 2, 32, 32, 0, N'信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (174, N'33333333328', N'工程图学', N'考查', 2, 32, 32, 0, N'信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (175, N'33333333329', N'电子电路基础', N'考查', 2, 32, 16, 16, N'信息工程', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (176, N'33333333330', N'大学英语2', N'考查', 2, 32, 26, 6, N'信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (177, N'33333333331', N'思想道德修养与法律基础', N'考查', 2, 32, 32, 0, N'信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (178, N'33333333332', N'体育2', N'考查', 2, 32, 26, 6, N'信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (179, N'33333333333', N'大学物理A1', N'考查', 2, 32, 28, 4, N'信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (180, N'33333333334', N'高等数学A2', N'考查', 2, 32, 16, 16, N'信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (181, N'33333333335', N'线性代数B', N'考查', 2, 32, 32, 0, N'信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (182, N'33333333336', N'电路与模拟电子技术', N'考查', 2, 32, 32, 0, N'信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (183, N'33333333337', N'社会实践', N'考查', 2, 32, 32, 0, N'信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (184, N'33333333338', N'物理光学', N'考查', 2, 32, 28, 4, N'信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (185, N'33333333339', N'电路分析基础实验', N'考查', 2, 32, 32, 0, N'信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (186, N'33333333340', N'电路分析基础', N'考查', 2, 32, 16, 16, N'信息工程', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (187, N'33333333341', N'形势与政策1', N'考查', 1.5, 24, 24, 0, N'信息工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (188, N'33333333342', N'体育2', N'考查', 0.5, 8, 0, 0, N'信息工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (189, N'33333333343', N'大学物理实验', N'考查', 3, 48, 0, 0, N'信息工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (190, N'33333333344', N'生产实习', N'考查', 3, 48, 0, 0, N'信息工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (191, N'33333333345', N'C程序设计基础', N'考试', 3, 48, 42, 6, N'信息工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (192, N'33333333346', N'社会实践', N'考查', 2, 32, 32, 0, N'信息工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (193, N'33333333347', N'微积分（乙）', N'考查', 2, 32, 32, 0, N'信息工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (194, N'33333333348', N'工程训练', N'考查', 2, 32, 32, 0, N'信息工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (195, N'33333333349', N'随机过程', N'考查', 2, 32, 16, 16, N'信息工程', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (196, N'33333333350', N'形势与政策2', N'考查', 1.5, 24, 24, 0, N'信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (197, N'33333333351', N'社会实践2', N'考查', 0.5, 8, 0, 0, N'信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (198, N'33333333352', N'数据分析与算法设计', N'考查', 3, 48, 0, 0, N'信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (199, N'33333333353', N'射频电路与系统', N'考查', 3, 48, 0, 0, N'信息工程', N'2019')
GO
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (200, N'33333333354', N'网络基础', N'考试', 3, 48, 42, 6, N'信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (201, N'33333333355', N'计算机组成与设计', N'考查', 2, 32, 32, 0, N'信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (202, N'33333333356', N'数字图像处理', N'考查', 2, 32, 32, 0, N'信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (203, N'33333333357', N'人工智能', N'考查', 2, 32, 32, 0, N'信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (204, N'33333333358', N'物联网系统设计', N'考查', 2, 32, 16, 16, N'信息工程', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (205, N'000000000075', N'就业指导', N'考查', 1.5, 24, 24, 0, N'自动化', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (206, N'000000000076', N'机器人建模与控制', N'考查', 0.5, 8, 0, 0, N'自动化', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (207, N'000000000077', N'形势与政策3', N'考查', 3, 48, 0, 0, N'自动化', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (208, N'000000000078', N'科研实践I', N'考查', 3, 48, 0, 0, N'自动化', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (209, N'000000000079', N'企业实习', N'考试', 3, 48, 42, 6, N'自动化', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (210, N'000000000080', N'先进控制基础', N'考查', 2, 32, 32, 0, N'自动化', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (211, N'000000000081', N'智能供配电技术', N'考查', 2, 32, 32, 0, N'自动化', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (212, N'000000000082', N'数值计算方法', N'考查', 2, 32, 32, 0, N'自动化', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (213, N'000000000083', N'深度学习', N'考查', 2, 32, 16, 16, N'自动化', N'2016')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (214, N'000000000084', N'专业英语', N'考查', 2, 32, 26, 6, N'自动化', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (215, N'000000000085', N'形势与政策3', N'考查', 2, 32, 32, 0, N'自动化', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (216, N'000000000086', N'生物传感器技术', N'考查', 2, 32, 26, 6, N'自动化', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (217, N'000000000087', N'嵌入式系统', N'考查', 2, 32, 28, 4, N'自动化', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (218, N'000000000088', N'传感与检测', N'考查', 2, 32, 16, 16, N'自动化', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (219, N'000000000089', N'数据结构与算法分析', N'考查', 2, 32, 32, 0, N'自动化', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (220, N'000000000090', N'运筹学', N'考查', 2, 32, 32, 0, N'自动化', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (221, N'000000000091', N'DPS系统设计', N'考查', 2, 32, 32, 0, N'自动化', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (222, N'000000000092', N'机器人导论', N'考查', 2, 32, 28, 4, N'自动化', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (223, N'000000000093', N'智能控制技术', N'考查', 2, 32, 32, 0, N'自动化', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (224, N'000000000094', N'电气控制技术', N'考查', 2, 32, 16, 16, N'自动化', N'2017')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (225, N'000000000095', N'大学英语2', N'考查', 2, 32, 26, 6, N'自动化', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (226, N'000000000096', N'形势与政策2', N'考查', 2, 32, 32, 0, N'自动化', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (227, N'000000000097', N'体育2', N'考查', 2, 32, 26, 0, N'自动化', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (228, N'000000000098', N'大学物理A2', N'考查', 2, 32, 28, 0, N'自动化', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (229, N'000000000099', N'过程控制', N'考查', 2, 32, 16, 0, N'自动化', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (230, N'000000000100', N'线性代数B', N'考查', 2, 32, 32, 6, N'自动化', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (231, N'000000000101', N'自动控制理论', N'考查', 2, 32, 32, 0, N'自动化', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (232, N'000000000102', N'概率论与数理统计', N'考查', 2, 32, 32, 0, N'自动化', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (233, N'000000000103', N'系统建模与仿真', N'考查', 2, 32, 28, 4, N'自动化', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (234, N'000000000104', N'电路与模拟电子技术', N'考查', 2, 32, 32, 0, N'自动化', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (235, N'000000000105', N'工程训练', N'考查', 2, 32, 16, 16, N'自动化', N'2018')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (236, N'000000000106', N'大学英语1', N'考查', 2, 32, 26, 6, N'自动化', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (237, N'000000000107', N'思想道德修养与法律基础', N'考查', 2, 32, 32, 0, N'自动化', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (238, N'000000000108', N'体育1', N'考查', 2, 32, 26, 6, N'自动化', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (239, N'000000000109', N'大学物理A1', N'考查', 2, 32, 28, 4, N'自动化', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (240, N'000000000110', N'高等数学A1', N'考查', 2, 32, 16, 16, N'自动化', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (241, N'000000000111', N'线性代数A', N'考查', 2, 32, 32, 0, N'自动化', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (242, N'000000000112', N'微积分', N'考查', 2, 32, 32, 0, N'自动化', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (243, N'000000000113', N'信号分析与处理', N'考查', 2, 32, 32, 0, N'自动化', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (244, N'000000000114', N'常微分方程', N'考查', 2, 32, 28, 0, N'自动化', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (245, N'000000000115', N'离散数学', N'考查', 2, 32, 32, 6, N'自动化', N'2019')
INSERT [dbo].[t_courseplan] ([id], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (246, N'000000000116', N'工程图形学', N'考查', 2, 32, 16, 16, N'自动化', N'2019')
SET IDENTITY_INSERT [dbo].[t_courseplan] OFF
SET IDENTITY_INSERT [dbo].[t_coursetable] ON 

INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (235, 6, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (236, 6, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (237, 26, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (238, 26, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (239, 27, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (240, 27, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (241, 28, N'1', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (242, 28, N'3', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (243, 29, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (244, 29, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (245, 30, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (246, 30, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (247, 31, N'1', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (248, 31, N'3', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (249, 32, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (250, 24, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (251, 24, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (252, 25, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (253, 25, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (254, 1, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (255, 1, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (256, 2, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (257, 2, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (258, 3, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (259, 3, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (260, 4, N'1', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (261, 4, N'3', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (262, 5, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (263, 5, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (264, 7, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (265, 7, N'4', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (266, 8, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (267, 9, N'2', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (268, 10, N'2', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (269, 11, N'4', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (270, 12, N'4', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (271, 13, N'4', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (272, 14, N'5', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (273, 16, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (274, 16, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (275, 17, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (276, 17, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (277, 18, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (278, 18, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (279, 19, N'1', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (280, 19, N'3', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (281, 20, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (282, 20, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (283, 21, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (284, 21, N'4', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (285, 22, N'2', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (286, 22, N'4', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (287, 23, N'2', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (288, 23, N'4', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (289, 65, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (290, 65, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (291, 66, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (292, 66, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (293, 62, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (294, 63, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (295, 63, N'3', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (296, 64, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (297, 64, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (298, 67, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (299, 67, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (300, 33, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (301, 33, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (302, 34, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (303, 34, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (304, 35, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (305, 35, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (306, 36, N'1', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (307, 36, N'3', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (308, 37, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (309, 37, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (310, 38, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (311, 38, N'4', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (312, 39, N'2', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (313, 39, N'4', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (314, 40, N'2', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (315, 40, N'4', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (316, 41, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (317, 41, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (318, 42, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (319, 42, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (320, 43, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (321, 43, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (322, 44, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (323, 44, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (324, 45, N'1', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (325, 45, N'3', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (326, 46, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (327, 46, N'4', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (328, 47, N'2', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (329, 47, N'4', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (330, 48, N'2', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (331, 48, N'4', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (332, 49, N'1', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (333, 49, N'3', N'4')
GO
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (334, 50, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (335, 50, N'4', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (336, 51, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (337, 51, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (338, 52, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (339, 52, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (340, 53, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (341, 53, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (342, 54, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (343, 54, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (344, 55, N'1', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (345, 55, N'3', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (346, 56, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (347, 56, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (348, 57, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (349, 57, N'4', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (350, 58, N'2', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (351, 58, N'4', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (352, 59, N'2', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (353, 59, N'4', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (354, 60, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (355, 60, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (356, 68, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (357, 68, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (358, 69, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (359, 69, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (360, 70, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (361, 70, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (362, 71, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (363, 71, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (364, 72, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (365, 72, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (366, 73, N'1', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (367, 73, N'3', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (368, 74, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (369, 74, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (370, 75, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (371, 75, N'4', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (372, 76, N'2', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (373, 76, N'4', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (374, 77, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (375, 77, N'4', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (376, 78, N'2', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (377, 78, N'4', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (378, 79, N'2', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (379, 79, N'4', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (380, 83, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (381, 83, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (382, 80, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (383, 80, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (384, 81, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (385, 81, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (386, 82, N'1', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (387, 82, N'3', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (388, 84, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (389, 84, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (390, 85, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (391, 85, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (392, 86, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (393, 86, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (394, 87, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (395, 87, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (396, 88, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (397, 88, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (398, 89, N'1', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (399, 89, N'3', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (400, 95, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (401, 95, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (402, 90, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (403, 90, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (404, 91, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (405, 91, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (406, 92, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (407, 92, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (408, 93, N'1', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (409, 93, N'3', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (410, 94, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (411, 94, N'4', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (412, 96, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (413, 96, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (414, 112, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (415, 112, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (416, 113, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (417, 113, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (418, 114, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (419, 114, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (420, 115, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (421, 115, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (422, 117, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (423, 117, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (424, 123, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (425, 123, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (426, 124, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (427, 124, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (428, 125, N'1', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (429, 125, N'3', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (430, 128, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (431, 128, N'4', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (432, 97, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (433, 97, N'3', N'3')
GO
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (434, 98, N'2', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (435, 98, N'4', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (436, 99, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (437, 99, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (438, 100, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (439, 100, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (440, 101, N'1', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (441, 101, N'3', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (442, 116, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (443, 116, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (444, 118, N'2', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (445, 118, N'4', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (446, 119, N'2', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (447, 119, N'4', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (448, 126, N'5', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (449, 108, N'2', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (450, 108, N'4', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (451, 109, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (452, 109, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (453, 110, N'2', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (454, 110, N'4', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (455, 111, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (456, 111, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (457, 130, N'1', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (458, 130, N'3', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (459, 102, N'1', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (460, 102, N'3', N'3')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (461, 103, N'1', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (462, 103, N'3', N'1')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (463, 104, N'1', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (464, 104, N'3', N'2')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (465, 105, N'1', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (466, 105, N'3', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (467, 107, N'2', N'4')
INSERT [dbo].[t_coursetable] ([id], [taskid], [weekdays], [sections]) VALUES (468, 107, N'4', N'4')
SET IDENTITY_INSERT [dbo].[t_coursetable] OFF
SET IDENTITY_INSERT [dbo].[t_coursetask] ON 

INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (1, N'151611161', NULL, N'海洋工程', N'2017', N'水声学原理', N'专业必修', 56, 56, 0, 4, 4, 0, N'1-14', N'考试', 90, N'10011', N'', N'', N'是', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (2, N'151611172', NULL, N'海洋工程', N'2017', N'水声学原理（外文教材）', N'专业必修', 56, 56, 0, 4, 4, 0, N'1-14', N'考试', 90, N'10012', N'', N'', N'是', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (3, N'151611183', NULL, N'海洋工程', N'2017', N'水声学原理（外文教材）', N'专业必修', 56, 56, 0, 4, 4, 0, N'1-14', N'考试', 90, N'10013', N'', N'', N'是', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (4, N'151611194', NULL, N'海洋工程', N'2017', N'水声学原理（外文教材）', N'专业必修', 56, 56, 0, 4, 4, 0, N'1-14', N'考试', 90, N'10014', N'', N'', N'是', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (5, N'151611205', NULL, N'海洋工程', N'2017', N'水声学原理（外文教材）', N'专业必修', 56, 56, 0, 4, 4, 0, N'1-14', N'考试', 90, N'10015', N'', N'', N'是', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (6, N'151611216', NULL, N'海洋工程', N'2016', N'水声学原理（外文教材）', N'专业必修', 56, 56, 0, 4, 4, 0, N'1-14', N'考试', 90, N'10015', N'', N'', N'是', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (7, N'151611227', NULL, N'海洋工程', N'2017', N'海洋能技术', N'专业必修', 56, 28, 28, 4, 4, 0, N'1-7', N'考试', 70, N'10017', N'', N'', N'是', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (8, N'151611238', NULL, N'海洋工程', N'2017', N'海洋能技术', N'专业限选', 32, 16, 16, 2, 2, 0, N'10-17', N'考试', 100, N'10018', N'', N'', N'是', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (9, N'151611249', NULL, N'海洋工程', N'2017', N'海洋能技术', N'专业限选', 32, 16, 16, 2, 2, 0, N'10-17', N'考试', 100, N'10018', N'', N'', N'是', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (10, N'151611260', NULL, N'海洋工程', N'2017', N'海洋能技术', N'专业限选', 32, 16, 16, 2, 2, 0, N'10-17', N'考试', 100, N'10012', N'', N'', N'是', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (11, N'151611271', NULL, N'海洋工程', N'2017', N'海洋能技术', N'专业限选', 32, 16, 16, 2, 2, 0, N'10-17', N'考试', 100, N'10020', N'', N'', N'是', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (12, N'151611282', NULL, N'海洋工程', N'2017', N'海洋能技术', N'专业限选', 32, 16, 16, 2, 2, 0, N'10-17', N'考试', 100, N'10020', N'', N'', N'是', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (13, N'151611293', NULL, N'海洋工程', N'2017', N'海洋能技术', N'专业限选', 32, 16, 16, 2, 2, 0, N'10-17', N'考试', 100, N'10021', N'', N'', N'是', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (14, N'151611304', NULL, N'海洋工程', N'2017', N'通信原理', N'专业限选', 32, 16, 16, 2, 2, 0, N'10-17', N'考试', 100, N'10021', N'', N'', N'是', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (15, N'151611315', NULL, N'海洋工程', N'2017', N'通信原理', N'专业限选', 32, 26, 6, 4, 4, 0, N'10-17', N'考查', 60, N'10022', N'', N'', N'是', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (16, N'151611326', NULL, N'海洋工程', N'2018', N'通信原理', N'专业必修', 64, 64, 0, 4, 4, 0, N'1-16', N'考试', 90, N'10023', N'', N'', N'', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (17, N'151611337', NULL, N'海洋工程', N'2018', N'海洋机电控制', N'专业必修', 64, 64, 0, 4, 4, 0, N'1-16', N'考试', 90, N'10024', N'', N'', N'', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (18, N'151611348', NULL, N'海洋工程', N'2018', N'声呐技术', N'专业必修', 64, 64, 0, 4, 4, 0, N'1-16', N'考试', 90, N'10025', N'', N'', N'', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (19, N'151611359', NULL, N'海洋工程', N'2018', N'声呐技术', N'专业必修', 64, 64, 0, 4, 4, 0, N'1-16', N'考试', 90, N'10026', N'', N'', N'', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (20, N'151611370', NULL, N'海洋工程', N'2018', N'声呐技术', N'专业必修', 64, 64, 0, 4, 4, 0, N'1-16', N'考试', 90, N'10027', N'', N'', N'', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (21, N'151611381', NULL, N'海洋工程', N'2018', N'海洋光学', N'专业必修', 64, 64, 0, 4, 4, 0, N'1-16', N'考试', 90, N'10028', N'', N'', N'', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (22, N'151611392', NULL, N'海洋工程', N'2018', N'海洋调查方法', N'专业必修', 64, 64, 0, 4, 4, 0, N'1-16', N'考试', 90, N'10029', N'', N'', N'', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (23, N'151611403', NULL, N'海洋工程', N'2018', N'海洋管理概论', N'专业必修', 56, 56, 0, 4, 4, 0, N'1-14', N'考试', 70, N'10030', N'', N'', N'', N'', N'', N'1705')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (24, N'151611414', NULL, N'海洋工程', N'2016', N'海洋与人文', N'专业任选', 48, 24, 24, 4, 4, 0, N'11-17', N'考查', 100, N'10031', N'', N'', N'是', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (25, N'151611425', NULL, N'海洋工程', N'2016', N'海洋与人文', N'专业任选', 48, 32, 16, 4, 4, 0, N'1-8', N'考查', 100, N'10032', N'', N'', N'是', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (26, N'151611436', NULL, N'海洋工程', N'2016', N'海洋与人文', N'专业限选', 32, 26, 6, 4, 4, 0, N'1-7', N'考试', 100, N'10033', N'', N'', N'是', N'', N'', N'1705')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (27, N'151611447', NULL, N'海洋工程', N'2016', N'海洋与人文', N'专业限选', 32, 26, 6, 4, 4, 0, N'1-7', N'考试', 100, N'10033', N'', N'', N'是', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (28, N'151611458', NULL, N'海洋工程', N'2016', N'海洋与人文', N'专业限选', 32, 32, 0, 4, 4, 0, N'1-7', N'考试', 100, N'10030', N'', N'', N'', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (29, N'151611469', NULL, N'海洋工程', N'2016', N'海洋与人文', N'专业限选', 32, 26, 6, 4, 4, 0, N'8-14', N'考试', 100, N'10027', N'', N'', N'是', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (30, N'151611480', NULL, N'海洋工程', N'2016', N'海洋与人文', N'专业限选', 32, 26, 6, 4, 4, 0, N'11-17', N'考试', 100, N'10022', N'', N'', N'是', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (31, N'151611491', NULL, N'海洋工程', N'2016', N'国际航运法', N'专业限选', 32, 26, 6, 4, 4, 0, N'11-17', N'考试', 100, N'10022', N'', N'', N'是', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (32, N'151611502', NULL, N'海洋工程', N'2016', N'操作系统原理及应用', N'专业限选', 32, 16, 16, 2, 2, 0, N'9-16', N'考试', 100, N'10039', N'', N'', N'是', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (33, N'16261188', NULL, N'计算机科学与技术', N'2017', N'计算机通信与网络', N'专业必修', 56, 40, 16, 4, 4, 0, N'2-15', N'考试', 70, N'10077', N'10103', N'10128', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (34, N'16261189', NULL, N'计算机科学与技术', N'2017', N'计算机网络A（外文教材）', N'专业必修', 56, 48, 8, 4, 4, 0, N'2-15', N'考试', 80, N'10078', N'10078', N'10128', N'是', N'是', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (35, N'16261190', NULL, N'计算机科学与技术', N'2017', N'计算机网络A（外文教材）', N'专业必修', 56, 48, 8, 4, 4, 0, N'2-15', N'考试', 80, N'10079', N'10105', N'10128', N'是', N'是', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (36, N'16261191', NULL, N'计算机科学与技术', N'2017', N'计算机网络A（外文教材）', N'专业必修', 56, 48, 8, 4, 4, 0, N'2-15', N'考试', 80, N'10080', N'10106', N'10128', N'是', N'是', N'', N'1705')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (37, N'16261192', NULL, N'计算机科学与技术', N'2017', N'计算机网络A（外文教材）', N'专业必修', 56, 48, 8, 4, 4, 0, N'2-15', N'考试', 80, N'10081', N'10107', N'10128', N'是', N'是', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (38, N'16261194', NULL, N'计算机科学与技术', N'2017', N'C语言程序设计', N'专业必修', 56, 56, 0, 4, 4, 0, N'2-15', N'考试', 90, N'10082', N'', N'', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (39, N'16261195', NULL, N'计算机科学与技术', N'2017', N'C语言程序设计', N'专业必修', 56, 56, 0, 4, 4, 0, N'2-15', N'考试', 90, N'10082', N'', N'', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (40, N'16261196', NULL, N'计算机科学与技术', N'2017', N'C语言程序设计', N'专业必修', 56, 56, 0, 4, 4, 0, N'2-15', N'考试', 90, N'10083', N'', N'', N'是', N'否', N'下午开课', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (41, N'16261197', NULL, N'计算机科学与技术', N'2018', N'C语言程序设计', N'专业必修', 56, 56, 0, 4, 4, 0, N'2-15', N'考试', 90, N'10084', N'10084', N'', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (42, N'16261198', NULL, N'计算机科学与技术', N'2018', N'C语言程序设计', N'专业必修', 56, 56, 0, 4, 4, 0, N'2-15', N'考试', 90, N'10085', N'10085', N'', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (43, N'16261199', NULL, N'计算机科学与技术', N'2018', N'C语言程序设计', N'专业必修', 56, 56, 0, 4, 4, 0, N'2-15', N'考试', 90, N'10086', N'10086', N'', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (44, N'16261200', NULL, N'计算机科学与技术', N'2018', N'C语言程序设计', N'专业必修', 56, 56, 0, 4, 4, 0, N'2-15', N'考试', 90, N'10086', N'10086', N'', N'是', N'否', N'', N'1701')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (45, N'16261201', NULL, N'计算机科学与技术', N'2018', N'数据结构', N'专业必修', 32, 26, 6, 4, 4, 0, N'1-8', N'考试', 90, N'10079', N'', N'10128', N'是', N'否', N'', N'1701')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (46, N'16261202', NULL, N'计算机科学与技术', N'2018', N'数据结构', N'专业必修', 32, 26, 6, 4, 4, 0, N'1-8', N'考试', 90, N'10079', N'', N'10128', N'是', N'否', N'', N'1701')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (47, N'16261203', NULL, N'计算机科学与技术', N'2018', N'数据结构与算法分析', N'专业必修', 56, 44, 12, 4, 4, 0, N'1-14', N'考试', 50, N'10082', N'', N'10128', N'是', N'否', N'', N'1702')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (48, N'16261204', NULL, N'计算机科学与技术', N'2018', N'WINDOWS程序设计', N'专业必修', 32, 26, 6, 4, 4, 0, N'1-8', N'考查', 60, N'10084', N'10084', N'10128', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (49, N'16261205', NULL, N'计算机科学与技术', N'2018', N'网络对抗技术', N'专业必修', 48, 32, 16, 4, 4, 0, N'9-16', N'考查', 60, N'10090', N'10090', N'10090', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (50, N'16261206', NULL, N'计算机科学与技术', N'2018', N'通信对抗技术', N'专业必修', 32, 26, 6, 4, 4, 0, N'9-16', N'考查', 60, N'10091', N'10092', N'10092', N'是', N'否', N'', N'1702')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (51, N'16261207', NULL, N'计算机科学与技术', N'2019', N'传感器原理与技术', N'专业限选', 32, 26, 6, 4, 4, 0, N'1-8', N'考查', 100, N'10092', N'10092', N'10092', N'是', N'否', N'', N'1703')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (52, N'16261208', NULL, N'计算机科学与技术', N'2019', N'信息编码与加密', N'专业限选', 32, 24, 8, 4, 4, 0, N'9-16', N'考查', 50, N'10093', N'10117', N'10092', N'是', N'否', N'和计算机网络课排在一个上午', N'1703')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (53, N'16261209', NULL, N'计算机科学与技术', N'2019', N'密码算法与设计（双语）', N'专业限选', 32, 24, 8, 4, 4, 0, N'9-16', N'考查', 60, N'10093', N'10117', N'10128', N'是', N'是', N'', N'1704')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (54, N'16261210', NULL, N'计算机科学与技术', N'2019', N'数据库原理及应用', N'专业限选', 32, 24, 8, 4, 4, 0, N'1-8', N'考试', 50, N'10078', N'10082', N'10128', N'是', N'否', N'', N'1704')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (55, N'16261211', NULL, N'计算机科学与技术', N'2019', N'软件技术基础', N'专业限选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 90, N'10078', N'10082', N'10128', N'是', N'否', N'', N'1704')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (56, N'16261212', NULL, N'计算机科学与技术', N'2019', N'软件技术基础', N'专业限选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 90, N'10078', N'10082', N'10128', N'是', N'否', N'', N'1702')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (57, N'16261213', NULL, N'计算机科学与技术', N'2019', N'软件技术基础', N'专业限选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 90, N'10085', N'10085', N'10128', N'是', N'否', N'', N'1702')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (58, N'16261214', NULL, N'计算机科学与技术', N'2019', N'软件技术基础', N'专业任选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 90, N'10085', N'10085', N'10128', N'是', N'否', N'', N'1704')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (59, N'16261215', NULL, N'计算机科学与技术', N'2019', N'JAVA程序设计', N'专业任选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 54, N'10085', N'10085', N'10085', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (60, N'16261216', NULL, N'计算机科学与技术', N'2019', N'网络编程技术', N'专业任选', 32, 16, 16, 4, 4, 0, N'1-8', N'考查', 90, N'10080', N'10106', N'10128', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (61, N'16261217', NULL, N'计算机科学与技术', N'2019', N'网络编程技术', N'专业任选', 32, 16, 16, 4, 4, 0, N'1-8', N'考查', 90, N'10090', N'10090', N'10128', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (62, N'16261218', NULL, N'计算机科学与技术', N'2016', N'嵌入式系统', N'专业任选', 32, 16, 16, 4, 2, 0, N'1-8', N'考查', 60, N'10086', N'10086', N'10086', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (63, N'16261219', NULL, N'计算机科学与技术', N'2016', N'操作系统原理及应用', N'专业任选', 48, 32, 16, 6, 4, 0, N'2-13', N'考试', 90, N'10086', N'10086', N'10086', N'是', N'是', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (64, N'16261220', NULL, N'计算机科学与技术', N'2016', N'Andriod应用与开发', N'专业任选', 32, 20, 12, 6, 4, 0, N'9-16', N'考查', 60, N'10086', N'10086', N'10086', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (65, N'16261221', NULL, N'计算机科学与技术', N'2016', N'软件技术基础', N'专业限选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 90, N'10078', N'10082', N'10128', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (66, N'16261222', NULL, N'计算机科学与技术', N'2016', N'软件技术基础', N'专业限选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 90, N'10085', N'10085', N'10128', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (67, N'16261223', NULL, N'计算机科学与技术', N'2016', N'软件技术基础', N'专业任选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 90, N'10085', N'10085', N'10128', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (68, N'351611471', NULL, N'软件工程', N'2017', N'软件工程基础', N'专业必修', 32, 28, 4, 4, 4, 0, N'9-15', N'考试', 100, N'10040', N'', N'', N'否', N'否', N'', N'1701')
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (69, N'351611472', NULL, N'软件工程', N'2017', N'软件工程基础', N'专业必修', 32, 28, 4, 4, 4, 0, N'9-15', N'考试', 100, N'10040', N'', N'', N'否', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (70, N'351611473', NULL, N'软件工程', N'2017', N'项目实训', N'专业必修', 72, 56, 16, 4, 4, 0, N'1-16', N'考试', 100, N'10042', N'', N'', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (71, N'351611474', NULL, N'软件工程', N'2017', N'操作系统', N'专业必修', 32, 32, 0, 4, 4, 0, N'1-8', N'考试', 140, N'10043', N'', N'', N'否', N'是', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (72, N'351611475', NULL, N'软件工程', N'2017', N'操作系统', N'专业必修', 32, 32, 0, 4, 4, 0, N'1-8', N'考试', 140, N'10044', N'', N'', N'否', N'是', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (73, N'351611476', NULL, N'软件工程', N'2017', N'高级数据结构与算法分析', N'专业限选', 48, 42, 6, 4, 4, 0, N'1-12', N'考试', 140, N'10045', N'', N'', N'是', N'否', N'待确定', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (74, N'351611477', NULL, N'软件工程', N'2017', N'移动平台开发技术', N'专业限选', 48, 42, 6, 4, 4, 0, N'1-11', N'考试', 140, N'10046', N'', N'', N'否', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (75, N'351611478', NULL, N'软件工程', N'2017', N'数据逻辑设计', N'专业限选', 32, 32, 0, 4, 4, 0, N'9-19', N'考试', 100, N'10046', N'', N'', N'否', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (76, N'351611479', NULL, N'软件工程', N'2017', N'计算机体系结构', N'专业限选', 32, 26, 6, 4, 4, 0, N'9-16', N'考试', 100, N'10048', N'', N'', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (77, N'351611480', NULL, N'软件工程', N'2017', N'形势与政策3', N'专业限选', 32, 32, 0, 4, 4, 0, N'2-8', N'考试', 100, N'10049', N'', N'', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (78, N'351611481', NULL, N'软件工程', N'2017', N'面向对象程序设计', N'专业限选', 32, 32, 0, 4, 4, 0, N'1-8', N'考试', 100, N'10049', N'', N'', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (79, N'351611482', NULL, N'软件工程', N'2017', N'软件需求工程', N'专业限选', 32, 32, 0, 4, 4, 0, N'1-8', N'考试', 100, N'10050', N'', N'', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (80, N'351611483', NULL, N'软件工程', N'2018', N'形势与政策2', N'专业限选', 32, 32, 0, 4, 4, 0, N'1-8', N'考试', 100, N'10043', N'', N'', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (81, N'351611484', NULL, N'软件工程', N'2018', N'JAVA应用技术', N'专业限选', 32, 28, 4, 4, 4, 0, N'1-8', N'考试', 100, N'10052', N'', N'', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (82, N'351611485', NULL, N'软件工程', N'2018', N'数据库系统与基础', N'专业限选', 32, 32, 0, 4, 4, 0, N'1-8', N'考试', 100, N'10053', N'', N'', N'是', N'否', N'两门课排在一起，13级禁选', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (83, N'351611486', NULL, N'软件工程', N'2018', N'计算机网络基础', N'专业必修', 32, 32, 0, 4, 4, 0, N'1-8', N'考试', 60, N'10044', N'', N'', N'是', N'是', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (84, N'351611487', NULL, N'软件工程', N'2018', N'信息安全原理', N'专业限选', 32, 16, 16, 4, 4, 0, N'11-18', N'考试', 60, N'10055', N'', N'', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (85, N'151611044', NULL, N'生物工程', N'2016', N'生物制药技术', N'专业必修', 32, 16, 16, 0, 4, 0, N'1-8', N'考查', 100, N'10000', N'10099', N'10131', N'是', N'否', N'任选70（后半学期）', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (86, N'151611055', NULL, N'生物工程', N'2016', N'合成生物学概论', N'专业必修', 48, 38, 10, 0, 4, 0, N'10-17', N'考试', 100, N'10001', N'', N'10131', N'是（两用）', N'否', N'限选88（前半学期）', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (87, N'151611066', NULL, N'生物工程', N'2016', N'化工原理', N'专业必修', 32, 32, 0, 0, 4, 0, N'10-18', N'考查', 100, N'10002', N'10100', N'', N'是（两用）', N'否', N'限选88（后半学期）', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (88, N'151611077', NULL, N'生物工程', N'2016', N'应用分子生物学与基因工程', N'专业必修', 48, 42, 6, 0, 4, 0, N'9-16', N'考试', 100, N'10003', N'', N'', N'是（两用）', N'否', N'限选88（前半学期）', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (89, N'151611088', NULL, N'生物工程', N'2016', N'工业微生物实验', N'专业必修', 32, 32, 0, 0, 4, 0, N'1-14', N'考试', 100, N'10004', N'', N'', N'是', N'否', N'限选88（取消4学时实验）', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (90, N'151611099', NULL, N'生物工程', N'2017', N'生物制药技术', N'专业必修', 56, 54, 2, 0, 4, 0, N'10-18', N'考试', 100, N'10005', N'', N'10131', N'是', N'否', N'必修167+190+118', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (91, N'151611110', NULL, N'生物工程', N'2017', N'生物制药技术', N'专业必修', 56, 54, 2, 0, 4, 0, N'1-14', N'考试', 100, N'10006', N'', N'10131', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (92, N'151611121', NULL, N'生物工程', N'2017', N'生物制药技术', N'专业必修', 56, 54, 2, 0, 4, 0, N'1-14', N'考试', 100, N'10007', N'', N'10131', N'是（两用）', N'否', N'黑板大点的教室', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (93, N'151611132', NULL, N'生物工程', N'2017', N'生物有机化学', N'专业必修', 48, 42, 6, 0, 4, 0, N'1-14', N'考试', 100, N'10008', N'', N'10131', N'是', N'否', N'必修60', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (94, N'151611143', NULL, N'生物工程', N'2017', N'生物无机化学', N'专业必修', 64, 60, 4, 0, 4, 0, N'1-12', N'考试', 100, N'10009', N'', N'10131', N'是（两用）', N'否', N'必修63+27', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (95, N'151611154', NULL, N'生物工程', N'2016', N'蛋白质工程', N'专业限选', 48, 42, 6, 0, 4, 0, N'1-12', N'考查', 100, N'10009', N'', N'10131', N'是（两用）', N'否', N'限选88', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (96, N'151611165', NULL, N'生物工程', N'2017', N'合成生物学概论', N'专业限选', 32, 32, 0, 0, 4, 0, N'1-8', N'考试', 100, N'10010', N'', N'', N'是', N'否', N'必修118（排课在9-16周下午)', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (97, N'151611881', NULL, N'信息工程技术', N'2017', N'计算机通信与网络', N'专业必修', 56, 40, 16, 4, 4, 0, N'2-15', N'考试', 70, N'10077', N'10103', N'10128', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (98, N'151611892', NULL, N'信息工程技术', N'2017', N'计算机网络A（外文教材）', N'专业必修', 56, 48, 8, 4, 4, 0, N'2-15', N'考试', 80, N'10078', N'10078', N'10128', N'是', N'是', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (99, N'151611903', NULL, N'信息工程技术', N'2017', N'计算机网络A（外文教材）', N'专业必修', 56, 48, 8, 4, 4, 0, N'2-15', N'考试', 80, N'10079', N'10105', N'10128', N'是', N'是', N'', NULL)
GO
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (100, N'151611914', NULL, N'信息工程技术', N'2017', N'计算机网络A（外文教材）', N'专业必修', 56, 48, 8, 4, 4, 0, N'2-15', N'考试', 80, N'10080', N'10106', N'10128', N'是', N'是', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (101, N'151611925', NULL, N'信息工程技术', N'2017', N'计算机网络A（外文教材）', N'专业必修', 56, 48, 8, 4, 4, 0, N'2-15', N'考试', 80, N'10081', N'10107', N'10128', N'是', N'是', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (102, N'151611947', NULL, N'信息工程技术', N'2019', N'C语言程序设计', N'专业必修', 56, 56, 0, 4, 4, 0, N'2-15', N'考试', 90, N'10082', N'', N'', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (103, N'151611958', NULL, N'信息工程技术', N'2019', N'C语言程序设计', N'专业必修', 56, 56, 0, 4, 4, 0, N'2-15', N'考试', 90, N'10082', N'', N'', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (104, N'151611969', NULL, N'信息工程技术', N'2019', N'C语言程序设计', N'专业必修', 56, 56, 0, 4, 4, 0, N'2-15', N'考试', 90, N'10083', N'', N'', N'是', N'否', N'下午开课', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (105, N'151611980', NULL, N'信息工程技术', N'2019', N'C语言程序设计', N'专业必修', 56, 56, 0, 4, 4, 0, N'2-15', N'考试', 90, N'10084', N'10084', N'', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (106, N'151611991', NULL, N'信息工程技术', N'2019', N'C语言程序设计', N'专业必修', 56, 56, 0, 4, 4, 0, N'2-15', N'考试', 90, N'10085', N'10085', N'', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (107, N'151612002', NULL, N'信息工程技术', N'2019', N'C语言程序设计', N'专业必修', 56, 56, 0, 4, 4, 0, N'2-15', N'考试', 90, N'10086', N'10086', N'', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (108, N'151612013', NULL, N'信息工程技术', N'2018', N'C语言程序设计', N'专业必修', 56, 56, 0, 4, 4, 0, N'2-15', N'考试', 90, N'10086', N'10086', N'', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (109, N'151612024', NULL, N'信息工程技术', N'2018', N'数据结构', N'专业必修', 32, 26, 6, 4, 4, 0, N'1-8', N'考试', 90, N'10079', N'', N'10128', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (110, N'151612035', NULL, N'信息工程技术', N'2018', N'数据结构', N'专业必修', 32, 26, 6, 4, 4, 0, N'1-8', N'考试', 90, N'10079', N'', N'10128', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (111, N'151612046', NULL, N'信息工程技术', N'2018', N'数据结构与算法分析', N'专业必修', 56, 44, 12, 4, 4, 0, N'1-14', N'考试', 50, N'10082', N'', N'10128', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (112, N'151612057', NULL, N'信息工程技术', N'2016', N'工程图学', N'专业必修', 32, 26, 6, 4, 4, 0, N'1-8', N'考查', 60, N'10084', N'10084', N'10128', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (113, N'151612068', NULL, N'信息工程技术', N'2016', N'电子电路基础', N'专业必修', 48, 32, 16, 4, 4, 0, N'9-16', N'考查', 60, N'10090', N'10090', N'10090', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (114, N'151612079', NULL, N'信息工程技术', N'2016', N'电路分析基础', N'专业必修', 32, 26, 6, 4, 4, 0, N'9-16', N'考查', 60, N'10091', N'10092', N'10092', N'是', N'否', N'通信对抗与雷达对抗安排同一天上午', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (115, N'151612090', NULL, N'信息工程技术', N'2016', N'电路模拟基础', N'专业限选', 32, 26, 6, 4, 4, 0, N'1-8', N'考查', 100, N'10092', N'10092', N'10092', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (116, N'151612101', NULL, N'信息工程技术', N'2017', N'物理光学', N'专业限选', 32, 24, 8, 4, 4, 0, N'9-16', N'考查', 50, N'10093', N'10117', N'10092', N'是', N'否', N'和计算机网络课排在一个上午', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (117, N'151612112', NULL, N'信息工程技术', N'2016', N'光电子学', N'专业限选', 32, 24, 8, 4, 4, 0, N'9-16', N'考查', 60, N'10093', N'10117', N'10128', N'是', N'是', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (118, N'151612123', NULL, N'信息工程技术', N'2017', N'微机原理与接口技术', N'专业限选', 32, 24, 8, 4, 4, 0, N'1-8', N'考试', 50, N'10078', N'10082', N'10128', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (119, N'151612134', NULL, N'信息工程技术', N'2017', N'电子技术基础', N'专业限选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 90, N'10078', N'10082', N'10128', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (120, N'151612145', NULL, N'信息工程技术', N'2017', N'电子技术基础', N'专业限选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 90, N'10078', N'10082', N'10128', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (121, N'151612156', NULL, N'信息工程技术', N'2017', N'电子技术基础', N'专业限选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 90, N'10085', N'10085', N'10128', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (122, N'151612167', NULL, N'信息工程技术', N'2017', N'电子技术基础', N'专业任选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 90, N'10085', N'10085', N'10128', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (123, N'151612178', NULL, N'信息工程技术', N'2016', N'信号技术基础', N'专业任选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 54, N'10085', N'10085', N'10085', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (124, N'151612189', NULL, N'信息工程技术', N'2016', N'信号技术基础', N'专业任选', 32, 16, 16, 4, 4, 0, N'1-8', N'考查', 90, N'10080', N'10106', N'10128', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (125, N'151612200', NULL, N'信息工程技术', N'2016', N'信号技术基础', N'专业任选', 32, 16, 16, 4, 4, 0, N'1-8', N'考查', 90, N'10090', N'10090', N'10128', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (126, N'151612211', NULL, N'信息工程技术', N'2017', N'数字信号处理', N'专业任选', 32, 16, 16, 4, 2, 0, N'1-8', N'考查', 60, N'10086', N'10086', N'10086', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (127, N'151612222', NULL, N'信息工程技术', N'2017', N'操作系统原理及应用', N'专业任选', 48, 32, 16, 6, 4, 0, N'2-13', N'考试', 90, N'10086', N'10086', N'10086', N'是', N'是', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (128, N'151612233', NULL, N'信息工程技术', N'2016', N'颜色信息工程', N'专业任选', 32, 20, 12, 6, 4, 0, N'9-16', N'考查', 60, N'10086', N'10086', N'10086', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (129, N'151612244', NULL, N'信息工程技术', N'2018', N'光通信实验', N'专业限选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 90, N'10078', N'10082', N'10128', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (130, N'151612255', NULL, N'信息工程技术', N'2018', N'光通信实验', N'专业限选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 90, N'10085', N'10085', N'10128', N'是', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([id], [xuhao], [courseid], [major], [grade], [coursename], [coursexingzhi], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classidz]) VALUES (131, N'151612266', NULL, N'信息工程技术', N'2018', N'光通信实验', N'专业任选', 32, 24, 8, 4, 4, 0, N'1-8', N'考查', 90, N'10085', N'10085', N'10128', N'是', N'否', N'', NULL)
SET IDENTITY_INSERT [dbo].[t_coursetask] OFF
SET IDENTITY_INSERT [dbo].[t_feedback] ON 

INSERT [dbo].[t_feedback] ([id], [table], [type], [content], [TorS]) VALUES (16, N'测试', N'排课问题', N'测试', N'教师')
INSERT [dbo].[t_feedback] ([id], [table], [type], [content], [TorS]) VALUES (17, N'测试', N'系统优化', N'测试', N'学生')
SET IDENTITY_INSERT [dbo].[t_feedback] OFF
SET IDENTITY_INSERT [dbo].[t_major] ON 

INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (1, N'海洋工程与技术', N'海洋工程与技术', 167)
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (2, N'计算机科学与技术', N'计算机科学与技术', 160)
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (3, N'软件工程', N'软件工程', 160)
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (4, N'生物工程', N'生物工程', 167)
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (5, N'信息工程', N'信息工程', 167)
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (6, N'自动化', N'自动化', 160)
SET IDENTITY_INSERT [dbo].[t_major] OFF
SET IDENTITY_INSERT [dbo].[t_student] ON 

INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (1, N'2016001', N'李赣', N'电子科学与技术', N'2016', N'2016001')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (2, N'2016002', N'蒋灵川', N'电子科学与技术', N'2016', N'2016002')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (3, N'2016003', N'阿布多', N'电子信息工程', N'2016', N'2016003')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (4, N'2016004', N'陈毅', N'电子信息工程', N'2016', N'2016004')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (5, N'2016005', N'张顺飞', N'电子信息工程（卓越）', N'2016', N'2016005')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (6, N'2016006', N'冯雪娟', N'通信工程', N'2016', N'2016006')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (7, N'2016007', N'王雷', N'通信工程（卓越）', N'2016', N'2016007')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (8, N'2016008', N'张贾瑞', N'微电子科学与工程', N'2016', N'2016008')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (9, N'2016009', N'李憨憨', N'微电子学', N'2016', N'2016009')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (10, N'2016010', N'张顺德', N'信息对抗技术', N'2016', N'2016010')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (11, N'2016011', N'王宝器', N'土木工程', N'2016', N'2016011')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (12, N'2016012', N'耶和华', N'软件工程', N'2016', N'2016012')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (13, N'2016013', N'特朗普', N'工商管理', N'2016', N'2016013')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (14, N'2017001', N'秦傲明', N'软件工程', N'2017', N'2017001')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (15, N'2017002', N'陈石头', N'电子科学与技术', N'2017', N'2017002')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (16, N'2017003', N'刘洋', N'电子信息工程', N'2017', N'2017003')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (17, N'2017004', N'张菲菲', N'电子信息工程（卓越）', N'2017', N'2017004')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (18, N'2017005', N'黄诗诗', N'通信工程', N'2017', N'2017005')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (19, N'2017006', N'刘丽丽', N'通信工程（卓越）', N'2017', N'2017006')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (20, N'2017007', N'马飞', N'微电子科学与工程', N'2017', N'2017007')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (21, N'2017008', N'卢本伟', N'微电子学', N'2017', N'2017008')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (22, N'2017009', N'李好', N'信息对抗技术', N'2017', N'2017009')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (23, N'2017010', N'王思聪', N'工商管理', N'2017', N'2017010')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (24, N'2017011', N'王健林', N'土木工程', N'2017', N'2017011')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (25, N'2018001', N'许家印', N'电子科学与技术', N'2018', N'2018001')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (26, N'2018002', N'马龙', N'电子信息工程', N'2018', N'2018002')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (27, N'2018003', N'任丁丁', N'电子信息工程（卓越）', N'2018', N'2018003')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (28, N'2018004', N'汪体德', N'通信工程', N'2018', N'2018004')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (29, N'2018005', N'李嘉诚', N'通信工程（卓越）', N'2018', N'2018005')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (30, N'2018006', N'陈世美', N'微电子科学与工程', N'2018', N'2018006')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (31, N'2018007', N'马化腾', N'微电子学', N'2018', N'2018007')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (32, N'2018008', N'马云', N'信息对抗与技术', N'2018', N'2018008')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (33, N'2018009', N'郭芙蓉', N'土木工程', N'2018', N'2018009')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (34, N'2018010', N'陈新', N'软件工程', N'2018', N'2018010')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (35, N'2018011', N'李白', N'工商管理', N'2018', N'2018011')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (36, N'2019001', N'撒贝宁', N'电子科学与技术', N'2019', N'2019001')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (37, N'2019002', N'张汉', N'电子信息工程', N'2019', N'2019002')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (38, N'2019003', N'王斌', N'电子信息工程（卓越）', N'2019', N'2019003')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (39, N'2019004', N'李牧', N'通信工程', N'2019', N'2019004')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (40, N'2019005', N'欧阳克宇', N'通信工程（卓越）', N'2019', N'2019005')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (41, N'2019006', N'程韵韵', N'微电子科学与工程', N'2019', N'2019006')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (42, N'2019007', N'吴赛宇', N'微电子学', N'2019', N'2019007')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (43, N'2019008', N'赵一罗', N'信息对抗与技术', N'2019', N'2019008')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (44, N'2019009', N'税宇航', N'土木工程', N'2019', N'2019009')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (45, N'2019010', N'王力', N'软件工程', N'2019', N'2019010')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (46, N'2019011', N'刘洋洋', N'工商管理', N'2019', N'2019011')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (47, N'201700001', N'秦小帅', N'软件工程', N'2017', N'201700001')
INSERT [dbo].[t_student] ([id], [stuid], [stuname], [major], [grade], [stupwd]) VALUES (48, N'2001', N'小红', N'物联网工程', N'2018', N'2001')
SET IDENTITY_INSERT [dbo].[t_student] OFF
SET IDENTITY_INSERT [dbo].[t_teacher] ON 

INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (135, N'10000', N'李海鸥', N'教授', N'博士', N'10000')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (136, N'10001', N'曹卫平', N'教授', N'博士', N'10001')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (137, N'10002', N'陈明', N'教授', N'博士', N'10002')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (138, N'10003', N'陈名松', N'教授', N'硕士', N'10003')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (139, N'10004', N'蒋行国', N'副教授', N'博士', N'10004')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (140, N'10005', N'于新华', N'副教授', N'博士', N'10005')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (141, N'10006', N'姜兴', N'教授', N'硕士', N'10006')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (142, N'10007', N'姜彦南', N'副教授', N'博士', N'10007')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (143, N'10008', N'高喜', N'教授', N'博士', N'10008')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (144, N'10009', N'李晓峰', N'讲师', N'硕士', N'10009')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (145, N'10010', N'陈辉', N'副教授', N'博士', N'10010')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (146, N'10011', N'欧阳宁', N'教授', N'硕士', N'10011')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (147, N'10012', N'王岩红', N'高级实验师', N'硕士', N'10012')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (148, N'10013', N'陈紫强', N'副教授', N'博士', N'10013')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (149, N'10014', N'王娇', N'讲师', N'硕士', N'10014')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (150, N'10015', N'洪莉', N'高级实验师', N'硕士', N'10015')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (151, N'10017', N'袁华', N'讲师', N'硕士', N'10017')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (152, N'10018', N'莫建文', N'副教授', N'博士', N'10018')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (153, N'10020', N'符强', N'副教授', N'硕士', N'10020')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (154, N'10021', N'孙安青', N'讲师', N'学士', N'10021')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (155, N'10022', N'蔡晓东', N'副教授', N'博士', N'10022')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (156, N'10023', N'王 健', N'副教授', N'硕士', N'10023')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (157, N'10024', N'王国富', N'教授', N'博士', N'10024')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (158, N'10025', N'张顺岚', N'讲师', N'硕士', N'10025')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (159, N'10026', N'张法全', N'副教授', N'博士', N'10026')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (160, N'10027', N'唐志芳', N'讲师', N'硕士', N'10027')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (161, N'10028', N'谢先明', N'副教授', N'博士', N'10028')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (162, N'10029', N'蒋俊正', N'副教授', N'博士', N'10029')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (163, N'10030', N'苏启常', N'讲师', N'硕士', N'10030')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (164, N'10031', N'孙希延', N'教授', N'博士', N'10031')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (165, N'10032', N'蔡成林', N'教授', N'博士', N'10032')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (166, N'10033', N'刘庆华', N'副教授', N'博士', N'10033')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (167, N'10039', N'丁 勇', N'讲师', N'硕士', N'10039')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (168, N'10040', N'樊孝明', N'讲师', N'硕士', N'10040')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (169, N'10042', N'陈冬梅', N'副教授', N'硕士', N'10042')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (170, N'10043', N'郑霖', N'教授', N'博士', N'10043')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (171, N'10044', N'闫坤', N'副教授', N'博士', N'10044')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (172, N'10045', N'仇洪冰', N'教授', N'博士', N'10045')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (173, N'10046', N'敖珺', N'教授', N'博士', N'10046')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (174, N'10048', N'赵利', N'教授', N'博士', N'10048')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (175, N'10049', N'符杰林', N'副教授', N'硕士', N'10049')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (176, N'10050', N'梁红玉', N'讲师', N'硕士', N'10050')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (177, N'10052', N'王吉平', N'高级实验师', N'硕士', N'10052')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (178, N'10053', N'宁向延', N'副教授', N'博士', N'10053')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (179, N'10055', N'覃远年', N'高级实验师', N'硕士', N'10055')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (180, N'10056', N'王卫东', N'教授', N'硕士', N'10056')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (181, N'10058', N'周茜', N'讲师', N'硕士', N'10058')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (182, N'10060', N'归法弟', N'讲师', N'硕士', N'10060')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (183, N'10061', N'徐卫林', N'副教授', N'博士', N'10061')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (184, N'10062', N'李秀东', N'讲师', N'硕士', N'10062')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (185, N'10063', N'肖功利', N'副教授', N'博士', N'10063')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (186, N'10064', N'谢跃雷', N'副教授', N'硕士', N'10064')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (187, N'10065', N'韦雪明', N'副教授', N'博士', N'10065')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (188, N'10066', N'岳宏卫', N'副教授', N'博士', N'10066')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (189, N'10068', N'赵中华', N'工程师', N'学士', N'10068')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (190, N'10069', N'陈小毛', N'副教授', N'博士', N'10069')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (191, N'10070', N'韦保林', N'副教授', N'博士', N'10070')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (192, N'10072', N'段吉海', N'教授', N'博士', N'10072')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (193, N'10073', N'晋良念', N'副教授', N'博士', N'10073')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (194, N'10074', N'翟江辉', N'讲师', N'硕士', N'10074')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (195, N'10077', N'马春波', N'教授', N'博士', N'10077')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (196, N'10078', N'武小年', N'副教授', N'硕士', N'10078')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (197, N'10079', N'陶晓玲', N'副教授', N'硕士', N'10079')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (198, N'10080', N'何倩', N'教授', N'博士', N'10080')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (199, N'10081', N'黄桂敏', N'教授', N'博士', N'10081')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (200, N'10082', N'张润莲', N'副教授', N'博士', N'10082')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (201, N'10083', N'张向利', N'教授', N'博士', N'10083')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (202, N'10084', N'马  杰', N'讲师', N'学士', N'10084')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (203, N'10085', N'李德明', N'讲师', N'硕士', N'10085')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (204, N'10086', N'黄建华', N'讲师', N'硕士', N'10086')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (205, N'10090', N'刘联海', N'讲师', N'博士', N'10090')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (206, N'10091', N'蒋留兵', N'研究员', N'硕士', N'10091')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (207, N'10092', N'车俐', N'高级实验师', N'硕士', N'10092')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (208, N'10093', N'韦永壮', N'教授', N'博士', N'10093')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (209, N'10099', N'李跃', N'讲师', N'', N'10099')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (210, N'10100', N'童秀倩', N'讲师', N'', N'10100')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (211, N'10101', N'吴庚飞', N'讲师', N'', N'10101')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (212, N'10102', N'黄干', N'讲师', N'', N'10102')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (213, N'10103', N'曾坤', N'讲师', N'', N'10103')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (214, N'10105', N'伍欣', N'副教授', N'', N'10105')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (215, N'10106', N'阳鑫磊', N'副教授', N'', N'10106')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (216, N'10107', N'李会娟', N'副教授', N'', N'10107')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (217, N'10108', N'陈达', N'副教授', N'', N'10108')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (218, N'10117', N'赵颖', N'研究生', N'', N'10117')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (219, N'10128', N'彭明', N'助工', N'', N'10128')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (220, N'10131', N'廖欣', N'实验师', N'', N'10131')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (221, N'10132', N'蒋红艳', N'实验师', N'', N'10132')
INSERT [dbo].[t_teacher] ([id], [teachid], [name], [zhicheng], [xueli], [pwd]) VALUES (222, N'100000', N'秦老师', N'硕士', N'硕士', N'100000')
SET IDENTITY_INSERT [dbo].[t_teacher] OFF
ALTER TABLE [dbo].[t_courseplan] ADD  DEFAULT ((0)) FOR [score]
GO
ALTER TABLE [dbo].[t_courseplan] ADD  DEFAULT ((0)) FOR [xueshiall]
GO
ALTER TABLE [dbo].[t_courseplan] ADD  DEFAULT ((0)) FOR [xueshijiangshou]
GO
ALTER TABLE [dbo].[t_courseplan] ADD  DEFAULT ((0)) FOR [xueshishiyan]
GO
ALTER TABLE [dbo].[t_coursetask] ADD  DEFAULT ((0)) FOR [xueshiall]
GO
ALTER TABLE [dbo].[t_coursetask] ADD  DEFAULT ((0)) FOR [xueshijiangshou]
GO
ALTER TABLE [dbo].[t_coursetask] ADD  DEFAULT ((0)) FOR [xueshishiyan]
GO
ALTER TABLE [dbo].[t_coursetask] ADD  DEFAULT ((0)) FOR [xueshiallz]
GO
ALTER TABLE [dbo].[t_coursetask] ADD  DEFAULT ((0)) FOR [xueshijiangshouz]
GO
ALTER TABLE [dbo].[t_coursetask] ADD  DEFAULT ((0)) FOR [xueshishiyanz]
GO
ALTER TABLE [dbo].[t_coursetask] ADD  DEFAULT ((0)) FOR [courserongliang]
GO
ALTER TABLE [dbo].[t_taboo] ADD  DEFAULT ('0') FOR [shenhe]
GO
USE [master]
GO
ALTER DATABASE [db_paikesys2] SET  READ_WRITE 
GO
