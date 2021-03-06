USE [master]
GO
/****** Object:  Database [School]    Script Date: 16.11.2015 г. 20:10:06 ч. ******/
CREATE DATABASE [School]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'School', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\School.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'School_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\School_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [School] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [School].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [School] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [School] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [School] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [School] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [School] SET ARITHABORT OFF 
GO
ALTER DATABASE [School] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [School] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [School] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [School] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [School] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [School] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [School] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [School] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [School] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [School] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [School] SET  DISABLE_BROKER 
GO
ALTER DATABASE [School] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [School] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [School] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [School] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [School] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [School] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [School] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [School] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [School] SET  MULTI_USER 
GO
ALTER DATABASE [School] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [School] SET DB_CHAINING OFF 
GO
ALTER DATABASE [School] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [School] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [School]
GO
/****** Object:  Table [dbo].[ADDRESS]    Script Date: 16.11.2015 г. 20:10:06 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADDRESS](
	[Id] [int] NOT NULL,
	[Adress_text] [text] NULL,
	[Town_Id] [nvarchar](50) NULL,
 CONSTRAINT [PK_ADDRESS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Classes]    Script Date: 16.11.2015 г. 20:10:06 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[MaxStudents] [int] NULL,
	[JontId] [int] NULL,
 CONSTRAINT [PK_Classes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CONTINENT]    Script Date: 16.11.2015 г. 20:10:06 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONTINENT](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_CONTINENT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COUNTRY]    Script Date: 16.11.2015 г. 20:10:06 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COUNTRY](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Contry_Id] [int] NULL,
 CONSTRAINT [PK_COUNTRY] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PERSON]    Script Date: 16.11.2015 г. 20:10:06 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSON](
	[Id] [int] NOT NULL,
	[First_name] [nvarchar](50) NULL,
	[Last_name] [nvarchar](50) NULL,
	[Address_Id] [int] NULL,
 CONSTRAINT [PK_PERSON] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Students]    Script Date: 16.11.2015 г. 20:10:06 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Age] [nvarchar](50) NULL,
	[Phone Number] [nchar](10) NULL,
	[JontShoolId] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TOWN]    Script Date: 16.11.2015 г. 20:10:06 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TOWN](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Country_Id] [int] NULL,
 CONSTRAINT [PK_TOWN] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ADDRESS] ([Id], [Adress_text], [Town_Id]) VALUES (1, N'Sofia str. Nikolaevska', N'2')
INSERT [dbo].[ADDRESS] ([Id], [Adress_text], [Town_Id]) VALUES (2, N'Moscow, str. Petar Veliki', N'1')
INSERT [dbo].[ADDRESS] ([Id], [Adress_text], [Town_Id]) VALUES (3, N'Rio, str. motevideo 7', N'5')
INSERT [dbo].[ADDRESS] ([Id], [Adress_text], [Town_Id]) VALUES (4, N'Nussels, str Marsilesa 33', N'2')
INSERT [dbo].[ADDRESS] ([Id], [Adress_text], [Town_Id]) VALUES (5, N'Cairo, str. Kinshasa', N'6')
SET IDENTITY_INSERT [dbo].[Classes] ON 

INSERT [dbo].[Classes] ([Id], [Name], [MaxStudents], [JontId]) VALUES (1, N'Fizika', 23, 1)
INSERT [dbo].[Classes] ([Id], [Name], [MaxStudents], [JontId]) VALUES (2, N'Matematika', 45, 2)
SET IDENTITY_INSERT [dbo].[Classes] OFF
INSERT [dbo].[CONTINENT] ([Id], [Name]) VALUES (1, N'Azia')
INSERT [dbo].[CONTINENT] ([Id], [Name]) VALUES (2, N'Europa')
INSERT [dbo].[CONTINENT] ([Id], [Name]) VALUES (3, N'Avstralia')
INSERT [dbo].[CONTINENT] ([Id], [Name]) VALUES (4, N'Nord America')
INSERT [dbo].[CONTINENT] ([Id], [Name]) VALUES (5, N'South America')
INSERT [dbo].[CONTINENT] ([Id], [Name]) VALUES (6, N'Africa')
INSERT [dbo].[COUNTRY] ([Id], [Name], [Contry_Id]) VALUES (1, N'Bulgaria', 2)
INSERT [dbo].[COUNTRY] ([Id], [Name], [Contry_Id]) VALUES (2, N'Germania', 2)
INSERT [dbo].[COUNTRY] ([Id], [Name], [Contry_Id]) VALUES (3, N'Belgia', 2)
INSERT [dbo].[COUNTRY] ([Id], [Name], [Contry_Id]) VALUES (4, N'Kenia', 6)
INSERT [dbo].[COUNTRY] ([Id], [Name], [Contry_Id]) VALUES (5, N'Ispania', 2)
INSERT [dbo].[COUNTRY] ([Id], [Name], [Contry_Id]) VALUES (6, N'Somalia', 6)
INSERT [dbo].[COUNTRY] ([Id], [Name], [Contry_Id]) VALUES (7, N'Egiped', 6)
INSERT [dbo].[COUNTRY] ([Id], [Name], [Contry_Id]) VALUES (8, N'Brazilia', 5)
INSERT [dbo].[COUNTRY] ([Id], [Name], [Contry_Id]) VALUES (9, N'Canada', 4)
INSERT [dbo].[COUNTRY] ([Id], [Name], [Contry_Id]) VALUES (10, N'China', 1)
INSERT [dbo].[COUNTRY] ([Id], [Name], [Contry_Id]) VALUES (11, N'Argentina', 5)
INSERT [dbo].[COUNTRY] ([Id], [Name], [Contry_Id]) VALUES (12, N'Rusia', 1)
INSERT [dbo].[PERSON] ([Id], [First_name], [Last_name], [Address_Id]) VALUES (1, N'Petar ', N'Ivanov', 2)
INSERT [dbo].[PERSON] ([Id], [First_name], [Last_name], [Address_Id]) VALUES (2, N'Nikolai', N'Litvinenko', 1)
INSERT [dbo].[PERSON] ([Id], [First_name], [Last_name], [Address_Id]) VALUES (3, N'Piket', N'Kenedi', 4)
INSERT [dbo].[PERSON] ([Id], [First_name], [Last_name], [Address_Id]) VALUES (4, N'Alfredo', N'Guido', 5)
INSERT [dbo].[PERSON] ([Id], [First_name], [Last_name], [Address_Id]) VALUES (5, N'Canie', N'Modera', 6)
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [Name], [Age], [Phone Number], [JontShoolId]) VALUES (1, N'Ivan', N'23', N'2332423   ', 1)
INSERT [dbo].[Students] ([Id], [Name], [Age], [Phone Number], [JontShoolId]) VALUES (2, N'Dragan', N'34', N'3434343   ', 2)
INSERT [dbo].[Students] ([Id], [Name], [Age], [Phone Number], [JontShoolId]) VALUES (3, N'Kalina', N'22', N'08328322  ', 2)
SET IDENTITY_INSERT [dbo].[Students] OFF
INSERT [dbo].[TOWN] ([Id], [Name], [Country_Id]) VALUES (1, N'Otava', 4)
INSERT [dbo].[TOWN] ([Id], [Name], [Country_Id]) VALUES (2, N'Calgari', 4)
INSERT [dbo].[TOWN] ([Id], [Name], [Country_Id]) VALUES (3, N'Berlin', 2)
INSERT [dbo].[TOWN] ([Id], [Name], [Country_Id]) VALUES (4, N'Brussels', 2)
INSERT [dbo].[TOWN] ([Id], [Name], [Country_Id]) VALUES (5, N'Rio de Janeiro', 5)
INSERT [dbo].[TOWN] ([Id], [Name], [Country_Id]) VALUES (6, N'Cairo', 6)
INSERT [dbo].[TOWN] ([Id], [Name], [Country_Id]) VALUES (7, N'Pekin', 1)
INSERT [dbo].[TOWN] ([Id], [Name], [Country_Id]) VALUES (8, N'Madrid', 2)
INSERT [dbo].[TOWN] ([Id], [Name], [Country_Id]) VALUES (9, N'Moscow', 1)
INSERT [dbo].[TOWN] ([Id], [Name], [Country_Id]) VALUES (10, N'Mogadishu', 6)
INSERT [dbo].[TOWN] ([Id], [Name], [Country_Id]) VALUES (11, N'Sofia', 2)
INSERT [dbo].[TOWN] ([Id], [Name], [Country_Id]) VALUES (12, N'Nairoby', 6)
ALTER TABLE [dbo].[ADDRESS]  WITH CHECK ADD  CONSTRAINT [FK_ADDRESS_TOWN] FOREIGN KEY([Id])
REFERENCES [dbo].[TOWN] ([Id])
GO
ALTER TABLE [dbo].[ADDRESS] CHECK CONSTRAINT [FK_ADDRESS_TOWN]
GO
ALTER TABLE [dbo].[COUNTRY]  WITH CHECK ADD  CONSTRAINT [FK_COUNTRY_CONTINENT] FOREIGN KEY([Contry_Id])
REFERENCES [dbo].[CONTINENT] ([Id])
GO
ALTER TABLE [dbo].[COUNTRY] CHECK CONSTRAINT [FK_COUNTRY_CONTINENT]
GO
ALTER TABLE [dbo].[PERSON]  WITH CHECK ADD  CONSTRAINT [FK_PERSON_ADDRESS] FOREIGN KEY([Id])
REFERENCES [dbo].[ADDRESS] ([Id])
GO
ALTER TABLE [dbo].[PERSON] CHECK CONSTRAINT [FK_PERSON_ADDRESS]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Classes] FOREIGN KEY([JontShoolId])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Classes]
GO
ALTER TABLE [dbo].[TOWN]  WITH CHECK ADD  CONSTRAINT [FK_TOWN_COUNTRY] FOREIGN KEY([Id])
REFERENCES [dbo].[COUNTRY] ([Id])
GO
ALTER TABLE [dbo].[TOWN] CHECK CONSTRAINT [FK_TOWN_COUNTRY]
GO
USE [master]
GO
ALTER DATABASE [School] SET  READ_WRITE 
GO
