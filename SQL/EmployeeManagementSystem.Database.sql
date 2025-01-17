USE [master]
GO
/****** Object:  Database [EmployeeManagementSystem]    Script Date: 14.12.2019 19:03:02 ******/
CREATE DATABASE [EmployeeManagementSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmployeeManagementSystem', FILENAME = N'D:\AA_SQLSERVER\MSSQL14.MSSQLSERVER\MSSQL\DATA\EmployeeManagementSystem.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EmployeeManagementSystem_log', FILENAME = N'D:\AA_SQLSERVER\MSSQL14.MSSQLSERVER\MSSQL\DATA\EmployeeManagementSystem_log.ldf' , SIZE = 139264KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [EmployeeManagementSystem] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmployeeManagementSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmployeeManagementSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [EmployeeManagementSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmployeeManagementSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmployeeManagementSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EmployeeManagementSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmployeeManagementSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EmployeeManagementSystem] SET  MULTI_USER 
GO
ALTER DATABASE [EmployeeManagementSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmployeeManagementSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmployeeManagementSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EmployeeManagementSystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EmployeeManagementSystem] SET QUERY_STORE = OFF
GO
ALTER DATABASE [EmployeeManagementSystem] SET  READ_WRITE 
GO
