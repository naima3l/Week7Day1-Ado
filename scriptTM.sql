USE [master]
GO
/****** Object:  Database [Magazzino3]    Script Date: 8/25/2021 10:48:38 AM ******/
CREATE DATABASE [Magazzino3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Magazzino3', FILENAME = N'C:\Users\naima.el.khattabi\Magazzino3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Magazzino3_log', FILENAME = N'C:\Users\naima.el.khattabi\Magazzino3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Magazzino3] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Magazzino3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Magazzino3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Magazzino3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Magazzino3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Magazzino3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Magazzino3] SET ARITHABORT OFF 
GO
ALTER DATABASE [Magazzino3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Magazzino3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Magazzino3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Magazzino3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Magazzino3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Magazzino3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Magazzino3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Magazzino3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Magazzino3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Magazzino3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Magazzino3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Magazzino3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Magazzino3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Magazzino3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Magazzino3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Magazzino3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Magazzino3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Magazzino3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Magazzino3] SET  MULTI_USER 
GO
ALTER DATABASE [Magazzino3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Magazzino3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Magazzino3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Magazzino3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Magazzino3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Magazzino3] SET QUERY_STORE = OFF
GO
USE [Magazzino3]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Magazzino3]
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 8/25/2021 10:48:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle](
	[Brand] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[ProductionYear] [int] NULL,
	[Supply] [int] NULL,
	[DoorsNumber] [int] NULL,
	[SeatsNumber] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Discriminator] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Vehicle] ON 

INSERT [dbo].[Vehicle] ([Brand], [Model], [ProductionYear], [Supply], [DoorsNumber], [SeatsNumber], [Id], [Discriminator]) VALUES (N'Honda', N'CB', 2010, NULL, NULL, NULL, 1, N'Motorcycle')
INSERT [dbo].[Vehicle] ([Brand], [Model], [ProductionYear], [Supply], [DoorsNumber], [SeatsNumber], [Id], [Discriminator]) VALUES (N'Ducati', N'Panigale', 2021, NULL, NULL, NULL, 2, N'Motorcycle')
INSERT [dbo].[Vehicle] ([Brand], [Model], [ProductionYear], [Supply], [DoorsNumber], [SeatsNumber], [Id], [Discriminator]) VALUES (N'Fiat', N'500x', NULL, 0, 5, NULL, 3, N'Car')
INSERT [dbo].[Vehicle] ([Brand], [Model], [ProductionYear], [Supply], [DoorsNumber], [SeatsNumber], [Id], [Discriminator]) VALUES (N'Fiat', N'500', NULL, 1, 3, NULL, 5, N'Car')
INSERT [dbo].[Vehicle] ([Brand], [Model], [ProductionYear], [Supply], [DoorsNumber], [SeatsNumber], [Id], [Discriminator]) VALUES (N'Iveco', N'Euroclass', NULL, NULL, NULL, 50, 6, N'Bus')
INSERT [dbo].[Vehicle] ([Brand], [Model], [ProductionYear], [Supply], [DoorsNumber], [SeatsNumber], [Id], [Discriminator]) VALUES (N'Renault', N'Trafic', NULL, NULL, NULL, 100, 7, N'Bus')
INSERT [dbo].[Vehicle] ([Brand], [Model], [ProductionYear], [Supply], [DoorsNumber], [SeatsNumber], [Id], [Discriminator]) VALUES (N'Ford', N'Fiesta', NULL, 2, 5, NULL, 8, N'Car')
SET IDENTITY_INSERT [dbo].[Vehicle] OFF
GO
USE [master]
GO
ALTER DATABASE [Magazzino3] SET  READ_WRITE 
GO
