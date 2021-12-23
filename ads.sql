USE [master]
GO
/****** Object:  Database [Abonenttk]    Script Date: 23.12.2021 10:56:19 ******/
CREATE DATABASE [Abonenttk]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Abonenttk', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\Abonenttk.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Abonenttk_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\Abonenttk_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Abonenttk] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Abonenttk].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Abonenttk] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Abonenttk] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Abonenttk] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Abonenttk] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Abonenttk] SET ARITHABORT OFF 
GO
ALTER DATABASE [Abonenttk] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Abonenttk] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Abonenttk] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Abonenttk] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Abonenttk] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Abonenttk] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Abonenttk] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Abonenttk] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Abonenttk] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Abonenttk] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Abonenttk] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Abonenttk] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Abonenttk] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Abonenttk] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Abonenttk] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Abonenttk] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Abonenttk] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Abonenttk] SET RECOVERY FULL 
GO
ALTER DATABASE [Abonenttk] SET  MULTI_USER 
GO
ALTER DATABASE [Abonenttk] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Abonenttk] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Abonenttk] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Abonenttk] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Abonenttk] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Abonenttk', N'ON'
GO
ALTER DATABASE [Abonenttk] SET QUERY_STORE = OFF
GO
USE [Abonenttk]
GO
/****** Object:  Table [dbo].[Информация о телефонах абонентов]    Script Date: 23.12.2021 10:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Информация о телефонах абонентов](
	[Номер договора] [varchar](max) NULL,
	[Дата установки] [date] NULL,
	[номер телефона] [nvarchar](max) NOT NULL,
	[ааа] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Информация о телефонах абонентов] PRIMARY KEY CLUSTERED 
(
	[ааа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Информация об абонентах]    Script Date: 23.12.2021 10:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Информация об абонентах](
	[id] [nchar](10) NOT NULL,
	[фамилия] [varchar](100) NULL,
	[имя] [varchar](50) NULL,
	[Отчество] [varchar](100) NULL,
	[Адрес] [varchar](50) NULL,
 CONSTRAINT [PK_Информация об абонентах] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[оплата тарифа]    Script Date: 23.12.2021 10:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[оплата тарифа](
	[id] [nchar](10) NOT NULL,
	[тарифы(стоймость за 1 мин.)] [varchar](max) NULL,
 CONSTRAINT [PK_оплата тарифа] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Разговоры]    Script Date: 23.12.2021 10:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Разговоры](
	[дата разговора] [date] NOT NULL,
	[Продолжительность разговора (В мин.)] [varchar](50) NULL,
	[код города] [varchar](max) NOT NULL,
	[название города] [varchar](max) NULL,
	[№ разговора] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Разговоры_1] PRIMARY KEY CLUSTERED 
(
	[№ разговора] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[тарифы]    Script Date: 23.12.2021 10:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[тарифы](
	[тарифы] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[оплата тарифа]  WITH CHECK ADD  CONSTRAINT [FK_оплата тарифа_Разговоры] FOREIGN KEY([id])
REFERENCES [dbo].[Разговоры] ([№ разговора])
GO
ALTER TABLE [dbo].[оплата тарифа] CHECK CONSTRAINT [FK_оплата тарифа_Разговоры]
GO
USE [master]
GO
ALTER DATABASE [Abonenttk] SET  READ_WRITE 
GO
