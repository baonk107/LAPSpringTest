USE [master]
GO
/****** Object:  Database [derivative_sys]    Script Date: 10/18/2022 2:19:39 PM ******/
CREATE DATABASE [derivative_sys]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'derivative_sys', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\derivative_sys.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'derivative_sys_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\derivative_sys_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [derivative_sys] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [derivative_sys].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [derivative_sys] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [derivative_sys] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [derivative_sys] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [derivative_sys] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [derivative_sys] SET ARITHABORT OFF 
GO
ALTER DATABASE [derivative_sys] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [derivative_sys] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [derivative_sys] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [derivative_sys] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [derivative_sys] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [derivative_sys] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [derivative_sys] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [derivative_sys] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [derivative_sys] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [derivative_sys] SET  ENABLE_BROKER 
GO
ALTER DATABASE [derivative_sys] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [derivative_sys] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [derivative_sys] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [derivative_sys] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [derivative_sys] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [derivative_sys] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [derivative_sys] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [derivative_sys] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [derivative_sys] SET  MULTI_USER 
GO
ALTER DATABASE [derivative_sys] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [derivative_sys] SET DB_CHAINING OFF 
GO
ALTER DATABASE [derivative_sys] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [derivative_sys] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [derivative_sys] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [derivative_sys] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [derivative_sys] SET QUERY_STORE = OFF
GO
USE [derivative_sys]
GO
/****** Object:  Table [dbo].[derivative]    Script Date: 10/18/2022 2:19:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[derivative](
	[deri_composite_code] [varchar](20) NOT NULL,
	[derivative_code] [varchar](20) NOT NULL,
	[effective_date] [datetime2](7) NULL,
	[expiration_date] [datetime2](7) NULL,
	[created_date] [datetime2](7) NULL,
	[created_by] [varchar](10) NULL,
	[modified_date] [datetime2](7) NULL,
	[modified_by] [varchar](10) NULL,
	[underlying_type] [varchar](10) NULL,
 CONSTRAINT [PK__derivati__ACC7C2D52F654065] PRIMARY KEY CLUSTERED 
(
	[deri_composite_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [derivative_sys] SET  READ_WRITE 
GO
