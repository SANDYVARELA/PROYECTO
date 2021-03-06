USE [master]
GO
/****** Object:  Database [PARKING_LOT]    Script Date: 06/06/2018 19:58:17 ******/
CREATE DATABASE [PARKING_LOT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PARKING_LOT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\PARKING_LOT.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PARKING_LOT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\PARKING_LOT_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PARKING_LOT] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PARKING_LOT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PARKING_LOT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PARKING_LOT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PARKING_LOT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PARKING_LOT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PARKING_LOT] SET ARITHABORT OFF 
GO
ALTER DATABASE [PARKING_LOT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PARKING_LOT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PARKING_LOT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PARKING_LOT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PARKING_LOT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PARKING_LOT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PARKING_LOT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PARKING_LOT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PARKING_LOT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PARKING_LOT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PARKING_LOT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PARKING_LOT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PARKING_LOT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PARKING_LOT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PARKING_LOT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PARKING_LOT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PARKING_LOT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PARKING_LOT] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PARKING_LOT] SET  MULTI_USER 
GO
ALTER DATABASE [PARKING_LOT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PARKING_LOT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PARKING_LOT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PARKING_LOT] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PARKING_LOT] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PARKING_LOT', N'ON'
GO
USE [PARKING_LOT]
GO
/****** Object:  User [DESKTOP-L0GLE2A\SENA]    Script Date: 06/06/2018 19:58:17 ******/
CREATE USER [DESKTOP-L0GLE2A\SENA] FOR LOGIN [DESKTOP-L0GLE2A\SENA] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 06/06/2018 19:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Idcustomer] [int] IDENTITY(1,1) NOT NULL,
	[document_type] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[idaddress] [nvarchar](50) NULL,
	[cellphone] [int] NULL,
	[email] [nvarchar](50) NULL,
	[Idtype_customer] [int] NOT NULL,
	[document] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Idcustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Historical_cost]    Script Date: 06/06/2018 19:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Historical_cost](
	[Idhistorical] [int] IDENTITY(1,1) NOT NULL,
	[Total_value] [int] NULL,
	[Id_bill] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Idhistorical] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Place]    Script Date: 06/06/2018 19:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Place](
	[Idnumber_place] [int] IDENTITY(1,1) NOT NULL,
	[Idtype_place] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Idnumber_place] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rate]    Script Date: 06/06/2018 19:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rate](
	[Idrate] [int] IDENTITY(1,1) NOT NULL,
	[minutes_value] [int] NULL,
	[hour_value] [int] NULL,
	[full_value] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Idrate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rol_Dependence]    Script Date: 06/06/2018 19:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol_Dependence](
	[Idrol_dependence] [int] IDENTITY(1,1) NOT NULL,
	[Idrole] [int] NOT NULL,
	[Idrole_system] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Idrol_dependence] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role_System]    Script Date: 06/06/2018 19:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_System](
	[Idrole_system] [int] IDENTITY(1,1) NOT NULL,
	[idrole_dependence] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Idrole_system] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[System_Billing]    Script Date: 06/06/2018 19:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[System_Billing](
	[Id_bill] [int] IDENTITY(1,1) NOT NULL,
	[date_admission] [datetime] NOT NULL,
	[departure_date] [datetime] NOT NULL,
	[hour_admission] [datetime] NOT NULL,
	[hour_departure] [datetime] NOT NULL,
	[Idvehicle_number] [int] NOT NULL,
	[Idrole_system] [int] NOT NULL,
	[valor_total] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_bill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Type_Customer]    Script Date: 06/06/2018 19:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type_Customer](
	[Idtype_customer] [int] IDENTITY(1,1) NOT NULL,
	[name_type_customer] [nvarchar](50) NULL,
	[descrip] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Idtype_customer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Type_Place]    Script Date: 06/06/2018 19:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type_Place](
	[Idtype_place] [int] IDENTITY(1,1) NOT NULL,
	[zone] [nvarchar](50) NULL,
	[descrip] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Idtype_place] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Type_Vehicle]    Script Date: 06/06/2018 19:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type_Vehicle](
	[Idtype_vehicle] [int] IDENTITY(1,1) NOT NULL,
	[name_type_vehicle] [nvarchar](50) NULL,
	[Idnumber_place] [int] NOT NULL,
	[Idrate] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Idtype_vehicle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserId]    Script Date: 06/06/2018 19:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserId](
	[Idrole] [int] IDENTITY(1,1) NOT NULL,
	[name_user] [nvarchar](50) NOT NULL,
	[last_name_user] [nvarchar](50) NOT NULL,
	[pass] [char](50) NULL,
	[date_creation] [datetime] NOT NULL,
	[stateId] [bit] NULL,
	[document_type] [nvarchar](50) NULL,
	[document] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Idrole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 06/06/2018 19:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle](
	[Idvehicle_number] [int] IDENTITY(1,1) NOT NULL,
	[lic_plate] [int] NULL,
	[brand] [nvarchar](50) NULL,
	[color] [nvarchar](50) NULL,
	[model] [nvarchar](50) NULL,
	[Idtype_vehicle] [int] NOT NULL,
	[Idcustomer] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Idvehicle_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Type_Customer] FOREIGN KEY([Idtype_customer])
REFERENCES [dbo].[Type_Customer] ([Idtype_customer])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Type_Customer]
GO
ALTER TABLE [dbo].[Historical_cost]  WITH CHECK ADD  CONSTRAINT [FK_Historical_cost_System_Billing] FOREIGN KEY([Total_value])
REFERENCES [dbo].[System_Billing] ([Id_bill])
GO
ALTER TABLE [dbo].[Historical_cost] CHECK CONSTRAINT [FK_Historical_cost_System_Billing]
GO
ALTER TABLE [dbo].[Place]  WITH CHECK ADD  CONSTRAINT [FK_Place_Type_Place] FOREIGN KEY([Idtype_place])
REFERENCES [dbo].[Type_Place] ([Idtype_place])
GO
ALTER TABLE [dbo].[Place] CHECK CONSTRAINT [FK_Place_Type_Place]
GO
ALTER TABLE [dbo].[Rol_Dependence]  WITH CHECK ADD  CONSTRAINT [FK_Rol_Dependence_UserId] FOREIGN KEY([Idrole])
REFERENCES [dbo].[UserId] ([Idrole])
GO
ALTER TABLE [dbo].[Rol_Dependence] CHECK CONSTRAINT [FK_Rol_Dependence_UserId]
GO
ALTER TABLE [dbo].[Role_System]  WITH CHECK ADD  CONSTRAINT [FK_Role_System_Rol_Dependence] FOREIGN KEY([idrole_dependence])
REFERENCES [dbo].[Rol_Dependence] ([Idrol_dependence])
GO
ALTER TABLE [dbo].[Role_System] CHECK CONSTRAINT [FK_Role_System_Rol_Dependence]
GO
ALTER TABLE [dbo].[System_Billing]  WITH CHECK ADD  CONSTRAINT [FK_System_Billing_Role_System] FOREIGN KEY([Idrole_system])
REFERENCES [dbo].[Role_System] ([Idrole_system])
GO
ALTER TABLE [dbo].[System_Billing] CHECK CONSTRAINT [FK_System_Billing_Role_System]
GO
ALTER TABLE [dbo].[System_Billing]  WITH CHECK ADD  CONSTRAINT [FK_System_Billing_Vehicle] FOREIGN KEY([Idvehicle_number])
REFERENCES [dbo].[Vehicle] ([Idvehicle_number])
GO
ALTER TABLE [dbo].[System_Billing] CHECK CONSTRAINT [FK_System_Billing_Vehicle]
GO
ALTER TABLE [dbo].[Type_Vehicle]  WITH CHECK ADD  CONSTRAINT [FK_Type_Vehicle_Place] FOREIGN KEY([Idnumber_place])
REFERENCES [dbo].[Place] ([Idnumber_place])
GO
ALTER TABLE [dbo].[Type_Vehicle] CHECK CONSTRAINT [FK_Type_Vehicle_Place]
GO
ALTER TABLE [dbo].[Type_Vehicle]  WITH CHECK ADD  CONSTRAINT [FK_Type_Vehicle_Rate] FOREIGN KEY([Idrate])
REFERENCES [dbo].[Rate] ([Idrate])
GO
ALTER TABLE [dbo].[Type_Vehicle] CHECK CONSTRAINT [FK_Type_Vehicle_Rate]
GO
ALTER TABLE [dbo].[Vehicle]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_Customer] FOREIGN KEY([Idcustomer])
REFERENCES [dbo].[Customer] ([Idcustomer])
GO
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK_Vehicle_Customer]
GO
ALTER TABLE [dbo].[Vehicle]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_Type_Vehicle] FOREIGN KEY([Idtype_vehicle])
REFERENCES [dbo].[Type_Vehicle] ([Idtype_vehicle])
GO
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK_Vehicle_Type_Vehicle]
GO
USE [master]
GO
ALTER DATABASE [PARKING_LOT] SET  READ_WRITE 
GO
