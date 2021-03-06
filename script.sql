USE [master]
GO
/****** Object:  Database [FrenktonFresh]    Script Date: 11/16/2020 4:19:12 PM ******/
CREATE DATABASE [FrenktonFresh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FrenktonFresh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\FrenktonFresh.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FrenktonFresh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\FrenktonFresh_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [FrenktonFresh] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FrenktonFresh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FrenktonFresh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FrenktonFresh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FrenktonFresh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FrenktonFresh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FrenktonFresh] SET ARITHABORT OFF 
GO
ALTER DATABASE [FrenktonFresh] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FrenktonFresh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FrenktonFresh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FrenktonFresh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FrenktonFresh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FrenktonFresh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FrenktonFresh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FrenktonFresh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FrenktonFresh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FrenktonFresh] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FrenktonFresh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FrenktonFresh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FrenktonFresh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FrenktonFresh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FrenktonFresh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FrenktonFresh] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FrenktonFresh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FrenktonFresh] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FrenktonFresh] SET  MULTI_USER 
GO
ALTER DATABASE [FrenktonFresh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FrenktonFresh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FrenktonFresh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FrenktonFresh] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FrenktonFresh] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FrenktonFresh] SET QUERY_STORE = OFF
GO
USE [FrenktonFresh]
GO
/****** Object:  Table [dbo].[ContactTable]    Script Date: 11/16/2020 4:19:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Message] [varchar](50) NULL,
 CONSTRAINT [PK_ContactTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginTable]    Script Date: 11/16/2020 4:19:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginTable](
	[UserTxt] [varchar](50) NULL,
	[PasswordTxt] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTable]    Script Date: 11/16/2020 4:19:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[Qty] [varchar](50) NULL,
	[CompanyName] [varchar](50) NULL,
 CONSTRAINT [PK_ProductTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffTable]    Script Date: 11/16/2020 4:19:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[Salary] [varchar](50) NULL,
 CONSTRAINT [PK_StaffTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ContactTable] ON 

INSERT [dbo].[ContactTable] ([id], [Name], [Contact], [Email], [Message]) VALUES (1, N'asas', N'122', N'@as.com', N'asas')
INSERT [dbo].[ContactTable] ([id], [Name], [Contact], [Email], [Message]) VALUES (2, N'qw', N'ijok', N'@as.com', N'asas')
SET IDENTITY_INSERT [dbo].[ContactTable] OFF
INSERT [dbo].[LoginTable] ([UserTxt], [PasswordTxt]) VALUES (N'head@admin.com', N'admin')
SET IDENTITY_INSERT [dbo].[ProductTable] ON 

INSERT [dbo].[ProductTable] ([id], [ProductName], [Price], [Qty], [CompanyName]) VALUES (1, N'Real Juie', N'$70', N'5', N'Real ')
SET IDENTITY_INSERT [dbo].[ProductTable] OFF
USE [master]
GO
ALTER DATABASE [FrenktonFresh] SET  READ_WRITE 
GO
