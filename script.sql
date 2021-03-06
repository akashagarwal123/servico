USE [master]
GO
/****** Object:  Database [servico]    Script Date: 01/30/2019 00:56:17 ******/
CREATE DATABASE [servico] ON  PRIMARY 
( NAME = N'servico', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\servico.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'servico_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\servico_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [servico] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [servico].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [servico] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [servico] SET ANSI_NULLS OFF
GO
ALTER DATABASE [servico] SET ANSI_PADDING OFF
GO
ALTER DATABASE [servico] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [servico] SET ARITHABORT OFF
GO
ALTER DATABASE [servico] SET AUTO_CLOSE ON
GO
ALTER DATABASE [servico] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [servico] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [servico] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [servico] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [servico] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [servico] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [servico] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [servico] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [servico] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [servico] SET  ENABLE_BROKER
GO
ALTER DATABASE [servico] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [servico] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [servico] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [servico] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [servico] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [servico] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [servico] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [servico] SET  READ_WRITE
GO
ALTER DATABASE [servico] SET RECOVERY SIMPLE
GO
ALTER DATABASE [servico] SET  MULTI_USER
GO
ALTER DATABASE [servico] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [servico] SET DB_CHAINING OFF
GO
USE [servico]
GO
/****** Object:  Table [dbo].[othercomment]    Script Date: 01/30/2019 00:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[othercomment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [varchar](500) NOT NULL,
	[comment] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[other]    Script Date: 01/30/2019 00:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[other](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [varchar](300) NOT NULL,
	[name] [varchar](200) NOT NULL,
	[images] [varchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[jewellerycomment]    Script Date: 01/30/2019 00:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[jewellerycomment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [varchar](500) NOT NULL,
	[comment] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[jewellery]    Script Date: 01/30/2019 00:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[jewellery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [varchar](300) NOT NULL,
	[name] [varchar](200) NOT NULL,
	[images] [varchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[imageuploadcomment]    Script Date: 01/30/2019 00:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[imageuploadcomment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [varchar](500) NOT NULL,
	[comment] [varchar](1000) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[imageupload]    Script Date: 01/30/2019 00:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[imageupload](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [varchar](50) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[images] [varchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[foodcomment]    Script Date: 01/30/2019 00:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[foodcomment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [varchar](500) NOT NULL,
	[comment] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[food]    Script Date: 01/30/2019 00:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[food](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [varchar](300) NOT NULL,
	[name] [varchar](200) NOT NULL,
	[images] [varchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[books]    Script Date: 01/30/2019 00:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[books](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [varchar](300) NOT NULL,
	[name] [varchar](200) NOT NULL,
	[images] [varchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bookcomment]    Script Date: 01/30/2019 00:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bookcomment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [varchar](500) NOT NULL,
	[comment] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[userregister]    Script Date: 01/30/2019 00:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[userregister](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[faname] [varchar](30) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[passwo] [int] NULL,
	[designation] [varchar](20) NULL,
	[addressq] [varchar](100) NOT NULL,
	[city] [varchar](59) NOT NULL,
	[states] [varchar](100) NOT NULL,
	[country] [varchar](100) NOT NULL,
	[roles] [varchar](100) NOT NULL,
	[images] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[serviceproviderregister]    Script Date: 01/30/2019 00:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[serviceproviderregister](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[faname] [varchar](50) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[passwo] [int] NOT NULL,
	[designation] [varchar](20) NOT NULL,
	[addressq] [varchar](100) NOT NULL,
	[city] [varchar](100) NOT NULL,
	[states] [varchar](100) NOT NULL,
	[country] [varchar](100) NOT NULL,
	[roles] [varchar](100) NOT NULL,
	[images] [varchar](100) NOT NULL,
	[statuss] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[register]    Script Date: 01/30/2019 00:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[register](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[fname] [varchar](50) NULL,
	[email] [varchar](50) NOT NULL,
	[password] [int] NULL,
	[designation] [varchar](20) NOT NULL,
	[address] [varchar](100) NULL,
	[city] [varchar](20) NULL,
	[states] [varchar](20) NULL,
	[country] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[regispro]    Script Date: 01/30/2019 00:56:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[regispro] @name varchar(50),@faname varchar(50),@email varchar(50),@pass int, @designation varchar(50),
@address varchar(100),@city varchar(20), @state varchar(20), @country varchar(20)
as
begin
insert into register(name,fname,email,password,designation,address,city,states,country)values(@name,@faname,@email,
@pass,@designation,@address,@city,@state,@country)
end
GO
