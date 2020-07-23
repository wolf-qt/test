USE [master]
GO
/****** Object:  Database [contact]    Script Date: 7/23/2020 11:53:11 PM ******/
CREATE DATABASE [contact]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'contact', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\contact.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'contact_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\contact_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [contact] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [contact].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [contact] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [contact] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [contact] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [contact] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [contact] SET ARITHABORT OFF 
GO
ALTER DATABASE [contact] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [contact] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [contact] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [contact] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [contact] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [contact] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [contact] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [contact] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [contact] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [contact] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [contact] SET  DISABLE_BROKER 
GO
ALTER DATABASE [contact] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [contact] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [contact] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [contact] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [contact] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [contact] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [contact] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [contact] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [contact] SET  MULTI_USER 
GO
ALTER DATABASE [contact] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [contact] SET DB_CHAINING OFF 
GO
ALTER DATABASE [contact] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [contact] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [contact]
GO
/****** Object:  Table [dbo].[mycontact]    Script Date: 7/23/2020 11:53:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mycontact](
	[name] [nvarchar](50) NOT NULL,
	[phonenumber] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
INSERT [dbo].[mycontact] ([name], [phonenumber]) VALUES (N'thai', N'0933019076')
INSERT [dbo].[mycontact] ([name], [phonenumber]) VALUES (N'aaa', N'0909909090')
INSERT [dbo].[mycontact] ([name], [phonenumber]) VALUES (N',áds', N'12345678')
USE [master]
GO
ALTER DATABASE [contact] SET  READ_WRITE 
GO
