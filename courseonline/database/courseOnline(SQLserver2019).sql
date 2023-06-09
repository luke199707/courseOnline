USE [master]
GO
/****** Object:  Database [courseonline]    Script Date: 2022/8/11 17:51:56 ******/
CREATE DATABASE [courseonline]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'courseonline', FILENAME = N'D:\luke\development_software\SQLServer2019\MSSQL15.MSSQLSERVER\MSSQL\DATA\courseonline.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'courseonline_log', FILENAME = N'D:\luke\development_software\SQLServer2019\MSSQL15.MSSQLSERVER\MSSQL\DATA\courseonline_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [courseonline] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [courseonline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [courseonline] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [courseonline] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [courseonline] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [courseonline] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [courseonline] SET ARITHABORT OFF 
GO
ALTER DATABASE [courseonline] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [courseonline] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [courseonline] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [courseonline] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [courseonline] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [courseonline] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [courseonline] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [courseonline] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [courseonline] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [courseonline] SET  DISABLE_BROKER 
GO
ALTER DATABASE [courseonline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [courseonline] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [courseonline] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [courseonline] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [courseonline] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [courseonline] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [courseonline] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [courseonline] SET RECOVERY FULL 
GO
ALTER DATABASE [courseonline] SET  MULTI_USER 
GO
ALTER DATABASE [courseonline] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [courseonline] SET DB_CHAINING OFF 
GO
ALTER DATABASE [courseonline] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [courseonline] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [courseonline] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [courseonline] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'courseonline', N'ON'
GO
ALTER DATABASE [courseonline] SET QUERY_STORE = OFF
GO
USE [courseonline]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 2022/8/11 17:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[id] [varchar](100) NOT NULL,
	[nickname] [varchar](100) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[pwd] [varchar](100) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_time] [datetime] NOT NULL,
 CONSTRAINT [PK_tb_admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chapter]    Script Date: 2022/8/11 17:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chapter](
	[id] [varchar](100) NOT NULL,
	[courseid] [varchar](100) NULL,
	[title] [varchar](100) NULL,
	[introduction] [text] NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_chapter_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[courseCalendar]    Script Date: 2022/8/11 17:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courseCalendar](
	[id] [varchar](100) NOT NULL,
	[courseid] [varchar](100) NULL,
	[mainContent] [text] NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_courseCalendar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[courseDesignPlan]    Script Date: 2022/8/11 17:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courseDesignPlan](
	[id] [varchar](100) NOT NULL,
	[courseid] [varchar](100) NULL,
	[mainContent] [text] NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_courseDesignPlan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[courseInfo]    Script Date: 2022/8/11 17:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courseInfo](
	[id] [varchar](100) NOT NULL,
	[title] [varchar](100) NULL,
	[introduction] [text] NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
	[teacher] [varchar](100) NULL,
 CONSTRAINT [PK_courseInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[courseLevelIIIProject]    Script Date: 2022/8/11 17:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courseLevelIIIProject](
	[id] [varchar](100) NOT NULL,
	[courseid] [varchar](100) NULL,
	[mainContent] [text] NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_courseLevelIIIProject] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[courseOutline]    Script Date: 2022/8/11 17:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courseOutline](
	[id] [varchar](100) NOT NULL,
	[courseid] [varchar](100) NULL,
	[mainContent] [text] NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_courseOutline] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[courseTeacher]    Script Date: 2022/8/11 17:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courseTeacher](
	[id] [varchar](100) NOT NULL,
	[courseid] [varchar](100) NULL,
	[mainContent] [text] NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_courseTeacher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[department]    Script Date: 2022/8/11 17:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department](
	[id] [varchar](100) NOT NULL,
	[name] [varchar](100) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[excellentWorkAttachment]    Script Date: 2022/8/11 17:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[excellentWorkAttachment](
	[id] [varchar](100) NOT NULL,
	[excellentworkid] [varchar](100) NULL,
	[name] [varchar](200) NULL,
	[url] [varchar](200) NULL,
	[realpath] [varchar](200) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_excellentWorkAttachment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[excellentWorks]    Script Date: 2022/8/11 17:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[excellentWorks](
	[id] [varchar](100) NOT NULL,
	[name] [varchar](200) NULL,
	[introduction] [text] NULL,
	[author] [varchar](100) NULL,
	[url] [varchar](200) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_excellentWorks] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grade]    Script Date: 2022/8/11 17:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grade](
	[id] [varchar](50) NOT NULL,
	[department] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[material]    Script Date: 2022/8/11 17:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[material](
	[id] [varchar](100) NOT NULL,
	[name] [varchar](200) NULL,
	[url] [varchar](200) NULL,
	[realpath] [varchar](200) NULL,
	[suffix] [varchar](10) NULL,
	[filename] [varchar](100) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_material_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[notice]    Script Date: 2022/8/11 17:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notice](
	[id] [varchar](100) NOT NULL,
	[title] [varchar](200) NULL,
	[mainContent] [text] NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_notice] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[noticeAttachment]    Script Date: 2022/8/11 17:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[noticeAttachment](
	[id] [varchar](100) NOT NULL,
	[noticeid] [varchar](100) NULL,
	[name] [varchar](200) NULL,
	[url] [varchar](200) NULL,
	[realpath] [varchar](200) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[questionReply]    Script Date: 2022/8/11 17:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[questionReply](
	[id] [varchar](100) NOT NULL,
	[question] [text] NULL,
	[questioner] [varchar](100) NULL,
	[state] [varchar](10) NULL,
	[answer] [text] NULL,
	[qtime] [datetime] NULL,
	[atime] [datetime] NULL,
	[responder] [varchar](100) NULL,
	[title] [varchar](200) NULL,
 CONSTRAINT [PK_questionReply] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sclass]    Script Date: 2022/8/11 17:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sclass](
	[id] [varchar](50) NOT NULL,
	[department] [varchar](50) NULL,
	[grade] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 2022/8/11 17:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[id] [varchar](100) NOT NULL,
	[sno] [varchar](100) NULL,
	[name] [varchar](100) NULL,
	[pwd] [varchar](100) NULL,
	[email] [varchar](100) NULL,
	[grade] [varchar](100) NULL,
	[department] [varchar](100) NULL,
	[sclass] [varchar](100) NULL,
	[subject] [varchar](100) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subsection]    Script Date: 2022/8/11 17:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subsection](
	[id] [varchar](100) NOT NULL,
	[courseid] [varchar](100) NULL,
	[chapterid] [varchar](100) NULL,
	[title] [varchar](100) NULL,
	[introduction] [text] NULL,
	[videoname] [varchar](100) NULL,
	[videourl] [varchar](200) NULL,
	[videorealpath] [varchar](200) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_subsection_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[viewRecords]    Script Date: 2022/8/11 17:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[viewRecords](
	[id] [varchar](100) NOT NULL,
	[stuid] [varchar](100) NULL,
	[courseid] [varchar](100) NULL,
	[chapterid] [varchar](100) NULL,
	[subsectionid] [varchar](100) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
	[sno] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[admin] ([id], [nickname], [name], [pwd], [email], [create_time], [update_time]) VALUES (N'1', N'admin', N'张俊辉', N'202cb962ac59075b964b07152d234b70', N'2509824873@qq.com', CAST(N'2022-07-07T20:57:56.000' AS DateTime), CAST(N'2022-07-30T15:59:12.177' AS DateTime))
INSERT [dbo].[admin] ([id], [nickname], [name], [pwd], [email], [create_time], [update_time]) VALUES (N'2', N'superAdmin', N'超级管理员', N'202cb962ac59075b964b07152d234b70', N'123@qq.com', CAST(N'2022-07-07T20:57:56.000' AS DateTime), CAST(N'2022-07-30T15:59:12.177' AS DateTime))
GO
INSERT [dbo].[chapter] ([id], [courseid], [title], [introduction], [create_time], [update_time]) VALUES (N'1fba7e67c26f4d718caecf5c585b9188', N'c17df457eb87417da8564fd8184dde13', N'第一章 绪论', N'绪论', CAST(N'2022-07-19T09:28:45.633' AS DateTime), CAST(N'2022-07-19T10:44:12.777' AS DateTime))
INSERT [dbo].[chapter] ([id], [courseid], [title], [introduction], [create_time], [update_time]) VALUES (N'a7e935bb96284fdc97777e452a8e6e40', N'c17df457eb87417da8564fd8184dde13', N'第三章 词法分析', N'词法分析', CAST(N'2022-07-19T09:29:40.137' AS DateTime), CAST(N'2022-07-19T09:29:40.137' AS DateTime))
INSERT [dbo].[chapter] ([id], [courseid], [title], [introduction], [create_time], [update_time]) VALUES (N'b8f6a7af03304c239797344205be10ef', N'c17df457eb87417da8564fd8184dde13', N'第二章 程序设计语言及其文法', N'程序设计语言及其文法', CAST(N'2022-07-19T09:29:14.567' AS DateTime), CAST(N'2022-07-19T09:29:14.567' AS DateTime))
GO
INSERT [dbo].[courseCalendar] ([id], [courseid], [mainContent], [create_time], [update_time]) VALUES (N'14710e4896114efe86f06a708d775905', N'c17df457eb87417da8564fd8184dde13', N'<p style="text-align: center;"><strong>燕山大学教学日历</strong></p><p style="text-align: center;">课程名称：编译原理 &nbsp; &nbsp; 2019-2020学年秋季学期 &nbsp; &nbsp; &nbsp;授课专业班级：17计算机1-6班</p><table style="width: 100%;"><tbody><tr><td colSpan="1" rowSpan="3" width="41">序 号</td><td colSpan="1" rowSpan="3" width="72">周 次</td><td colSpan="1" rowSpan="3" width="142">主要章节名称</td><td colSpan="1" rowSpan="3" width="258">教 学 内 容</td><td colSpan="4" rowSpan="1" width="189">计划时数 48</td></tr><tr><td colSpan="1" rowSpan="2" width="36">讲 课</td><td colSpan="1" rowSpan="2" width="45">习 题 课</td><td colSpan="2" rowSpan="1" width="108">实验（上机）</td></tr><tr><td colSpan="1" rowSpan="1" width="50">课内时数</td><td colSpan="1" rowSpan="1" width="58">课内 时数</td></tr><tr><td colSpan="1" rowSpan="1" width="41">1</td><td colSpan="1" rowSpan="1" width="72">8</td><td colSpan="1" rowSpan="1" width="142">第1章 引论</td><td colSpan="1" rowSpan="1" width="258">重点掌握：编译程序的含义和作用；编译的过程及编译程序的结构 理解：解释程序与编译程序的区别</td><td colSpan="1" rowSpan="1" width="36">2</td><td colSpan="1" rowSpan="1" width="45"></td><td colSpan="1" rowSpan="1" width="50"></td><td colSpan="1" rowSpan="1" width="58"></td></tr><tr><td colSpan="1" rowSpan="1" width="41">2</td><td colSpan="1" rowSpan="1" width="72">8-9</td><td colSpan="1" rowSpan="1" width="142">第2章 文法和语言</td><td colSpan="1" rowSpan="1" width="258">重点掌握：文法和语言的定义，句型的两种分析方法，推导、归约、句柄、短语等概念，构造语法树，文法的二义性 理解：符号串的各种运算</td><td colSpan="1" rowSpan="1" width="36">4</td><td colSpan="1" rowSpan="1" width="45">2</td><td colSpan="1" rowSpan="1" width="50"></td><td colSpan="1" rowSpan="1" width="58"></td></tr><tr><td colSpan="1" rowSpan="1" width="41">3</td><td colSpan="1" rowSpan="1" width="72">9-10</td><td colSpan="1" rowSpan="1" width="142">第3章 词法分析</td><td colSpan="1" rowSpan="1" width="258">重点掌握：正规文法、正规式、有穷自动机的用法，NFA的确定化，DFA的最小化。 理解：正规文法和有穷自动机之间的关系，用状态转换图对符号串进行识别的过程。</td><td colSpan="1" rowSpan="1" width="36">4</td><td colSpan="1" rowSpan="1" width="45">2</td><td colSpan="1" rowSpan="1" width="50"></td><td colSpan="1" rowSpan="1" width="58"></td></tr><tr><td colSpan="1" rowSpan="1" width="41">4</td><td colSpan="1" rowSpan="1" width="72">10-11</td><td colSpan="1" rowSpan="1" width="142">第4章 自顶向下语法分析方法</td><td colSpan="1" rowSpan="1" width="258">重点掌握：自顶向下分析过程，FIRST集、FOLLOW集和SELECT集的求法，LL（1）文法的判别，预测分析法 理解：非LL(1)文法向LL(1)文法的转换方法</td><td colSpan="1" rowSpan="1" width="36">4</td><td colSpan="1" rowSpan="1" width="45">2</td><td colSpan="1" rowSpan="1" width="50"></td><td colSpan="1" rowSpan="1" width="58"></td></tr><tr><td colSpan="1" rowSpan="1" width="41">5</td><td colSpan="1" rowSpan="1" width="72">11</td><td colSpan="1" rowSpan="1" width="142">讨论课</td><td colSpan="1" rowSpan="1" width="258">对各组的讨论题目进行讨论和考核</td><td colSpan="1" rowSpan="1" width="36">4</td><td colSpan="1" rowSpan="1" width="45"></td><td colSpan="1" rowSpan="1" width="50"></td><td colSpan="1" rowSpan="1" width="58"></td></tr><tr><td colSpan="1" rowSpan="1" width="41">6</td><td colSpan="1" rowSpan="1" width="72">12</td><td colSpan="1" rowSpan="1" width="142">第5章 自底向上优先分析法</td><td colSpan="1" rowSpan="1" width="258">重点掌握：自底向上优先分析方法的思想和执行步骤 理解：简单优先分析法</td><td colSpan="1" rowSpan="1" width="36">2</td><td colSpan="1" rowSpan="1" width="45"></td><td colSpan="1" rowSpan="1" width="50"></td><td colSpan="1" rowSpan="1" width="58"></td></tr><tr><td colSpan="1" rowSpan="1" width="41">7</td><td colSpan="1" rowSpan="1" width="72">12-13</td><td colSpan="1" rowSpan="1" width="142">第6章 LR分析法</td><td colSpan="1" rowSpan="1" width="258">重点掌握：各种LR分析法和执行步骤 理解：各类LR(k)文法之间的相互关系</td><td colSpan="1" rowSpan="1" width="36">6</td><td colSpan="1" rowSpan="1" width="45">2</td><td colSpan="1" rowSpan="1" width="50"></td><td colSpan="1" rowSpan="1" width="58"></td></tr><tr><td colSpan="1" rowSpan="1" width="41">8</td><td colSpan="1" rowSpan="1" width="72">13</td><td colSpan="1" rowSpan="1" width="142">第7章 语法制导的语义计算</td><td colSpan="1" rowSpan="1" width="258">重点掌握：属性文法的含义和作用、基于属性文法的语义计算 理解：语法制导翻译思想</td><td colSpan="1" rowSpan="1" width="36">2</td><td colSpan="1" rowSpan="1" width="45"></td><td colSpan="1" rowSpan="1" width="50"></td><td colSpan="1" rowSpan="1" width="58"></td></tr><tr><td colSpan="1" rowSpan="1" width="41">9</td><td colSpan="1" rowSpan="1" width="72">14</td><td colSpan="1" rowSpan="1" width="142">第8章 静态语义分析和中间代码生成</td><td colSpan="1" rowSpan="1" width="258">重点掌握：符号表的作用和实现、静态语义分析的任务、常见的中间表示形式 理解：使用符号表来体现作用域与可见性</td><td colSpan="1" rowSpan="1" width="36">2</td><td colSpan="1" rowSpan="1" width="45">2</td><td colSpan="1" rowSpan="1" width="50"></td><td colSpan="1" rowSpan="1" width="58"></td></tr><tr><td colSpan="1" rowSpan="1" width="41">10</td><td colSpan="1" rowSpan="1" width="72">14</td><td colSpan="1" rowSpan="1" width="142">第9章 运行时存储组织 第10章 代码优化和目标代码生成</td><td colSpan="1" rowSpan="1" width="258">重点掌握：静态分配，动态分配，栈式分配。 理解：参数传递过程。 理解：代码优化的基本技术；代码生成的基本方法。</td><td colSpan="1" rowSpan="1" width="36">2</td><td colSpan="1" rowSpan="1" width="45"></td><td colSpan="1" rowSpan="1" width="50"></td><td colSpan="1" rowSpan="1" width="58"></td></tr><tr><td colSpan="1" rowSpan="1" width="41">11</td><td colSpan="1" rowSpan="1" width="72">15</td><td colSpan="1" rowSpan="1" width="142">项目验收</td><td colSpan="1" rowSpan="1" width="258">对各组的三级项目进行汇报和考核</td><td colSpan="1" rowSpan="1" width="36">4</td><td colSpan="1" rowSpan="1" width="45"></td><td colSpan="1" rowSpan="1" width="50"></td><td colSpan="1" rowSpan="1" width="58"></td></tr><tr><td colSpan="1" rowSpan="1" width="41">12</td><td colSpan="1" rowSpan="1" width="72">15</td><td colSpan="1" rowSpan="1" width="142">综合复习</td><td colSpan="1" rowSpan="1" width="258">课程总结复习、课程设计提前部署</td><td colSpan="1" rowSpan="1" width="36">2</td><td colSpan="1" rowSpan="1" width="45"></td><td colSpan="1" rowSpan="1" width="50"></td><td colSpan="1" rowSpan="1" width="58"></td></tr></tbody></table><p><span style="color: white;">任课教师：</span>孙胜涛、陈真 &nbsp; &nbsp;所在学院（系）：信息学院计算机系 &nbsp; 系（室）主任签字：</p><p><br></p>', CAST(N'2022-08-10T22:01:36.953' AS DateTime), CAST(N'2022-08-10T22:01:36.953' AS DateTime))
GO
INSERT [dbo].[courseDesignPlan] ([id], [courseid], [mainContent], [create_time], [update_time]) VALUES (N'1bf40a05e92c42cc8c0308a651235a3f', N'c17df457eb87417da8564fd8184dde13', N'<p style="text-align: center;"><strong>大校2017级计算机专业《编译原理》课程设计安排</strong></p><p style="text-align: center;"><strong>时间：第20周（2020年1月6日-2020年1月10）</strong></p><p style="text-align: center;"><strong>地点：里仁第三机房（6个班）</strong></p><p style="text-align: center;"><strong>（周一至周五上午上机实验8:00-11:30，下午自行查阅资料撰写报告，周五下午验收）</strong></p><p><strong>一、课程设计目的</strong></p><p style="text-indent: 24pt;"><span style="font-family: 宋体;">独立研究、设计并开发一个简单的编译程序或其部分功能，加深对编译理论和编译过程的理解（编程开发语言不限）。</span></p><p><strong>二、课程设计题目</strong></p><p style="text-align: left;"><strong>(学生根据自己的兴趣和能力选做六个题目中之一，并可在满足基本要求下进行创新设计)</strong></p><p><strong>题目1：词法分析器的设计与实现（参考教材3.2节）</strong></p><p style="text-indent: 24.1pt;"><strong>目的：</strong><span style="font-family: 宋体;">通过设计、编制和调试一个具体的词法分析程序，加深对词法分析原理的理解。掌握在对程序设计语言源程序进行扫描过程中将其分解为各类单词的词法分析方法。</span></p><p style="text-indent: 24.1pt;"><strong>要求：</strong></p><p style="text-indent: 24.1pt;">(1)<span style="font-family: 宋体;">编制一个读单词过程，支持</span>PL/0<span style="font-family: 宋体;">或</span>C<span style="font-family: 宋体;">或</span>Java<span style="font-family: 宋体;">程序设计语言中</span>5<span style="font-family: 宋体;">类单词的统计分析。</span></p><p style="text-indent: 24.1pt;">(2)<span style="font-family: 宋体;">说明需要识别的单词的词法规则，并用状态转换图表示。</span></p><p style="text-indent: 24.1pt;">(3)<span style="font-family: 宋体;">从输入的源程序中，识别出各个具有独立意义的单词，即基本保留字、标识符、常数、运算符、界符五大类。并依次输出各个单词符号自身值、所在行和单词类型。</span></p><p style="text-indent: 24.1pt;">(4)<span style="font-family: 宋体;">当遇到错误时，请指出错误位置和可能的错误原因。准备多组测试样例，对测试样例进行测试和验证，并对输出结果进行分析。</span></p><p><strong>题目2：递归下降LL(1)语法分析程序（参考教材4.5.1小节）</strong></p><p style="text-indent: 24.1pt;"><strong>目的：</strong><span style="font-family: 宋体;">通过完成语法分析－递归下降分析器的程序，并对输入字符进行分析判断。通过代码编写与测试，加深对递归下降分析器的理解。</span></p><p style="text-indent: 24.1pt;"><strong>要求：</strong></p><p style="text-indent: 24.1pt;">(1)<span style="font-family: 宋体;">给出不含左递归的，识别加、减、乘、除等运算的表达式文法。</span></p><p style="text-indent: 24.1pt;">(2)<span style="font-family: 宋体;">采用递归下降分析方法编写识别所定义表达式文法的语法分析器。</span></p><p style="text-indent: 24.1pt;">(3)<span style="font-family: 宋体;">任意给出一个表达式句子，判断该表达式是否是合法的句子（句型分析）。</span></p><p style="text-indent: 24.1pt;">(4)<span style="font-family: 宋体;">如果给出的表达式是文法合法的句子，程序给出相应句子的最左推导过程；如果给出的表达式不是文法合法的句子，请给出推导过程中在哪里出错。</span></p><p style="text-indent: 24.1pt;">(5)<span style="font-family: 宋体;">说明被分析表达式句子的语法分析树。</span></p><p style="text-indent: 24.1pt;">(6)<span style="font-family: 宋体;">准备多组测试样例，对测试样例进行测试和验证，并对输出结果进行分析。</span></p><p><strong>题目3：表驱动LL(1)语法分析程序（参考教材4.5.2小节）</strong></p><p style="text-indent: 24.1pt;"><strong>目的：</strong><span style="font-family: 宋体;">通过设计、编制和调试一个典型的</span>LL(1)<span style="font-family: 宋体;">语法分析方法，进一步掌握预测分析法的语法分析方法。</span></p><p style="text-indent: 24.1pt;"><strong>要求：</strong></p><p style="text-indent: 24.1pt;">(1)<span style="font-family: 宋体;">根据</span>LL(1)<span style="font-family: 宋体;">分析法编写一个语法分析程序，可选择以下一项作为分析算法的输入：</span>a.<span style="font-family: 宋体;">直接输入根据已知文法构造的预测分析表；</span>b.<span style="font-family: 宋体;">输入文法的</span>FIRST(<span style="font-family: 宋体;">α</span>)<span style="font-family: 宋体;">和</span>FOLLOW(U)<span style="font-family: 宋体;">集，由程序自动生成文法的预测分析表；</span>c.<span style="font-family: 宋体;">输入已知文法，由程序自动构造文法的预测分析表。</span></p><p style="text-indent: 24.1pt;">(2)<span style="font-family: 宋体;">所开发的程序可适用于不同的文法和任意输入串，且能判断该文法是否为</span>LL(1)<span style="font-family: 宋体;">文法。</span></p><p style="text-indent: 24.1pt;">(3)<span style="font-family: 宋体;">对输入的任意符号串，所编制的语法分析程序应能正确判断此串是否为文法的句子（句型分析），并要求输出分析过程。</span></p><p><strong>题目4：基于LR(0)方法的语法分析程序（参考教材6.2节）</strong></p><p style="text-indent: 24.1pt;"><strong>目的：</strong><span style="font-family: 宋体;">通过设计、编制和调试一个典型的</span>LR(0)<span style="font-family: 宋体;">语法分析方法，进一步掌握</span>LR<span style="font-family: 宋体;">分析法的语法分析方法。</span></p><p style="text-indent: 24.1pt;"><strong>要求：</strong></p><p style="text-indent: 24.1pt;">(1)<span style="font-family: 宋体;">根据</span>LR(0)<span style="font-family: 宋体;">分析法编写一个语法分析程序，可选择以下一项作为分析算法的输入：</span>a.<span style="font-family: 宋体;">直接输入根据已知文法构造的</span>LR(0)<span style="font-family: 宋体;">分析表；</span>b.<span style="font-family: 宋体;">输入已知文法的项目集规范族和转换函数，由程序自动生成</span>LR(0)<span style="font-family: 宋体;">分析表；</span>c.<span style="font-family: 宋体;">输入已知文法，由程序自动构造识别该文法活前缀</span>DFA<span style="font-family: 宋体;">并生成</span>LR(0)<span style="font-family: 宋体;">分析表。</span></p><p style="text-indent: 24.1pt;">(2)<span style="font-family: 宋体;">所开发的程序可适用于不同的文法和任意输入串，且能判断该文法是否为</span>LR(0)<span style="font-family: 宋体;">文法。</span></p><p style="text-indent: 24.1pt;">(3)<span style="font-family: 宋体;">对输入的任意符号串，所编制的语法分析程序应能正确判断此串是否为文法的句子（句型分析），并要求输出分析过程。</span></p><p><strong>题目5：基于LR(1)方法的语法分析程序（参考教材6.4节）</strong></p><p style="text-indent: 24.1pt;"><strong>目的：</strong><span style="font-family: 宋体;">通过设计、编制和调试一个典型的</span>LR(1)<span style="font-family: 宋体;">语法分析方法，进一步掌握</span>LR<span style="font-family: 宋体;">分析法的语法分析方法。</span></p><p style="text-indent: 24.1pt;"><strong>要求：</strong></p><p style="text-indent: 24.1pt;">(1)<span style="font-family: 宋体;">根据</span>LR(1)<span style="font-family: 宋体;">分析法编写一个语法分析程序，可选择以下一项作为分析算法的输入：</span>a.<span style="font-family: 宋体;">直接输入根据已知文法构造的</span>LR(1)<span style="font-family: 宋体;">分析表；</span>b.<span style="font-family: 宋体;">输入已知文法的项目集规范族和转换函数，由程序自动生成</span>LR(1)<span style="font-family: 宋体;">分析表；</span>c.<span style="font-family: 宋体;">输入已知文法，由程序自动构造识别该文法活前缀</span>DFA<span style="font-family: 宋体;">并生成</span>LR(1)<span style="font-family: 宋体;">分析表。</span></p><p style="text-indent: 24.1pt;">(2)<span style="font-family: 宋体;">所开发的程序可适用于不同的文法和任意输入串，且能判断该文法是否为</span>LR(1)<span style="font-family: 宋体;">文法。</span></p><p style="text-indent: 24.1pt;">(3)<span style="font-family: 宋体;">对输入的任意符号串，所编制的语法分析程序应能正确判断此串是否为文法的句子（句型分析），并要求输出分析过程。</span></p><p><strong>题目6：基于编译原理的公式计算器设计与实现</strong></p><p style="text-indent: 24.1pt;"><strong>目的：</strong><span style="font-family: 宋体;">利用编译原理设计编译器的基本思想，设计实现一个简单的公式计算器，使学生掌握如何应用编译原理中词法分析和语法分析的基本方法，来解决实际应用中的问题。</span></p><p style="text-indent: 24.1pt;"><strong>要求：</strong></p><p style="text-indent: 24.1pt;">(1)<span style="font-family: 宋体;">设计及实现计算表达式的公式计算器，表达式中至少包含＋、－、×、／、（、）等运算符，可以对其进行扩充。</span></p><p style="text-indent: 24.1pt;">(2)<span style="font-family: 宋体;">对于一个给定的表达式，能够检查有无词法错误和语法错误，若有错误能指定出错位置和错误类型。</span></p><p style="text-indent: 24.1pt;">(3)<span style="font-family: 宋体;">给出该表达式的中间表示形式，前缀和后缀表达式。</span></p><p style="text-indent: 24.1pt;">(4)<span style="font-family: 宋体;">输出运算结果，达到公式计算的目的。</span></p><p style="text-indent: 24.1pt;">(5)<span style="font-family: 宋体;">准备多组测试样例，对测试样例进行测试和验证，并对输出结果进行分析。</span></p><p><strong>三、课程设计报告要求</strong></p><p style="text-indent: 24.1pt;"><span style="font-family: 宋体;">学生需在课外查找、阅读和分析相关的知识内容，根据设计内容和完成情况，总结、整理并撰写符合要求的课程设计报告。</span></p><p style="text-indent: 24.1pt;">(1)<span style="font-family: 宋体;">课设报告内容包括：课程设计任务、设计目的、设计思想、主要函数说明、算法描述、程序结构、测试情况、运行结果、设计技巧、心得体会等。</span></p><p style="text-indent: 24.1pt;">(2)<span style="font-family: 宋体;">课设报告用</span>A4<span style="font-family: 宋体;">纸单面打印。封面内容包括“编译原理课程设计”、课程设计题目、姓名、班级、学号、日期等信息，左侧装订。注意排版格式的重要性，具体见模板。</span></p><p><strong>四、课程设计评分和验收</strong></p><p style="text-indent: 24.1pt;">(1)<span style="font-family: 宋体;">课程设计视同课堂教学，要求全体同学按时上机（上午</span>8:00-11:30<span style="font-family: 宋体;">，打卡签到签离），遵守机房要求文明上机。</span></p><p style="text-indent: 24.1pt;">(2)<span style="font-family: 宋体;">验收时学生将设计报告交给负责验收的老师并参加验收，验收时每位学生应重点说明自己所做的分析、设计、开发、测试等工作。</span></p><p style="text-indent: 24.1pt;">(3)<span style="font-family: 宋体;">若有雷同的程序或报告双方都按照不及格处理。</span></p><p style="text-indent: 24.1pt;">(4)<span style="font-family: 宋体;">课程设计主要从分析设计、程序开发、汇报答辩三个方面进行考核和评分。</span></p><p><strong>五、课程设计值班</strong></p><p style="text-indent: 24.1pt;"><span style="font-family: 宋体;">孙胜涛、陈真、陈晶、陈子军、孔维航、赵静</span>6<span style="font-family: 宋体;">人值班（里仁第三机房）。</span></p><p style="text-indent: 24.1pt;"><br></p><table style="width: 100%;"><tbody><tr><td colSpan="1" rowSpan="1" width="191">时 间</td><td colSpan="1" rowSpan="1" width="334">值班教师</td></tr><tr><td colSpan="1" rowSpan="1" width="191">周一（1月6日）上午</td><td colSpan="1" rowSpan="1" width="334">孙胜涛，陈 晶，赵 静</td></tr><tr><td colSpan="1" rowSpan="1" width="191">周二（1月7日）上午</td><td colSpan="1" rowSpan="1" width="334">陈 真，陈 晶，孔维航</td></tr><tr><td colSpan="1" rowSpan="1" width="191">周三（1月8日）上午</td><td colSpan="1" rowSpan="1" width="334">孙胜涛，陈子军，孔维航</td></tr><tr><td colSpan="1" rowSpan="1" width="191">周四（1月9日）上午</td><td colSpan="1" rowSpan="1" width="334">陈 真，陈子军，赵 静</td></tr><tr><td colSpan="1" rowSpan="1" width="191">周五（1月10日）上午</td><td colSpan="1" rowSpan="1" width="334">全体值班 （可提前验收部分做完的学生）</td></tr><tr><td colSpan="1" rowSpan="1" width="191">周五（1月10日）下午</td><td colSpan="1" rowSpan="1" width="334">全体验收</td></tr></tbody></table><p style="text-indent: 24.1pt;"><strong>验收分工：</strong></p><p style="text-indent: 24.1pt;">17<span style="font-family: 宋体;">计</span>1<span style="font-family: 宋体;">班</span> <span style="font-family: 宋体;">孙胜涛</span></p><p style="text-indent: 24.1pt;">17<span style="font-family: 宋体;">计</span>2<span style="font-family: 宋体;">班</span> <span style="font-family: 宋体;">陈晶</span></p><p style="text-indent: 24.1pt;">17<span style="font-family: 宋体;">计</span>3<span style="font-family: 宋体;">班</span> <span style="font-family: 宋体;">陈子军</span></p><p style="text-indent: 24.1pt;">17<span style="font-family: 宋体;">计</span>4<span style="font-family: 宋体;">班</span> <span style="font-family: 宋体;">陈真</span></p><p style="text-indent: 24.1pt;">17<span style="font-family: 宋体;">计</span>5<span style="font-family: 宋体;">班</span> <span style="font-family: 宋体;">孔维航</span></p><p style="text-indent: 24.1pt;">17<span style="font-family: 宋体;">计</span>6<span style="font-family: 宋体;">班</span> <span style="font-family: 宋体;">赵静</span></p><p style="text-indent: 24.1pt;"> &nbsp;</p><p><br></p><p style="text-align: center;">燕山大学</p><p style="text-align: center;"><span style="font-family: 黑体;">编译原理课程设计报告</span></p><p style="text-indent: 33.15pt;"><strong> &nbsp; &nbsp; &nbsp; </strong></p><p style="text-align: center;"><span style="font-family: 黑体;">题目</span><u>XXX</u></p><p style="text-indent: 28pt;"> </p><p style="text-indent: 28pt;"> </p><p style="text-indent: 28pt;"> </p><p style="text-indent: 28pt;"> </p><p style="text-indent: 28pt;"> </p><p style="text-indent: 28pt;"> </p><p style="text-indent: 28pt;"> </p><p><span style="font-family: 黑体;">学</span> &nbsp; &nbsp;<span style="font-family: 黑体;">院</span><u> &nbsp; &nbsp; 信息科学与工程学院 &nbsp;</u></p><p><span style="font-family: 黑体;">年级专业</span><u> &nbsp; &nbsp; 2017级计算机 &nbsp;班 &nbsp; &nbsp;</u></p><p><span style="font-family: 黑体;">学生姓名</span><u> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </u></p><p><span style="font-family: 黑体;">学生学号</span><u> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </u></p><p><span style="font-family: 黑体;">设计日期</span><u> &nbsp; &nbsp; 2020年1月6 - 10日 &nbsp; </u></p><p><br></p><h2 style="text-align: center;"><span style="font-family: 黑体;">内容提纲</span></h2><h2>1 <span style="font-family: 黑体;">概述</span></h2><p style="text-indent: 21.85pt;"><span style="font-family: 宋体;">目的与意义</span></p><p style="text-indent: 21.85pt;"><span style="font-family: 宋体;">主要完成的任务</span></p><p style="text-indent: 21.85pt;"><span style="font-family: 宋体;">使用的开发工具</span></p><p style="text-indent: 21.85pt;"><span style="font-family: 宋体;">解决的主要问题</span></p><p style="text-indent: 21.85pt;"><span style="font-family: 宋体;">课程设计计划</span></p><h2>2 <span style="font-family: 黑体;">使用的基本概念和原理</span></h2><p style="text-indent: 21.85pt;"><span style="font-family: 宋体;">概述自己题目中使用到的编译原理课程中的相关概念和原理</span></p><p style="text-indent: 21.85pt;"><span style="font-family: 宋体;">例如：</span>EBNF<span style="font-family: 宋体;">范式</span> &nbsp;<span style="font-family: 宋体;">状态转换图</span></p><p style="text-indent: 21.85pt;">NFA<span style="font-family: 宋体;">，</span>DFA</p><p style="text-indent: 21.85pt;"><span style="font-family: 宋体;">词法分析程序和语法分析程序的接口方式</span></p><p style="text-indent: 21.85pt;">FIRST<span style="font-family: 宋体;">集，</span>FOLLOW<span style="font-family: 宋体;">集，</span>SELECT<span style="font-family: 宋体;">集</span></p><p style="text-indent: 21.85pt;">LL(1)<span style="font-family: 宋体;">文法，预测分析表</span></p><p style="text-indent: 21.85pt;">LR(1)<span style="font-family: 宋体;">文法</span></p><h2>3 <span style="font-family: 黑体;">总体设计</span></h2><p style="text-indent: 21.85pt;"><span style="font-family: 宋体;">确定基本的技术路线：面向过程还是面向对象；</span></p><p style="text-indent: 21.85pt;"><span style="font-family: 宋体;">描述软件的总体结构、模块功能及关系、总体流程。</span></p><h2>4 <span style="font-family: 黑体;">详细设计</span></h2><p style="text-indent: 21.85pt;"><span style="font-family: 宋体;">描述模块内部的流程和实现算法，画出流程图；</span></p><p style="text-indent: 21.85pt;"><span style="font-family: 宋体;">描述要设计的主要过程、类、对象、函数和它们的参数，要给出具体的名称和参数及其解释。</span></p><h2>5 <span style="font-family: 黑体;">编码实现</span></h2><p style="text-indent: 21.85pt;"><span style="font-family: 宋体;">开发环境的设置和建立；</span></p><p style="text-indent: 21.85pt;"><span style="font-family: 宋体;">程序设计时要注意的事项；</span></p><p style="text-indent: 21.85pt;"><span style="font-family: 宋体;">关键构件</span>/<span style="font-family: 宋体;">插件的特点和使用；</span></p><p style="text-indent: 21.85pt;"><span style="font-family: 宋体;">主要程序的代码设计及注释；</span></p><p style="text-indent: 21.85pt;"><span style="font-family: 宋体;">解决的技术难点、经常犯的错误。</span></p><h2>6 <span style="font-family: 黑体;">测试和试运行</span></h2><p style="text-indent: 21.85pt;"><span style="font-family: 宋体;">采用的测试方法和测试用例；</span></p><p style="text-indent: 21.85pt;"><span style="font-family: 宋体;">测试时出现过的问题及其解决方法。</span></p><h2>7. <span style="font-family: 黑体;">总结</span></h2><p style="text-indent: 21.85pt;"><span style="font-family: 宋体;">总结说明课程设计的完成情况、未完成的部分；</span></p><p style="text-indent: 21.85pt;"><span style="font-family: 宋体;">收获、经验、教训和感受等。</span></p><h2>8. <span style="font-family: 黑体;">参考文献</span></h2><p style="text-indent: 21.85pt;"><span style="font-family: 宋体;">列出课程设计过程中所使用的参考文献，包括</span>Web<span style="font-family: 宋体;">上的资源。</span></p><h2><a href="" target="">9. </a>格式要求</h2><p>(1) &nbsp; &nbsp; <span style="font-family: 宋体;">论文开本为</span>A4<span style="font-family: 宋体;">；</span></p><p>(2) &nbsp; &nbsp; <span style="font-family: 宋体;">报告书标题用小</span>2<span style="font-family: 宋体;">号黑体字，横向居中排放；</span></p><p>(3) &nbsp; &nbsp; 1<span style="font-family: 宋体;">级标题用</span>3<span style="font-family: 宋体;">号黑体；</span></p><p>(4) &nbsp; &nbsp; 2<span style="font-family: 宋体;">级标题用</span>4<span style="font-family: 宋体;">号黑体；</span></p><p>(5) &nbsp; &nbsp; 3<span style="font-family: 宋体;">级标题用小</span>4<span style="font-family: 宋体;">号黑体；</span></p><p>(6) &nbsp; &nbsp; <span style="font-family: 宋体;">正文用小四号宋体字，行间距为固定值</span>22<span style="font-family: 宋体;">磅；</span></p><p>(7) &nbsp; &nbsp; <span style="font-family: 宋体;">各层次标题均不得置于页面的最后一行，即不允许</span>“<span style="font-family: 宋体;">背题</span>”<span style="font-family: 宋体;">；</span></p><p>(8) &nbsp; &nbsp; <span style="font-family: 宋体;">图下方要有图号和图名，表上方要有表号和表名；</span></p><p>(9) &nbsp; &nbsp; <span style="font-family: 宋体;">参考文献编写项目和顺序规定如下：</span></p><p style="text-indent: 21.85pt;">[<span style="font-family: 宋体;">序号</span>] <span style="font-family: 宋体;">作者</span>.<span style="font-family: 宋体;">书名</span>..<span style="font-family: 宋体;">出版地</span>:<span style="font-family: 宋体;">出版者</span>,<span style="font-family: 宋体;">出版年</span>:<span style="font-family: 宋体;">引用部分起止页</span></p><p style="text-indent: 21.85pt;">[<span style="font-family: 宋体;">序号</span>] <span style="font-family: 宋体;">作者</span>.<span style="font-family: 宋体;">文章名</span>.<span style="font-family: 宋体;">学术刊物名</span>,<span style="font-family: 宋体;">年</span>,<span style="font-family: 宋体;">卷</span>(<span style="font-family: 宋体;">期</span>):<span style="font-family: 宋体;">引用部分起止页</span></p><p style="text-indent: 21.85pt;"> &nbsp;</p><p style="text-align: center;"><span style="font-family: 黑体;"> </span></p><p style="text-align: center;"><span style="font-family: 黑体;"> </span></p><p style="text-align: center;"><span style="font-family: 黑体;"> </span></p><p style="text-align: center;"><span style="font-family: 黑体;">编译原理课程设计成绩单</span></p><p style="text-align: center;"> </p><p style="text-align: center;"> </p><p style="text-align: center;"><br></p><table style="width: 100%;"><tbody><tr><td colSpan="1" rowSpan="1" width="165">姓名</td><td colSpan="1" rowSpan="1" width="259">xxx</td></tr><tr><td colSpan="1" rowSpan="1" width="165">班级</td><td colSpan="1" rowSpan="1" width="259">2017计算机x班</td></tr><tr><td colSpan="1" rowSpan="1" width="165">学号</td><td colSpan="1" rowSpan="1" width="259">2017xxx</td></tr><tr><td colSpan="1" rowSpan="1" width="165">分析设计 （满分30分）</td><td colSpan="1" rowSpan="1" width="259"></td></tr><tr><td colSpan="1" rowSpan="1" width="165">程序开发 （满分40分）</td><td colSpan="1" rowSpan="1" width="259"></td></tr><tr><td colSpan="1" rowSpan="1" width="165">汇报答辩 （满分30分）</td><td colSpan="1" rowSpan="1" width="259"></td></tr><tr><td colSpan="1" rowSpan="1" width="165">总成绩</td><td colSpan="1" rowSpan="1" width="259"></td></tr></tbody></table><p style="text-align: center;"> </p><p style="text-align: center;"> </p><p style="text-align: center;"> </p><p> </p><p style="text-indent: 84pt; text-align: left;"><span style="font-family: 宋体;">评阅教师签字：</span></p><p style="text-indent: 84pt; text-align: left;"> </p><p style="text-align: center;"> </p><p style="text-indent: 112pt; text-align: left;"><span style="font-family: 宋体;">验收日期：</span> &nbsp; &nbsp; &nbsp; &nbsp;<span style="font-family: 宋体;">年</span> &nbsp; &nbsp; <span style="font-family: 宋体;">月</span> &nbsp; &nbsp; <span style="font-family: 宋体;">日</span></p><p style="text-indent: 24.1pt;"> </p><p><br></p>', CAST(N'2022-08-10T23:32:35.327' AS DateTime), CAST(N'2022-08-10T23:32:35.327' AS DateTime))
GO
INSERT [dbo].[courseInfo] ([id], [title], [introduction], [create_time], [update_time], [teacher]) VALUES (N'c17df457eb87417da8564fd8184dde13', N'编译原理', N'<p style="text-align: center;"><img src="http://localhost:8080/uploadFile/courseInfoPicture/2022/08/11/ea58506da7144d74af2fc85e2a1b94a2.webp" alt="courseInfoImage" data-href="" style=""></p><p style="text-align: left;"><span style="color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 14px;">编译原理，经过对普通编译原理分析，形成了以词典为核心，结合词的数据结构完成编译过程的自成体系技术理论。通过分析词法生成词典（</span><span style="color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 14px;"><strong>词典发生器</strong></span><span style="color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 14px;">），分析语法生成局部代码，并建立数据指针（</span><span style="color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 14px;"><strong>翻译机</strong></span><span style="color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 14px;">），组装局部代码生成目标机器语言流并建立程序调用过的对象、指针等数据流空间，最终完成可执行程序（</span><span style="color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 14px;"><strong>装配器</strong></span><span style="color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 14px;">）三个模糊过程（因为这些过程都离不开词典，编译中间会发生相互影响），把高级</span><a href="https://baike.baidu.com/item/%E8%AE%A1%E7%AE%97%E6%9C%BA%E8%AF%AD%E8%A8%80/4456504" target="_blank" style="text-indent: 28px; text-align: start;">计算机语言</a><span style="color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 14px;">加工成为计算机</span><a href="https://baike.baidu.com/item/%E6%9C%BA%E5%99%A8%E8%AF%AD%E8%A8%80" target="_blank" style="text-indent: 28px; text-align: start;">机器语言</a><span style="color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 14px;">代码流，这就是我们提出的编译原理。</span></p>', CAST(N'2022-07-19T09:27:52.283' AS DateTime), CAST(N'2022-08-11T10:34:58.493' AS DateTime), N'')
GO
INSERT [dbo].[courseLevelIIIProject] ([id], [courseid], [mainContent], [create_time], [update_time]) VALUES (N'a7ab2304645f45b087f62aaf85c5d1cf', N'c17df457eb87417da8564fd8184dde13', N'<p style="text-align: center;"><span style="font-family: 黑体;">《编译原理》课程</span></p><p style="text-align: center;"><span style="font-family: 黑体;">三级项目实施计划书</span></p><p style="text-align: center;"><span style="font-family: 黑体;"> </span></p><p style="text-align: center;"><strong>PL/0编译程序的研究与改进</strong></p><p style="text-align: center;"><strong> </strong></p><p style="text-align: center;">2019年秋季学期</p><p> </p><p style="text-align: center;">（起止时间：第8周 ~ 第15周）</p><p style="text-align: center;"> </p><p style="text-align: center;">2019<span style="font-family: 宋体;">年</span>9<span style="font-family: 宋体;">月</span></p><p style="text-align: center;"> <strong> </strong></p><p style="text-align: center;"><br></p><p><strong>一、项目概览</strong></p><p style="text-indent: 24pt; text-align: justify;">本课程研究项目是《编译原理》课程学习的一个重要组成部分。通过课程研究项目的实施，使学生在掌握编译原理基本内容和基本技术的基础上，结合一种比较简单的程序设计语言PL/0的编译程序的开发深入理解并掌握编译程序的相关知识、设计与开发方法，掌握研究（开发）技术报告、知识产权文件的撰写方法，使学生具备独立设计系统软件开发的基本能力，提高综合应用已有知识解决工程实际问题的能力，更好地培养计算机专业学生的专业技术能力和综合素质。</p><p style="text-align: justify;"><strong>二、实训目的</strong></p><p style="text-indent: 24.1pt; text-align: justify;">1. &nbsp; &nbsp;掌握编译程序的设计原理和方法；</p><p style="text-indent: 24.1pt; text-align: justify;">2. &nbsp; &nbsp;掌握编译程序的开发技术；</p><p style="text-indent: 24.1pt; text-align: justify;">3. &nbsp; &nbsp;掌握编程规范；</p><p style="text-indent: 24.1pt; text-align: justify;">4. &nbsp; &nbsp;掌握软件文档的撰写方法；</p><p style="text-indent: 24.1pt; text-align: justify;">5. &nbsp; &nbsp;培养团队合作精神、项目组织与管理、交流表达能力；</p><p style="text-indent: 24.1pt; text-align: justify;">6. &nbsp; &nbsp;培养文件管理、资料保存、备份能力及意识。</p><p style="text-align: justify;"><strong>三、主要内容</strong></p><p style="text-align: justify;">1. &nbsp; &nbsp; 编译程序的学习、研究、设计与开发；</p><p style="text-align: justify;">2. &nbsp; &nbsp; 所选项目论证报告与可行性分析报告的撰写训练；</p><p style="text-align: justify;">3. &nbsp; &nbsp; 功能模块机程序流程图的绘制；</p><p style="text-align: justify;">4. &nbsp; &nbsp; 编译各阶段实现技术的的确定；</p><p style="text-align: justify;">5. &nbsp; &nbsp; 编译程序的开发；</p><p style="text-align: justify;">6. &nbsp; &nbsp; 软件文档、项目报告的撰写；</p><p style="text-align: justify;">7. &nbsp; &nbsp; 项目结题答辩汇报与评比。</p><p><strong>四、项目研究小组的主要分工</strong></p><p style="text-indent: 24pt;">1. 每5-6名同学一组（可根据学生总数和时间情况灵活调整），相互协作完成《PL/0编译程序的研究与改进》或其他经审定符合要求的题目所规定的研究内容，内容可以包括但并不限于这些内容；</p><p style="text-indent: 24pt;">2. 每个小组要在项目报告中标明每个人在总体工作中的贡献、工作量权重或者每个人负责的内容；</p><p style="text-indent: 24pt;">3. 研究内容的质量会影响到每组的最终成绩，鼓励学生自己在项目框架内选取感兴趣的研究内容进行创新设计和深入研究。</p><p><strong>五、项目进程安排</strong></p><p style="text-indent: 24pt;">时间安排：自第8周开始，第15周（12月初）阶段性结束，并组织答辩和比赛。</p><p style="text-indent: 24pt;"><u>《PL/0编译程序的研究与改进》自布置完题目后即开始在课下进行，最后一周安排两次课上时间进行答辩和比赛。项目实训地点：平时在宿舍、机房或实验室，答辩和评比在上课教室（学生带笔记本）。项目实训内容及时间规划见表1.</u></p><p style="text-indent: 24pt; text-align: center;">表1 &nbsp;项目实训内容及时间安排</p><p style="text-indent: 24pt; text-align: center;"><br></p><table style="width: 100%;"><tbody><tr><td colSpan="1" rowSpan="1" width="87">所属课程</td><td colSpan="1" rowSpan="1" width="113">时间安排</td><td colSpan="1" rowSpan="1" width="288">主要内容</td><td colSpan="1" rowSpan="1" width="56">备注</td></tr><tr><td colSpan="1" rowSpan="10" width="87">编译原理</td><td colSpan="1" rowSpan="1" width="113">第1-4学时</td><td colSpan="1" rowSpan="1" width="288">研究PL/0编译程序的总体结构、头文件及用到的数据结构和变量</td><td colSpan="1" rowSpan="1" width="56"></td></tr><tr><td colSpan="1" rowSpan="1" width="113">第5-6学时</td><td colSpan="1" rowSpan="1" width="288">研究词法分析功能的实现原理</td><td colSpan="1" rowSpan="1" width="56"></td></tr><tr><td colSpan="1" rowSpan="1" width="113">第7-10学时</td><td colSpan="1" rowSpan="1" width="288">研究语法语义分析功能的实现原理和技术</td><td colSpan="1" rowSpan="1" width="56"></td></tr><tr><td colSpan="1" rowSpan="1" width="113">第11-14学时</td><td colSpan="1" rowSpan="1" width="288">研究语法语义分析功能的实现原理和技术</td><td colSpan="1" rowSpan="1" width="56"></td></tr><tr><td colSpan="1" rowSpan="1" width="113">第15-18学时</td><td colSpan="1" rowSpan="1" width="288">研究目标代码结构和代码生成的实现原理和技术</td><td colSpan="1" rowSpan="1" width="56"></td></tr><tr><td colSpan="1" rowSpan="1" width="113">第19-20学时</td><td colSpan="1" rowSpan="1" width="288">研究错误处理的原理和技术</td><td colSpan="1" rowSpan="1" width="56"></td></tr><tr><td colSpan="1" rowSpan="1" width="113">第21-24学时</td><td colSpan="1" rowSpan="1" width="288">研究目标代码解释执行时的存储分配</td><td colSpan="1" rowSpan="1" width="56"></td></tr><tr><td colSpan="1" rowSpan="1" width="113">第25-30学时</td><td colSpan="1" rowSpan="1" width="288">扩充PL/0编译程序的功能。以语法分析部分为例，可以增加处理更多语法成分的功能，如可处理一维数组、++、--、+=、-=、*=、/=、%（取余）、！（取反）、repeat、for、else、开方、处理注释、错误提示、标示符或变量中可以有下划线等。</td><td colSpan="1" rowSpan="1" width="56"></td></tr><tr><td colSpan="1" rowSpan="1" width="113">第31-32学时</td><td colSpan="1" rowSpan="1" width="288">项目报告的撰写</td><td colSpan="1" rowSpan="1" width="56"></td></tr><tr><td colSpan="1" rowSpan="1" width="113">第33-36学时</td><td colSpan="1" rowSpan="1" width="288">项目实施总结和汇报比赛</td><td colSpan="1" rowSpan="1" width="56"></td></tr></tbody></table><p><strong>六、基本要求</strong></p><p style="text-indent: 24pt; text-align: justify;">1．项目期间，学生必须严格遵守实验室规章制度，坚决杜绝一切可能危及安全的事件发生，同指导教师一起创造一个良好的实训环境。</p><p style="text-indent: 24pt; text-align: justify;">2．项目期间，严格考勤。学生必须按时参加项目研究，不准无故缺席、早退。在实训中违反实验室规章制度等学生，将暂停或取消实训资格。在项目研究中表现突出的学生将给予奖励，并记入考核成绩。</p><p style="text-indent: 24pt; text-align: justify;">3．项目期间，及时整理当天的实训笔记、实训过程资料、实训心得及交流体会，进而积累更多的实践经验。同时，收集有关的技术资料，为今后的学习与工作做好充分准备。</p><p style="text-indent: 24pt; text-align: justify;">4．做好项目研究总结，撰写报告。</p><p><strong>七、考核方式</strong></p><p style="text-indent: 24pt; text-align: justify;">指导教师根据学生出勤情况、编译程序的设计开发及测试、研究报告等方面情况综合评定每个学生的项目成绩。成绩评定标准见表2。</p><p><strong>八、研究项目报告（具体格式见模板）</strong></p><p style="text-indent: 24pt;">项目报告主要包括以下主要内容：</p><p style="text-indent: 24pt; text-align: justify;">1、摘要：简明、确切地记述报告的重要内容，150字左右。</p><p style="text-indent: 24pt; text-align: justify;">2、前言：前言简要说明项目实施的背景、目的和范围，介绍相关领域所做的工作和特色，项目的切入点及预期结果等。</p><p style="text-indent: 24pt; text-align: justify;">3、研究报告正文：项目任务、设计思想，技术路线，项目主要内容，主要变量说明，算法描述，程序结构，调试情况，运行结果，设计技巧，总结等。</p><p style="text-indent: 24pt; text-align: justify;">4、参考文献。</p><p style="text-indent: 24pt;"><strong>注 意：</strong></p><p style="text-indent: 24pt;">（1）报告总字数要求3000字以上，内容完整，图表规范。</p><p style="text-indent: 24pt;">（2）每个课程小组都要提交单独的三级项目报告。</p><p style="text-indent: 24pt;">（3）各组报告所选取内容要独立完成，若严重雷同，将会严重影响成绩；同时各个小组成员也要有明确的分工和合作。</p><p style="text-indent: 24pt;">（4）要在汇报的前一天前提交研究报告电子版和打印版文档。</p><p><strong>九、参考资料的来源</strong></p><p style="text-indent: 24pt; text-align: justify;">通过校园网在我校订阅的电子资料库中可以搜索到大量的相关参考资料，同学们也可到学校的图书馆查找纸质期刊资料。</p><p><strong>十、严禁剽窃抄袭行为</strong></p><p style="text-indent: 24pt; text-align: justify;">发现有剽窃抄袭行为的，研究项目成绩为零。剽窃抄袭行为主要指：</p><p style="text-indent: 24pt; text-align: justify;">从参考资料中引用有关思想或结果，但没有在报告中指明该思想或结果的出处并且没有与你的思想或研究结果进行清晰的区分。</p><p style="text-indent: 24pt; text-align: justify;">直接拷贝别人的研究结果当作自己的研究结果。</p><p><strong>十一、编程注意事项</strong></p><p style="text-indent: 24pt; text-align: justify;">1. 编程习惯指导：如程序描述、注释、缩进、空格、变量命名等，强制学生逐渐养成良好的编程习惯。</p><p style="text-indent: 24pt; text-align: justify;">2. 文件管理指导：使学生明白学会正确的文件管理技术非常重要，优秀的软件开发者往往具有很好的文件管理技巧。</p><p style="text-indent: 24pt; text-align: justify;">3. 备份工作指导：学生可能意识不到备份的重要性，应该强制要求学生采用某种备份策略，如将资料备份到不同的设备上。</p><p style="text-indent: 24pt; text-align: center;">表2 &nbsp;成绩评定标准</p><table style="width: 100%;"><tbody><tr><td colSpan="1" rowSpan="1" width="64">序号</td><td colSpan="1" rowSpan="1" width="117">评定条目</td><td colSpan="1" rowSpan="1" width="308">评定标准</td><td colSpan="1" rowSpan="1" width="77">备注</td></tr><tr><td colSpan="1" rowSpan="1" width="64">1</td><td colSpan="1" rowSpan="1" width="117">PL/0编译程序的研究 （共30分）</td><td colSpan="1" rowSpan="1" width="308">本部分共包含6项任务，共20分，每项任务占总分的20%（即5分）： （1）对PL/0编译程序的总体结构、头文件及用到的数据结构和变量的理解程度； （2）对词法分析功能的熟悉及理解程度； （3）对语法语义分析功能的熟悉及理解程度； （4）对目标代码结构和代码生成的熟悉及理解程度； （5）对错误处理的熟悉及理解程度； （6）对目标代码解释执行时的存储分配的熟悉及理解程度。</td><td colSpan="1" rowSpan="1" width="77"></td></tr><tr><td colSpan="1" rowSpan="1" width="64">2</td><td colSpan="1" rowSpan="1" width="117">PL/0编译程序的改进及相关技术报告的撰写 （共60分）</td><td colSpan="1" rowSpan="1" width="308">本部分无明确的任务量要求，主要对PL/0编译程序上述各部分的功能进行改进及完善，并能通过测试用例证实项目组所进行的改进和完善。项目组所做的改进越多，功能越强大，分数越高。</td><td colSpan="1" rowSpan="1" width="77"></td></tr><tr><td colSpan="1" rowSpan="1" width="64">3</td><td colSpan="1" rowSpan="1" width="117">项目考核，演讲答辩与比赛 （共10分）</td><td colSpan="1" rowSpan="1" width="308">通过程序检查，项目汇报、展演或比赛等方式进行实际测评、综合评分，对于创新设计及完整体现OBE理念的团队给予适当奖励分数。</td><td colSpan="1" rowSpan="1" width="77"></td></tr></tbody></table><p style="text-align: justify;"><strong>注</strong>：不参加课程项目的学生本门课程计零分。</p><p style="text-align: justify;">三级项目报告封面和模板见下页。</p><p style="text-align: justify;"> &nbsp;</p><p style="text-align: center;"> </p><p style="text-align: center;"> </p><p style="text-align: center;"><span style="font-family: 楷体;">《编译原理》三级项目报告</span></p><p style="text-align: center;"> </p><p style="text-align: center;">PL/0<span style="font-family: 楷体;">编译程序的研究与改进</span></p><p> </p><p style="text-indent: 21pt; text-align: left;"><span style="font-family: 宋体;">班级和组号: 2017级计算机x班 第x组</span></p><p style="text-indent: 21pt; text-align: left;"><span style="font-family: 宋体;">成员及分工：xxx(xx角色)、xxx（xx角色）、xxx（xx角色）、</span></p><p style="text-indent: 105pt; text-align: left;"><span style="font-family: 宋体;">xxx(xx角色)、xxx（xx角色）、xxx（xx角色）</span></p><p style="text-align: left;">指 导 教 师：孙胜涛、陈真</p><p style="text-align: left;"> </p><p> </p><p> </p><p> </p><p> </p><p> </p><p> </p><p> </p><p style="text-indent: 21pt;">2019<span style="font-family: 宋体;">年</span>12<span style="font-family: 宋体;">月</span></p><p> &nbsp;</p><p> </p><p><span style="font-family: 宋体;">项目名称</span>（宋体小二号字）</p><p>作者1，作者2，作者3</p><p>（燕山大学 信息科学与工程学院 计算机科学与工程系）</p><p style="text-indent: 21pt;"><span style="font-family: 宋体;">摘要：字数一般在</span>150<span style="font-family: 宋体;">字以内。摘要必须反映全文中心内容，内容应包括目的、过程及方法、结论。要求论述简明、逻辑性强、尽量用短句。</span></p><h1>1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="font-family: 宋体;">标题一</span></h1><p style="text-indent: 21pt;"><span style="font-family: 宋体;">可接下一级标题或正文。</span></p><p style="text-indent: 21pt;"><span style="font-family: 宋体;">论文要求主题明确、数据可靠、逻辑严密、文字精炼。</span></p><h2>1.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="font-family: 宋体;">标题</span>1.1</h2><p style="text-indent: 21pt;"><span style="font-family: 宋体;">题名应恰当简明地反映文章的特定内容，要便于编制题录、索引和选定关键词。不宜使用非公知的缩略词、首字母缩写字符、代号等，也不能将原形词和缩略词同时列出。</span></p><p style="text-indent: 21pt;"><span style="font-family: 宋体;">下接正文。页码采用</span>B5<span style="font-family: 宋体;">纸型纵向排列，页边距上为</span>3cm<span style="font-family: 宋体;">、下为，左右均为。文字大小规定如下：摘要、图名、表名及内容、参考文献均为小五号字，正文中除标题外均为五号字，标题见样例，均采用宋体。</span></p><p style="text-indent: 21pt;"><span style="font-family: 宋体;">文中各级标题采用阿拉伯数字分三级编序，且一律左顶格排版。一级标题形如</span>1<span style="font-family: 宋体;">，</span>2<span style="font-family: 宋体;">，</span>3<span style="font-family: 宋体;">，</span>…<span style="font-family: 宋体;">排序；二级标题形如</span>1.1,1.2,…<span style="font-family: 宋体;">排序；三级标题形如</span>,1.1.2,…<span style="font-family: 宋体;">排序。</span></p><p><span style="font-family: 宋体;">表1 中文表题居中（表随文出现）</span></p><table style="width: 100%;"><tbody><tr><td colSpan="1" rowSpan="1" width="117">基本要求</td><td colSpan="1" rowSpan="1" width="417">表中文字中文采用小5号宋体。</td></tr><tr><td colSpan="1" rowSpan="1" width="117"></td><td colSpan="1" rowSpan="1" width="417"></td></tr><tr><td colSpan="1" rowSpan="1" width="117"></td><td colSpan="1" rowSpan="1" width="417"></td></tr></tbody></table><p><span style="font-family: 宋体;">注： 表注采用小5号宋体</span></p><h1>2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="font-family: 宋体;">标题二</span></h1><p style="text-indent: 21pt;"><span style="font-family: 宋体;">可接下一级标题或正文。</span></p><p style="text-indent: 21pt;">……</p><h1>3 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="font-family: 宋体;">标题三</span></h1><p style="text-indent: 21pt;">……</p><p> </p><p><strong>参考文献：</strong></p><p>[1] &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="font-family: 宋体;">作者</span>1[<span style="font-family: 宋体;">，作者</span>2<span style="font-family: 宋体;">，作者</span>3][<span style="font-family: 宋体;">，等</span>]. <span style="font-family: 宋体;">期刊论文题名</span>[J]. <span style="font-family: 宋体;">刊名，出版年份，卷（期）：起止页码</span>.</p><p>[2] &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="font-family: 宋体;">作者</span>. <span style="font-family: 宋体;">书名</span>[M]. <span style="font-family: 宋体;">版本，出版地：出版者，出版年</span>. <span style="font-family: 宋体;">起止页码</span>.</p><p><br></p>', CAST(N'2022-08-10T22:51:26.060' AS DateTime), CAST(N'2022-08-10T23:03:55.677' AS DateTime))
GO
INSERT [dbo].[courseOutline] ([id], [courseid], [mainContent], [create_time], [update_time]) VALUES (N'a4e0cb4b6218437abea6ac494ecbecc0', N'c17df457eb87417da8564fd8184dde13', N'<p style="text-align: center;"><span style="font-family: 黑体;">编译原理（三级项目）课程教学大纲</span></p><table style="width: 100%;"><tbody><tr><td colSpan="1" rowSpan="1" width="76">英文名称：</td><td colSpan="1" rowSpan="1" width="275">Compiler Principles (Third-level project)</td><td colSpan="1" rowSpan="1" width="82">课程编码：</td><td colSpan="1" rowSpan="1" width="172">04112430</td></tr><tr><td colSpan="1" rowSpan="1" width="76">学 时：</td><td colSpan="1" rowSpan="1" width="275">48</td><td colSpan="1" rowSpan="1" width="82">学 分：</td><td colSpan="1" rowSpan="1" width="172">3.0</td></tr><tr><td colSpan="1" rowSpan="1" width="76">课程性质：</td><td colSpan="1" rowSpan="1" width="275">专业必选课</td><td colSpan="1" rowSpan="1" width="82">课程类别：</td><td colSpan="1" rowSpan="1" width="172">理论课</td></tr></tbody></table><p><span style="font-family: 黑体;">先修课程：计算机应用基础与程序设计、离散数学、数据结构</span></p><p><span style="font-family: 黑体;">开课学期：第</span>5<span style="font-family: 黑体;">学期</span> </p><p><span style="font-family: 黑体;">适用专业：计算机科学与技术</span></p><p><span style="font-family: 黑体;">一、课程教学目标</span></p><p style="text-indent: 20pt;">1、能够综合运用数学、数据结构及程序设计的基本知识，了解程序设计语言编译程序构造的基本原理。</p><p style="text-indent: 20pt;">2、能够掌握编译程序设计的基本方法。</p><p style="text-indent: 20pt;">3、能够了解和掌握编译程序的主要实现技术，以及一些自动构造工具。</p><p style="text-indent: 20pt;">4、能够掌握系统软件和软件工具的开发过程，了解编译程序开发的新技术和方法，并具备一定的国际视野。</p><p><span style="font-family: 黑体;">二、课程教学目标与毕业要求的对应关系</span></p><p><span style="font-family: 黑体;"> </span></p><p><br></p><table style="width: 100%;"><tbody><tr><td colSpan="1" rowSpan="1" width="181">毕业要求</td><td colSpan="1" rowSpan="1" width="302">指标点</td><td colSpan="1" rowSpan="1" width="121">课程教学目标</td></tr><tr><td colSpan="1" rowSpan="2" width="181">1、问题分析: 能够将计算机软硬件系统相关的基础理论知识用于计算机软硬件系统的抽象、分析，并通过文献研究分析计算机软硬件系统中的复杂工程问题，以获得有效结论，为系统方案设计提供依据；</td><td colSpan="1" rowSpan="1" width="302">1-22-2掌握分析计算机软硬件系统所需的专业基础知识和基本原理，具有选择合适数据结构和算法求解具2-2掌握分析计算机软硬件系统所需的专业基础知识和基本原理，具有选择合适数据结构和算法求解具体问题的能力。</td><td colSpan="1" rowSpan="2" width="121">教学目标1</td></tr><tr><td colSpan="1" rowSpan="1" width="302">1-42-4能够针对计算机软硬件系统中存在的复杂工程问题提出有效的解决方法。</td></tr><tr><td colSpan="1" rowSpan="1" width="181">2、设计/开发解决方案: 能够应用计算机软硬件系统的基本原理和方法，设计满足特定需求的合理方案，并能够在设计环节中体现创新意识，考虑社会、健康、安全、法律、文化以及环境等因素；</td><td colSpan="1" rowSpan="1" width="302">2-13-1掌握设计/开发实际工程问题解决方案所需要的计算机科学与技术方面的专业知识和技术手段。</td><td colSpan="1" rowSpan="1" width="121">教学目标2</td></tr><tr><td colSpan="1" rowSpan="1" width="181">3、研究: 能够利用计算机学科的基本概念、知识结构，典型方法，建立数字化、算法、模块化与层次化等核心专业意识，对计算机软硬件系统中的复杂工程问题进行研究，并通过信息综合得到合理有效的结论；</td><td colSpan="1" rowSpan="1" width="302">3-24-2掌握计算机科学与技术专业的基本理论以解释计算机实际工程问题的科学原理。</td><td colSpan="1" rowSpan="1" width="121">教学目标3</td></tr><tr><td colSpan="1" rowSpan="2" width="181">4、沟通: 能够与业界同行及社会公众进行有效沟通和交流，并具备一定的国际视野，能够在跨文化背景下进行沟通和交流；</td><td colSpan="1" rowSpan="1" width="302">4-210-2了解计算机科学与技术专业相关行业或领域的科学技术及发展动态，具有与业界同行和社会公众进行有效沟通和交流的能力。</td><td colSpan="1" rowSpan="2" width="121">教学目标4</td></tr><tr><td colSpan="1" rowSpan="1" width="302">4-310-3具有计算机特定软硬件系统的设计、项目技术方案的编制、项目建议书和可行性研究报告的撰写能力。</td></tr></tbody></table><p><span style="font-family: 黑体;">三、课程的基本内容</span></p><p><strong>3.1 理论教学</strong></p><p style="text-indent: 20pt;"><strong>1、绪论（支撑教学目标1）</strong></p><p style="text-indent: 20pt;"><strong>教学目标:</strong></p><p style="text-indent: 20pt;">使学生了解翻译的基本概念、翻译程序的分类及特点，了解编译技术的发展现状和发展趋势。</p><p style="text-indent: 20pt;"><strong>本单元主要内容：</strong></p><p style="text-indent: 20pt;">（1） 课程概况</p><p style="text-indent: 20pt;">（2） 翻译的基本概念；编译程序和解释程序的区别</p><p style="text-indent: 20pt;">（3） 编译过程及编译程序的组织</p><p style="text-indent: 20pt;">（4） 编译技术的发展现状、前沿与趋势分析</p><p style="text-indent: 20pt;"><strong>2、文法和语言（支撑教学目标1）</strong></p><p style="text-indent: 20pt;"><strong>教学目标:</strong></p><p style="text-indent: 20pt;">使学生掌握形式语言的基本理论，能够应用于编译程序的逻辑表示；理解符号串的各种运算，文法和语言的定义，推导过程，归约过程等基本概念。</p><p style="text-indent: 20pt;"><strong>本单元主要内容：</strong></p><p style="text-indent: 20pt;">（1）文法和语言的定义</p><p style="text-indent: 20pt;">（2）句型的两种分析方法</p><p style="text-indent: 20pt;">（3）推导，归约，句柄和短语等概念</p><p style="text-indent: 20pt;"><strong>3、词法分析（支撑教学目标1、2、3）</strong></p><p style="text-indent: 20pt;"><strong>教学目标:</strong></p><p style="text-indent: 20pt;">使学生理解词法分析程序的构造原理，掌握词法分析程序的构造方法，应用其原理能够实现词法分析的开发，了解词法分析程序的自动构造工具</p><p style="text-indent: 20pt;"><strong>本单元主要内容：</strong></p><p style="text-indent: 20pt;">（1）词法分析程序的基本原理</p><p style="text-indent: 20pt;">（2）用正规文法和正规式实现词法描述</p><p style="text-indent: 20pt;">（3）不确定有穷自动机的确定化和最小化过程</p><p style="text-indent: 20pt;">（4）正规文法或正规式向有穷自动机的转换过程</p><p style="text-indent: 20pt;">（5）LEX等词法分析自动构造工具</p><p style="text-indent: 20pt;"><strong>4、自顶向下的语法分析方法（支撑教学目标1、2）</strong></p><p style="text-indent: 20pt;"><strong>教学目标:</strong></p><p style="text-indent: 20pt;">使学生了解语法分析程序的构造原理，理解自顶向下语法分析程序的构造过程，掌握递归下降分析方法和预测分析方法，重点掌握LL(1)文法判别及非LL(1)文法向LL(1)文法的转换方法。</p><p style="text-indent: 20pt;"><strong>本单元主要内容：</strong></p><p style="text-indent: 20pt;">（1）自顶向下语法分析的过程</p><p style="text-indent: 20pt;">（2）FIRST集，FOLLOW集和SELECT 集的求法和含义</p><p style="text-indent: 20pt;">（3）LL(1)文法的判别</p><p style="text-indent: 20pt;">（4）非LL(1)文法到LL(1)文法的转换方法</p><p style="text-indent: 20pt;">（5）预测分析方法和递归下降分析法</p><p style="text-indent: 20pt;"><strong>5、自底向上的优先分析方法（支撑教学目标1、2、3）</strong></p><p style="text-indent: 20pt;"><strong>教学目标:</strong></p><p style="text-indent: 20pt;">使学生了解自底向上分析方法的思想；掌握各种LR分析方法，了解优先分析方法以及二义性文法在LR分析中的应用，了解YACC语法分析自动构造工具。</p><p style="text-indent: 20pt;"><strong>本单元主要内容：</strong></p><p style="text-indent: 20pt;">（1）自底向上语法分析方法的基本思想</p><p style="text-indent: 20pt;">（2）自底向上的优先分析方法简介</p><p style="text-indent: 20pt;">（3）LR分析方法的实现过程</p><p style="text-indent: 20pt;">（4）LR(0)，SLR(1)，LR(1)，LALR(1)的实现过程</p><p style="text-indent: 20pt;">（5）二义性文法在LR分析方法中的而应用</p><p style="text-indent: 20pt;">（6）YACC等语法分析程序自动构造工具</p><p style="text-indent: 20pt;"><strong>6、语法制导翻译和中间代码生成（支撑教学目标1、2）</strong></p><p style="text-indent: 20pt;"><strong>教学目标:</strong></p><p style="text-indent: 20pt;">使学生能够了解语法制导翻译的基本过程，掌握不同的中间代码的表示方法，理解程序设计语句的翻译方案。</p><p style="text-indent: 20pt;"><strong>本单元主要内容：</strong></p><p style="text-indent: 20pt;">（1）语法制导翻译的含义</p><p style="text-indent: 20pt;">（2）中间代码表示</p><p style="text-indent: 20pt;">（3）简单算术表达式和赋值语句的翻译</p><p style="text-indent: 20pt;">（4）布尔表达式及控制语句的翻译</p><p style="text-indent: 20pt;"><strong>7、符号表（支撑教学目标1）</strong></p><p style="text-indent: 20pt;"><strong>教学目标:</strong></p><p style="text-indent: 20pt;">使学生能够理解符号表的作用，了解符号表的一般结构，掌握分程序和非分程序的符号表组织方式</p><p style="text-indent: 20pt;"><strong>本单元主要内容：</strong></p><p style="text-indent: 20pt;">（1）符号表的作用</p><p style="text-indent: 20pt;">（2）符号表的组织结构</p><p style="text-indent: 20pt;">（3）符号表的管理</p><p style="text-indent: 20pt;"><strong>8、目标程序运行时的存储组织（支撑教学目标1）</strong></p><p style="text-indent: 20pt;"><strong>教学目标:</strong></p><p style="text-indent: 20pt;">了解静态分配和动态分配的区别，重点掌握栈式存储分配的过程。</p><p style="text-indent: 20pt;"><strong>本单元主要内容：</strong></p><p style="text-indent: 20pt;">（1）数据空间的不同管理方式</p><p style="text-indent: 20pt;">（2）静态分配的管理方法</p><p style="text-indent: 20pt;">（3）栈式分配的额管理方法</p><p style="text-indent: 20pt;"><strong>9、代码优化和代码生成（支撑教学目标1、2）</strong></p><p style="text-indent: 20pt;"><strong>教学目标:</strong></p><p style="text-indent: 20pt;">使学生掌握代码优化的基本技术，掌握代码生成的基本方法。</p><p style="text-indent: 20pt;"><strong>本单元主要内容：</strong></p><p style="text-indent: 20pt;">（1）代码优化的基本技术</p><p style="text-indent: 20pt;">（2）代码生成的基本方法</p><p><strong>3.2 课内实验内容</strong></p><p style="text-indent: 20pt;">没有填写课程的实验课内容</p><p><strong>3.3 讨论课内容</strong></p><p><strong>讨论课1 &nbsp;(支撑教学目标1、2、3、4)</strong></p><p><strong>讨论课目标:</strong></p><p style="text-indent: 20pt;">通过讨论课使学生加深对编译技术和编译程序开发基本方法的理解，扩宽知识面，初步具备查阅文献、阅读相关技术资料和调查研究的能力，提高学生综合运用本课程知识，分析和解决本专业及相关行业的复杂工程问题的能力，并引导学生积极思考、主动学习，锻炼和提高学生的交流、沟通和表达能力以及团队合作能力，培养学生的责任感和职业道德。</p><p><strong>讨论课内容:</strong></p><p style="text-indent: 20pt;">针对编译教材的内容、适用范围、特点或针对编译技术的发展现状与趋势，存在的主要问题，分组调研，集体讨论。</p><p style="text-indent: 20pt;">针对现有编译器的构造，实现原理和方法，分组调研，集体讨论。</p><p><strong>讨论课的实施:</strong></p><p style="text-indent: 20pt;"><span style="color: windowtext;"> </span></p><p><strong>讨论课的要求与成绩评定:</strong></p><p style="text-indent: 20pt;"><span style="color: windowtext;"> </span></p><p><strong>3.4 &nbsp;三级项目内容</strong></p><p><strong>三级项目1 &nbsp;(支撑教学目标1、2、3、4)</strong></p><p><strong>三级项目目标:</strong></p><p style="text-indent: 20pt;">通过三级项目的实施，使学生加深对编译技术所涉及基础知识的理解，初步具备运用所学知识进行编译器分析、设计、开发、优化的实践能力，提高学生查阅文献和撰写总结报告的能力，引导学生积极思考、主动学习，锻炼和提高学生的交流、沟通和表达能力以及团队合作能力，培养学生的责任感和职业道德。</p><p><strong>三级项目内容:</strong></p><p style="text-indent: 20pt;">本课程设有一个三级项目，该项目将与编译原理课程设计相结合，最终构成二级项目。</p><p style="text-indent: 20pt;">课程项目内容以PL/0程序为例，设计并实现一个简单的编译器。学生需分组完成如下内容：</p><p style="text-indent: 20pt;">（1）编译器的文法描述</p><p style="text-indent: 20pt;">（2）编译器总体流程及各模块功能的设计</p><p style="text-indent: 20pt;">（3）分阶段开发编译器中的各个模块，至少包括词法分析、语法分析、目标代码生成和解释执行程序。可利用现有的自动构造工具完成词法分析和语法分析过程，也可以自行构造词法分析程序和语法分析程序</p><p style="text-indent: 20pt;">（4）用不同的测试程序完成对程序的测试并给出结果分析</p><p style="text-indent: 20pt;">（5）项目报告撰写及答辩汇报PPT制作</p><p><strong>三级项目的实施:</strong></p><p style="text-indent: 20pt;"><span style="color: windowtext;"> </span></p><p><strong>进程安排:</strong></p><p style="text-indent: 20pt;"><span style="color: windowtext;"> </span></p><p><strong>要求和成绩评定:</strong></p><p style="text-indent: 20pt;"><span style="color: windowtext;"> </span></p><p><strong>3.5 课程其他内容</strong></p><p style="text-indent: 20pt;"><span style="color: windowtext;"> </span></p><p><span style="font-family: 黑体;">四、教学安排</span></p><p style="text-indent: 20pt;">本课程由课堂教学、讨论课、课程项目三部分组成。</p><p style="text-indent: 20pt;">课堂教学围绕本课程的基本原理、方法进行授课</p><p style="text-indent: 20pt;">讨论课2次，主要围绕国内外相关编译教材涉及到的内容、编译技术的发展和编译程序的开发技术和方法进行探讨。</p><p style="text-indent: 20pt;">课程项目以小型编译程序的研读、改进、扩充为切入点，使学生在掌握编译原理基本内容和基本技术的基础上，深入理解并掌握编译程序的相关知识、设计与开发方法。</p><p style="text-indent: 20pt;">建议学时分配如下表：</p><p style="text-indent: 20pt;">建议学时分配如下表：</p><p style="text-indent: 20pt;"> </p><p style="text-indent: 20pt;"><br></p><table style="width: 100%;"><tbody><tr><td colSpan="2" rowSpan="2" width="393">讲 课 内 容</td><td colSpan="3" rowSpan="1" width="211">学 时</td></tr><tr><td colSpan="1" rowSpan="1" width="60">讲课</td><td colSpan="1" rowSpan="1" width="91">实验（践）</td><td colSpan="1" rowSpan="1" width="60">上机</td></tr><tr><td colSpan="1" rowSpan="1" width="48">1</td><td colSpan="1" rowSpan="1" width="345">绪论</td><td colSpan="1" rowSpan="1" width="60">2</td><td colSpan="1" rowSpan="1" width="91"></td><td colSpan="1" rowSpan="1" width="60"></td></tr><tr><td colSpan="1" rowSpan="1" width="48">2</td><td colSpan="1" rowSpan="1" width="345">文法和语言</td><td colSpan="1" rowSpan="1" width="60">4</td><td colSpan="1" rowSpan="1" width="91"></td><td colSpan="1" rowSpan="1" width="60"></td></tr><tr><td colSpan="1" rowSpan="1" width="48">3</td><td colSpan="1" rowSpan="1" width="345">自顶向下的语法分析方法</td><td colSpan="1" rowSpan="1" width="60">7</td><td colSpan="1" rowSpan="1" width="91"></td><td colSpan="1" rowSpan="1" width="60"></td></tr><tr><td colSpan="1" rowSpan="1" width="48">4</td><td colSpan="1" rowSpan="1" width="345">自底向上的语法分析方法</td><td colSpan="1" rowSpan="1" width="60">11</td><td colSpan="1" rowSpan="1" width="91"></td><td colSpan="1" rowSpan="1" width="60"></td></tr><tr><td colSpan="1" rowSpan="1" width="48">5</td><td colSpan="1" rowSpan="1" width="345">语法制导翻译和中间代码</td><td colSpan="1" rowSpan="1" width="60">2</td><td colSpan="1" rowSpan="1" width="91"></td><td colSpan="1" rowSpan="1" width="60"></td></tr><tr><td colSpan="1" rowSpan="1" width="48">6</td><td colSpan="1" rowSpan="1" width="345">符号表</td><td colSpan="1" rowSpan="1" width="60">2</td><td colSpan="1" rowSpan="1" width="91"></td><td colSpan="1" rowSpan="1" width="60"></td></tr><tr><td colSpan="1" rowSpan="1" width="48">7</td><td colSpan="1" rowSpan="1" width="345">目标程序运行时的存储组织</td><td colSpan="1" rowSpan="1" width="60">2</td><td colSpan="1" rowSpan="1" width="91"></td><td colSpan="1" rowSpan="1" width="60"></td></tr><tr><td colSpan="1" rowSpan="1" width="48">8</td><td colSpan="1" rowSpan="1" width="345">讨论</td><td colSpan="1" rowSpan="1" width="60">4</td><td colSpan="1" rowSpan="1" width="91"></td><td colSpan="1" rowSpan="1" width="60"></td></tr><tr><td colSpan="1" rowSpan="1" width="48">9</td><td colSpan="1" rowSpan="1" width="345">三级项目</td><td colSpan="1" rowSpan="1" width="60">4</td><td colSpan="1" rowSpan="1" width="91"></td><td colSpan="1" rowSpan="1" width="60"></td></tr><tr><td colSpan="1" rowSpan="1" width="48">10</td><td colSpan="1" rowSpan="1" width="345">结课总结，提前布置课程设计内容</td><td colSpan="1" rowSpan="1" width="60">2</td><td colSpan="1" rowSpan="1" width="91"></td><td colSpan="1" rowSpan="1" width="60"></td></tr><tr><td colSpan="2" rowSpan="1" width="393">合计</td><td colSpan="3" rowSpan="1" width="211">40</td></tr></tbody></table><p><span style="font-family: 黑体;">五、教学方法</span></p><p style="text-indent: 20pt;">1、讲授基本原理，理论联系实际，培养学生创新能力</p><p style="text-indent: 20pt;">2、采用多媒体课件和传统教学相结合进行教学。</p><p style="text-indent: 20pt;">3、通过案例分析，强调对编译程序各阶段的认识，并能将之应用于编译程序的开发。</p><p style="text-indent: 20pt;">4、理论教学、讨论课、三级项目结合，强化学生对编译理论应用和编译程序开发能力的培养。</p><p><span style="font-family: 黑体;">六、教学目标达成度评价</span></p><p style="text-indent: 20pt;">（1）教学目标1的达成度通过闭卷笔试和三级项目成绩综合考评；</p><p style="text-indent: 20pt;">（2）教学目标2的达成度通过闭卷笔试和讨论课成绩综合考评；</p><p style="text-indent: 20pt;">（3）教学目标3的达成度通过讨论课和三级项目成绩综合考评；</p><p style="text-indent: 20pt;">（4）教学目标4的达成度通过讨论课和三级项目成绩综合考评。</p><p><span style="font-family: 黑体;">七、成绩评定</span></p><p style="text-indent: 20pt;">课程成绩包括3个部分，分别为讨论课、三级项目和结课考试。具体要求及成绩评定方法如下：</p><p style="text-indent: 20pt;">1、讨论课 要求学生按照讨论题目分组查阅资料，归纳总结，撰写报告，制作汇报用PPT。讨论课采用抽签的方式确定汇报小组及汇报人。讨论课成绩占总成绩的10%。</p><p style="text-indent: 20pt;">每位同学的讨论课成绩由小组成绩和组内成绩两部分构成。</p><p style="text-indent: 20pt;">小组成绩由以下三个方面进行评价：</p><p style="text-indent: 20pt;">（1）资料的查阅整理及PPT制作质量，占讨论课成绩的30%；</p><p style="text-indent: 20pt;">（2）PPT讲解及回答问题情况，占讨论课成绩的40%；</p><p style="text-indent: 20pt;">（3）提问交流情况，占讨论课成绩的30%。</p><p style="text-indent: 20pt;">小组得分为组内所有同学的平均分，每位同学的得分依据其在组内的贡献，在小组平均分的基础上浮动，但最高分与最低分差值不得小于15%。组内得分由各小组成员自行讨论确定。</p><p style="text-indent: 20pt;">未按时提交讨论课报告或讨论课报告有抄袭现象的，讨论课成绩按零分计。</p><p style="text-indent: 20pt;">2、三级项目 要求学生按照三级项目题目分组查阅资料，完成编译程序的设计，撰写项目研究报告并制作汇报用PPT，并进行答辩。项目成绩占总成绩的20%；</p><p style="text-indent: 20pt;">每位同学的三级项目成绩由小组成绩和组内成绩两部分构成。小组成绩由两个方面进行评价：</p><p style="text-indent: 20pt;">（1）项目研究报告，占项目成绩的40%；</p><p style="text-indent: 20pt;">（2）答辩成绩，占项目成绩的60%；</p><p style="text-indent: 20pt;">小组得分为组内所有同学的平均分，每位同学的得分依据其在组内的贡献，在小组平均分的基础上浮动，但最高分与最低分差值不得小于15%。组内得分定由各小组成员自行讨论确定。</p><p style="text-indent: 20pt;">未按时提交三级项目报告或三级项目报告有抄袭现象的，三级项目成绩按零分计。</p><p style="text-indent: 20pt;">3、结课考试 &nbsp;结课考试占总成绩的70%。</p><p><span style="font-family: 黑体;">八、教材信息</span></p><p style="text-indent: 20pt;">1、王生原、董渊、张素琴、吕映芝、蒋维杜. 编译原理（第3版）. 清华大学出版社，2015年6月。</p><p style="text-indent: 20pt;"> </p><p style="text-indent: 20pt;"> </p><p style="text-indent: 20pt;"> </p><p style="text-align: justify;"><strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 制定人：张世辉</strong></p><p style="text-align: justify;"><strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 审定人：</strong></p><p style="text-align: justify;"><strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 批准者：</strong></p><p style="text-align: justify;"><strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 年 &nbsp; &nbsp; &nbsp;月 &nbsp; &nbsp; &nbsp; 日 &nbsp; &nbsp; &nbsp; </strong></p><p><br></p>', CAST(N'2022-08-10T20:07:59.857' AS DateTime), CAST(N'2022-08-10T21:37:20.457' AS DateTime))
GO
INSERT [dbo].[courseTeacher] ([id], [courseid], [mainContent], [create_time], [update_time]) VALUES (N'4574c0ecd6e04e88a372a6f6aaffaf40', N'c17df457eb87417da8564fd8184dde13', N'<p style="text-align: left;"><span style="color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 14px;"> &nbsp; &nbsp; &nbsp; &nbsp; </span><img src="http://localhost:8080/uploadFile/courseTeacherPicture/2022/08/11/4aad414b9d204a6d898d0230185dcd96.png" alt="courseTeacherImage" data-href="" style="width: 50%;"></p><p style="text-align: left;"><span style="color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 14px;"> &nbsp; &nbsp; &nbsp; </span></p><p style="text-align: left;"><span style="color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 14px;"> &nbsp; &nbsp; &nbsp; &nbsp; </span><span style="color: rgb(225, 60, 57); background-color: rgb(255, 255, 255); font-size: 14px;">陈真</span></p><ul style="text-align: start;"><li style="text-align: left;"> &nbsp; &nbsp;硕士生导师</li><li style="text-align: left;"><img src="http://web.ysu.edu.cn/_ts/chmb3/images/img02.png" alt="" data-href="" style="width: 20px;height: 20px;">职 称 : 副教授</li><li style="text-align: left;"> &nbsp; &nbsp;学 科 :计算机应用技术</li><li style="text-align: left;"><img src="http://web.ysu.edu.cn/_ts/chmb3/images/img04.png" alt="" data-href="" style="width: 20px;height: 20px;">单 位 : 信息科学与工程学院(软件学院)</li></ul>', CAST(N'2022-08-11T09:28:38.160' AS DateTime), CAST(N'2022-08-11T09:51:13.457' AS DateTime))
GO
INSERT [dbo].[department] ([id], [name], [create_time], [update_time]) VALUES (N'02e2aa78ecca4fad9c360a4ce87ea1a0', N'里仁学院', CAST(N'2022-08-04T11:28:20.053' AS DateTime), CAST(N'2022-08-04T11:28:20.053' AS DateTime))
INSERT [dbo].[department] ([id], [name], [create_time], [update_time]) VALUES (N'40c67775adf34d2b821718e9236cde82', N'信息科学与工程学院', CAST(N'2022-08-04T11:28:33.317' AS DateTime), CAST(N'2022-08-04T11:28:33.317' AS DateTime))
GO
INSERT [dbo].[excellentWorks] ([id], [name], [introduction], [author], [url], [create_time], [update_time]) VALUES (N'e0cc9ed498734daf9f4bc32329b1bbee', N'编译原理算法可视化和动态演示教学辅助系统', N'<p style="text-align: center;"><img src="http://localhost:8080/uploadFile/excellentWorksPicture/2022/08/11/7f03f680818348feab65a582ea9ee62a.png" alt="excellentWorksImage" data-href="" style="width: 100%;"></p><p style="text-align: center;"><span style="color: rgb(225, 60, 57);">编译原理算法可视化和动态演示教学辅助系统</span></p>', N'燕山大学 信息工程学院', N'http://39.96.51.60:8084/', CAST(N'2022-07-20T09:08:59.013' AS DateTime), CAST(N'2022-08-11T17:22:18.847' AS DateTime))
GO
INSERT [dbo].[grade] ([id], [department], [name], [create_time], [update_time]) VALUES (N'016c8884870e4020be27a041906343b1', N'02e2aa78ecca4fad9c360a4ce87ea1a0', N'2018', CAST(N'2022-08-04T16:29:08.100' AS DateTime), CAST(N'2022-08-04T16:29:08.100' AS DateTime))
INSERT [dbo].[grade] ([id], [department], [name], [create_time], [update_time]) VALUES (N'26fc5962362d4be38f4ee7649248054c', N'02e2aa78ecca4fad9c360a4ce87ea1a0', N'2020', CAST(N'2022-08-04T16:32:34.713' AS DateTime), CAST(N'2022-08-04T16:32:34.713' AS DateTime))
INSERT [dbo].[grade] ([id], [department], [name], [create_time], [update_time]) VALUES (N'3d5d2f31a0504e2ebb3716e158b54d33', N'40c67775adf34d2b821718e9236cde82', N'2019', CAST(N'2022-08-04T16:14:08.950' AS DateTime), CAST(N'2022-08-04T16:14:08.950' AS DateTime))
INSERT [dbo].[grade] ([id], [department], [name], [create_time], [update_time]) VALUES (N'4ffcdbf62ee047c3982b9452e0f5f11a', N'02e2aa78ecca4fad9c360a4ce87ea1a0', N'2019', CAST(N'2022-08-04T16:30:06.663' AS DateTime), CAST(N'2022-08-04T16:30:06.663' AS DateTime))
INSERT [dbo].[grade] ([id], [department], [name], [create_time], [update_time]) VALUES (N'6fb3521e35954d6b9115d986b2f2ea4b', N'40c67775adf34d2b821718e9236cde82', N'2018', CAST(N'2022-08-04T16:13:58.417' AS DateTime), CAST(N'2022-08-04T17:09:31.170' AS DateTime))
INSERT [dbo].[grade] ([id], [department], [name], [create_time], [update_time]) VALUES (N'851be2fdde0a4a8e9a13b40148c07c8c', N'40c67775adf34d2b821718e9236cde82', N'2021', CAST(N'2022-08-04T16:14:27.150' AS DateTime), CAST(N'2022-08-04T16:14:27.150' AS DateTime))
INSERT [dbo].[grade] ([id], [department], [name], [create_time], [update_time]) VALUES (N'913ea764e3584b34a7ea272263d18af1', N'40c67775adf34d2b821718e9236cde82', N'2022', CAST(N'2022-08-04T16:14:35.447' AS DateTime), CAST(N'2022-08-04T16:14:35.447' AS DateTime))
INSERT [dbo].[grade] ([id], [department], [name], [create_time], [update_time]) VALUES (N'9487ab05a99e4c6b8bf10b2c5a55a0ac', N'02e2aa78ecca4fad9c360a4ce87ea1a0', N'2016', CAST(N'2022-08-04T16:24:34.460' AS DateTime), CAST(N'2022-08-04T16:24:34.460' AS DateTime))
INSERT [dbo].[grade] ([id], [department], [name], [create_time], [update_time]) VALUES (N'a55f5fc63d2b422f8074165032671bba', N'40c67775adf34d2b821718e9236cde82', N'2020', CAST(N'2022-08-04T16:14:17.063' AS DateTime), CAST(N'2022-08-04T16:14:17.063' AS DateTime))
INSERT [dbo].[grade] ([id], [department], [name], [create_time], [update_time]) VALUES (N'a66d431d27c14cbc9b40cf00eca47ba7', N'02e2aa78ecca4fad9c360a4ce87ea1a0', N'2021', CAST(N'2022-08-04T16:32:42.520' AS DateTime), CAST(N'2022-08-04T16:32:42.520' AS DateTime))
INSERT [dbo].[grade] ([id], [department], [name], [create_time], [update_time]) VALUES (N'a8dcd77b3da249818ab134af888e4529', N'02e2aa78ecca4fad9c360a4ce87ea1a0', N'2022', CAST(N'2022-08-04T16:32:51.977' AS DateTime), CAST(N'2022-08-04T16:32:51.977' AS DateTime))
INSERT [dbo].[grade] ([id], [department], [name], [create_time], [update_time]) VALUES (N'b1d3328e830847ac93eccf6d5137c49f', N'40c67775adf34d2b821718e9236cde82', N'2017', CAST(N'2022-08-04T16:13:50.327' AS DateTime), CAST(N'2022-08-04T17:08:06.053' AS DateTime))
INSERT [dbo].[grade] ([id], [department], [name], [create_time], [update_time]) VALUES (N'c500e102d4c4472f9da3ce1d75eff1dc', N'02e2aa78ecca4fad9c360a4ce87ea1a0', N'2017', CAST(N'2022-08-04T16:28:40.090' AS DateTime), CAST(N'2022-08-04T16:28:40.090' AS DateTime))
INSERT [dbo].[grade] ([id], [department], [name], [create_time], [update_time]) VALUES (N'f7ab5fb514cd42b8a323e45c737e106b', N'40c67775adf34d2b821718e9236cde82', N'2016', CAST(N'2022-08-04T16:13:05.850' AS DateTime), CAST(N'2022-08-04T17:09:28.337' AS DateTime))
GO
INSERT [dbo].[material] ([id], [name], [url], [realpath], [suffix], [filename], [create_time], [update_time]) VALUES (N'524d764d2572445eb5164cbaad8ca844', N'wangeditor5插件', N'http://localhost:8080/uploadFile/material/2022/08/09/aa78ff8427cc4ddab426e12bc5bd892d.zip', N'D:\courseonlineUploadFile\material\2022\08\09\aa78ff8427cc4ddab426e12bc5bd892d.zip', N'.zip', N'aa78ff8427cc4ddab426e12bc5bd892d.zip', CAST(N'2022-08-09T17:10:39.370' AS DateTime), CAST(N'2022-08-09T17:10:39.370' AS DateTime))
GO
INSERT [dbo].[notice] ([id], [title], [mainContent], [create_time], [update_time]) VALUES (N'b0ad91a3f71f413f82ea9e64073cbee6', N'春江花月夜', N'<p style="text-align: center;"><img src="http://localhost:8080/uploadFile/noticePicture/2022/08/09/f68a0ca2af8b473586df01bd2b3d8d63.webp" alt="image" data-href="" style=""></p><p style="text-align: center;"><strong>春江花月夜 </strong><a href="www.baidu.com" target="_blank">原文</a></p><p style="text-align: center;"><span style="color: rgb(225, 60, 57);">张若虚</span></p><p style="text-align: center;">春江潮水连海平，海上明月共潮生。</p><p style="text-align: center;">滟滟随波千万里，何处春江无月明。</p><p style="text-align: center;">江流宛转绕芳甸，月照花林皆似霰。</p><p style="text-align: center;">空里流霜不觉飞，汀上白沙看不见。</p><p style="text-align: center;">江天一色无纤尘，皎皎空中孤月轮。</p><p style="text-align: center;">江畔何人初见月？江月何年初照人？</p><p style="text-align: center;">人生代代无穷已，江月年年望相似。</p><p style="text-align: center;">不知江月待何人，但见长江送流水。</p><p style="text-align: center;">白云一片去悠悠，青枫浦上不胜愁。</p><p style="text-align: center;">谁家今夜扁舟子？何处相思明月楼？</p><p style="text-align: center;">可怜楼上月裴回，应照离人妆镜台。</p><p style="text-align: center;">玉户帘中卷不去，捣衣砧上拂还来。</p><p style="text-align: center;">此时相望不相闻，愿逐月华流照君。</p><p style="text-align: center;">鸿雁长飞光不度，鱼龙潜跃水成文。</p><p style="text-align: center;">昨夜闲潭梦落花，可怜春半不还家。</p><p style="text-align: center;">江水流春去欲尽，江潭落月复西斜。</p><p style="text-align: center;">斜月沉沉藏海雾，碣石潇湘无限路。</p><p style="text-align: center;">不知乘月几人归，落月摇情满江树。</p><p style="text-align: center;"><br></p>', CAST(N'2022-08-08T15:11:36.427' AS DateTime), CAST(N'2022-08-09T19:58:45.467' AS DateTime))
INSERT [dbo].[notice] ([id], [title], [mainContent], [create_time], [update_time]) VALUES (N'f3317da31c94435bb31a460cb1ab69b4', N'将进酒', N'<p style="text-align: center;"><img src="http://localhost:8080/uploadFile/noticePicture/2022/08/09/febf498e75644789a41bdd3ffbcbc5b6.webp" alt="image" data-href="" style=""></p><p style="text-align: center;">将进酒</p><p style="text-align: center;"><span style="color: rgb(225, 60, 57);">李白</span></p><p style="text-align: center;"><span style="color: rgb(0, 0, 0);">君不见，黄河之水天上来，奔流到海不复回；</span></p><p style="text-align: center;"><span style="color: rgb(0, 0, 0);">君不见，高堂明镜悲白发，朝如青丝暮成雪；</span></p><p style="text-align: center;"><span style="color: rgb(0, 0, 0);">人生得意须尽欢，莫使金樽空对月；</span></p><p style="text-align: center;"><span style="color: rgb(0, 0, 0);">天生我才必有用，看千金散尽还复来；</span></p><p style="text-align: center;"><span style="color: rgb(0, 0, 0);">烹羊宰牛且为乐，会须一饮三百杯；</span></p><p style="text-align: center;"><span style="color: rgb(0, 0, 0);">岑夫子，丹丘生，将进酒，杯莫停；</span></p><p style="text-align: center;"><span style="color: rgb(0, 0, 0);">与君歌一曲，请君为我倾耳听；</span></p><p style="text-align: center;"><span style="color: rgb(0, 0, 0);">钟鼓馔玉不足贵，但愿长醉不愿醒；</span></p><p style="text-align: center;"><span style="color: rgb(0, 0, 0);">古来圣贤皆寂寞，惟有饮者留其名；</span></p><p style="text-align: center;"><span style="color: rgb(0, 0, 0);">陈王昔时宴平乐，斗酒十千恣欢虐；</span></p><p style="text-align: center;"><span style="color: rgb(0, 0, 0);">五花马，千金裘，呼儿将出换美酒，与尔同销万古愁。</span></p><p style="text-align: center;"><br></p>', CAST(N'2022-08-08T19:04:36.903' AS DateTime), CAST(N'2022-08-09T19:56:56.687' AS DateTime))
GO
INSERT [dbo].[sclass] ([id], [department], [grade], [name], [create_time], [update_time]) VALUES (N'63f41275d4c54e6c9373443d379bb687', N'40c67775adf34d2b821718e9236cde82', N'a55f5fc63d2b422f8074165032671bba', N'计算机技术3班', CAST(N'2022-08-05T09:35:50.843' AS DateTime), CAST(N'2022-08-05T09:35:50.843' AS DateTime))
INSERT [dbo].[sclass] ([id], [department], [grade], [name], [create_time], [update_time]) VALUES (N'997b1887c8954fbdaabb628b1f465995', N'40c67775adf34d2b821718e9236cde82', N'851be2fdde0a4a8e9a13b40148c07c8c', N'计算机技术1班', CAST(N'2022-08-05T10:10:38.300' AS DateTime), CAST(N'2022-08-05T10:19:05.123' AS DateTime))
INSERT [dbo].[sclass] ([id], [department], [grade], [name], [create_time], [update_time]) VALUES (N'ce4b2f5777cd47a9b62eca7d1d5e1414', N'40c67775adf34d2b821718e9236cde82', N'a55f5fc63d2b422f8074165032671bba', N'计算机技术1班', CAST(N'2022-08-04T18:24:02.603' AS DateTime), CAST(N'2022-08-05T10:09:10.800' AS DateTime))
INSERT [dbo].[sclass] ([id], [department], [grade], [name], [create_time], [update_time]) VALUES (N'dc9d3c25da06480ca115c3904cc819c2', N'40c67775adf34d2b821718e9236cde82', N'a55f5fc63d2b422f8074165032671bba', N'计算机技术2班', CAST(N'2022-08-05T09:35:27.750' AS DateTime), CAST(N'2022-08-05T09:35:27.750' AS DateTime))
GO
INSERT [dbo].[student] ([id], [sno], [name], [pwd], [email], [grade], [department], [sclass], [subject], [create_time], [update_time]) VALUES (N'1', N'111', N'张三', N'202cb962ac59075b964b07152d234b70', N'123@qq.com', N'a55f5fc63d2b422f8074165032671bba', N'40c67775adf34d2b821718e9236cde82', N'dc9d3c25da06480ca115c3904cc819c2', N'物联网', CAST(N'2022-07-12T20:25:18.000' AS DateTime), CAST(N'2022-08-05T21:33:24.927' AS DateTime))
INSERT [dbo].[student] ([id], [sno], [name], [pwd], [email], [grade], [department], [sclass], [subject], [create_time], [update_time]) VALUES (N'2', N'222', N'张三', N'202cb962ac59075b964b07152d234b70', N'222@qq.com', N'a55f5fc63d2b422f8074165032671bba', N'40c67775adf34d2b821718e9236cde82', N'63f41275d4c54e6c9373443d379bb687', N'软件工程', CAST(N'2022-07-12T22:25:18.000' AS DateTime), CAST(N'2022-08-05T21:54:51.387' AS DateTime))
INSERT [dbo].[student] ([id], [sno], [name], [pwd], [email], [grade], [department], [sclass], [subject], [create_time], [update_time]) VALUES (N'3', N'333', N'王五', N'202cb962ac59075b964b07152d234b70', N'333@qq.com', N'a55f5fc63d2b422f8074165032671bba', N'40c67775adf34d2b821718e9236cde82', N'ce4b2f5777cd47a9b62eca7d1d5e1414', N'物联网', CAST(N'2022-07-12T23:25:18.000' AS DateTime), CAST(N'2022-08-05T21:55:23.413' AS DateTime))
INSERT [dbo].[student] ([id], [sno], [name], [pwd], [email], [grade], [department], [sclass], [subject], [create_time], [update_time]) VALUES (N'358ef51ddbfd4c19bc81682f62922849', N'202022040202', N'张俊辉', N'202cb962ac59075b964b07152d234b70', N'2509824873@qq.com', N'a55f5fc63d2b422f8074165032671bba', N'40c67775adf34d2b821718e9236cde82', N'63f41275d4c54e6c9373443d379bb687', N'计算机技术', CAST(N'2022-07-29T16:52:46.657' AS DateTime), CAST(N'2022-08-05T22:06:56.580' AS DateTime))
GO
INSERT [dbo].[subsection] ([id], [courseid], [chapterid], [title], [introduction], [videoname], [videourl], [videorealpath], [create_time], [update_time]) VALUES (N'1f61ce1c9dee49678c019892eff459b8', N'c17df457eb87417da8564fd8184dde13', N'1fba7e67c26f4d718caecf5c585b9188', N'1-1 什么是编译', N'什么是编译', N'ysu', N'http://localhost:8080/uploadFile/ysu.mp4', N'xxx', CAST(N'2022-07-19T09:30:14.440' AS DateTime), CAST(N'2022-08-05T11:17:05.170' AS DateTime))
INSERT [dbo].[subsection] ([id], [courseid], [chapterid], [title], [introduction], [videoname], [videourl], [videorealpath], [create_time], [update_time]) VALUES (N'25489a89c5ce46f98bc46e656998cebd', N'c17df457eb87417da8564fd8184dde13', N'a7e935bb96284fdc97777e452a8e6e40', N'3-1 正则表达式', N'正则表达式', N'ysu', N'http://localhost:8080/uploadFile/ysu.mp4', N'xxx', CAST(N'2022-07-27T22:17:45.307' AS DateTime), CAST(N'2022-07-27T22:17:45.307' AS DateTime))
INSERT [dbo].[subsection] ([id], [courseid], [chapterid], [title], [introduction], [videoname], [videourl], [videorealpath], [create_time], [update_time]) VALUES (N'397f4228558a497687ce8dc87ad37472', N'c17df457eb87417da8564fd8184dde13', N'1fba7e67c26f4d718caecf5c585b9188', N'1-2 编译系统的结构', N'编译系统的结构', N'ysu', N'http://localhost:8080/uploadFile/ysu.mp4', N'xxx', CAST(N'2022-07-20T09:30:40.000' AS DateTime), CAST(N'2022-07-27T09:30:40.000' AS DateTime))
INSERT [dbo].[subsection] ([id], [courseid], [chapterid], [title], [introduction], [videoname], [videourl], [videorealpath], [create_time], [update_time]) VALUES (N'a173bc5ba4d34e70b161a6eafa64e313', N'c17df457eb87417da8564fd8184dde13', N'1fba7e67c26f4d718caecf5c585b9188', N'1-3 词法分析概述', N'词法分析概述', N'ysu', N'http://localhost:8080/uploadFile/ysu.mp4', N'xxx', CAST(N'2022-07-21T10:21:26.000' AS DateTime), CAST(N'2022-07-27T10:21:26.000' AS DateTime))
INSERT [dbo].[subsection] ([id], [courseid], [chapterid], [title], [introduction], [videoname], [videourl], [videorealpath], [create_time], [update_time]) VALUES (N'ae1134bd6c2448f0bf5a3845e8656e29', N'c17df457eb87417da8564fd8184dde13', N'b8f6a7af03304c239797344205be10ef', N'2-3 语言的定义', N'语言的定义', N'ysu', N'http://localhost:8080/uploadFile/ysu.mp4', N'xxx', CAST(N'2022-07-24T10:20:42.000' AS DateTime), CAST(N'2022-07-27T10:20:42.000' AS DateTime))
INSERT [dbo].[subsection] ([id], [courseid], [chapterid], [title], [introduction], [videoname], [videourl], [videorealpath], [create_time], [update_time]) VALUES (N'd264bb2f99bf44ab811f26f19afd8037', N'c17df457eb87417da8564fd8184dde13', N'b8f6a7af03304c239797344205be10ef', N'2-1 基本概念', N'基本概念', N'ysu', N'http://localhost:8080/uploadFile/ysu.mp4', N'xxx', CAST(N'2022-07-22T14:19:39.000' AS DateTime), CAST(N'2022-07-27T10:19:39.000' AS DateTime))
INSERT [dbo].[subsection] ([id], [courseid], [chapterid], [title], [introduction], [videoname], [videourl], [videorealpath], [create_time], [update_time]) VALUES (N'd78f1f74364b48e4b9e09f4c9fe0eb75', N'c17df457eb87417da8564fd8184dde13', N'b8f6a7af03304c239797344205be10ef', N'2-2 文法的定义', N'文法的定义', N'ysu', N'http://localhost:8080/uploadFile/ysu.mp4', N'xxx', CAST(N'2022-07-23T10:20:14.000' AS DateTime), CAST(N'2022-07-27T10:20:14.000' AS DateTime))
GO
INSERT [dbo].[viewRecords] ([id], [stuid], [courseid], [chapterid], [subsectionid], [create_time], [update_time], [sno]) VALUES (N'01a275befdec49cc97a9d5f470d7219a', N'3', N'c17df457eb87417da8564fd8184dde13', N'b8f6a7af03304c239797344205be10ef', N'd264bb2f99bf44ab811f26f19afd8037', CAST(N'2022-08-01T10:19:43.790' AS DateTime), CAST(N'2022-08-01T10:19:43.790' AS DateTime), N'333')
INSERT [dbo].[viewRecords] ([id], [stuid], [courseid], [chapterid], [subsectionid], [create_time], [update_time], [sno]) VALUES (N'0981ee0b05c1427e97e7dba57b5f3ce4', N'358ef51ddbfd4c19bc81682f62922849', N'c17df457eb87417da8564fd8184dde13', N'1fba7e67c26f4d718caecf5c585b9188', N'1f61ce1c9dee49678c019892eff459b8', CAST(N'2022-07-31T21:18:24.410' AS DateTime), CAST(N'2022-07-31T21:18:24.410' AS DateTime), N'202022040202')
INSERT [dbo].[viewRecords] ([id], [stuid], [courseid], [chapterid], [subsectionid], [create_time], [update_time], [sno]) VALUES (N'46fd3105a8b04f318b03f53d061e68df', N'1', N'c17df457eb87417da8564fd8184dde13', N'1fba7e67c26f4d718caecf5c585b9188', N'1f61ce1c9dee49678c019892eff459b8', CAST(N'2022-07-31T21:19:48.023' AS DateTime), CAST(N'2022-07-31T21:19:48.023' AS DateTime), N'111')
INSERT [dbo].[viewRecords] ([id], [stuid], [courseid], [chapterid], [subsectionid], [create_time], [update_time], [sno]) VALUES (N'7d480b530efd40128ffae511216ece4e', N'2', N'c17df457eb87417da8564fd8184dde13', N'a7e935bb96284fdc97777e452a8e6e40', N'25489a89c5ce46f98bc46e656998cebd', CAST(N'2022-07-31T22:36:13.107' AS DateTime), CAST(N'2022-07-31T22:36:13.107' AS DateTime), N'222')
INSERT [dbo].[viewRecords] ([id], [stuid], [courseid], [chapterid], [subsectionid], [create_time], [update_time], [sno]) VALUES (N'b900b0983a98486a81279513a31607b8', N'24d789101a5f4488b63705c3908a704a', N'c17df457eb87417da8564fd8184dde13', N'1fba7e67c26f4d718caecf5c585b9188', N'1f61ce1c9dee49678c019892eff459b8', CAST(N'2022-08-02T20:36:31.573' AS DateTime), CAST(N'2022-08-02T20:36:31.573' AS DateTime), N'444')
INSERT [dbo].[viewRecords] ([id], [stuid], [courseid], [chapterid], [subsectionid], [create_time], [update_time], [sno]) VALUES (N'c9a0ff04ab0c4783ab544739a317c38c', N'358ef51ddbfd4c19bc81682f62922849', N'c17df457eb87417da8564fd8184dde13', N'1fba7e67c26f4d718caecf5c585b9188', N'397f4228558a497687ce8dc87ad37472', CAST(N'2022-07-31T21:18:54.457' AS DateTime), CAST(N'2022-07-31T21:18:54.457' AS DateTime), N'202022040202')
INSERT [dbo].[viewRecords] ([id], [stuid], [courseid], [chapterid], [subsectionid], [create_time], [update_time], [sno]) VALUES (N'edb4e2d2d8b64eecb77bcf6f916cadff', N'1', N'c17df457eb87417da8564fd8184dde13', N'b8f6a7af03304c239797344205be10ef', N'd78f1f74364b48e4b9e09f4c9fe0eb75', CAST(N'2022-07-31T21:23:04.933' AS DateTime), CAST(N'2022-07-31T21:23:04.933' AS DateTime), N'111')
GO
USE [master]
GO
ALTER DATABASE [courseonline] SET  READ_WRITE 
GO
