USE [master]
GO
/****** Object:  Database [Drive]    Script Date: 25.03.2023 12:47:06 ******/
CREATE DATABASE [Drive]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Drive', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Drive.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Drive_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Drive_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Drive] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Drive].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Drive] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Drive] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Drive] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Drive] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Drive] SET ARITHABORT OFF 
GO
ALTER DATABASE [Drive] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Drive] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Drive] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Drive] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Drive] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Drive] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Drive] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Drive] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Drive] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Drive] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Drive] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Drive] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Drive] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Drive] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Drive] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Drive] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Drive] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Drive] SET RECOVERY FULL 
GO
ALTER DATABASE [Drive] SET  MULTI_USER 
GO
ALTER DATABASE [Drive] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Drive] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Drive] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Drive] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Drive] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Drive', N'ON'
GO
ALTER DATABASE [Drive] SET QUERY_STORE = OFF
GO
USE [Drive]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Drive]
GO
/****** Object:  Table [dbo].[clients]    Script Date: 25.03.2023 12:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients](
	[client_id] [int] NULL,
	[name] [varchar](50) NULL,
	[surname] [varchar](50) NULL,
	[patronymic] [varchar](50) NULL,
	[phone_number] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clients_transports]    Script Date: 25.03.2023 12:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients_transports](
	[client_id] [int] NULL,
	[transport_id] [int] NULL,
	[date_begin] [datetime] NULL,
	[date_end] [datetime] NULL,
	[begin_point] [varchar](50) NULL,
	[end_point] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 25.03.2023 12:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[role_id] [int] NULL,
	[role_name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transport]    Script Date: 25.03.2023 12:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transport](
	[transport_id] [int] NULL,
	[transport_type_id] [int] NULL,
	[transport_color] [varchar](50) NULL,
	[transport_model] [varchar](50) NULL,
	[transport_number] [varchar](10) NULL,
	[transport_enabled] [nvarchar](50) NULL,
	[current_point_location_number] [int] NULL,
	[current_point_location_address] [varchar](50) NULL,
	[price] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transport_type]    Script Date: 25.03.2023 12:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transport_type](
	[transport_id] [int] NULL,
	[transport_type_name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 25.03.2023 12:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[login] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[role_id] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (1, N'Геннадий', N'Морозов', N'Валерьевич', N'9963433')
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (2, N'Илья', N'Седаков', N'Васильевич', N'1243953')
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (3, N'Филипп', N'Киркоров', N'Бедросович', N'2853912')
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (4, N'Дмитрий', N'Комаров', N'Николаевич', N'8866003')
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (5, N'Арина', N'Мартынович', N'Михайловна', N'1234567')
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (6, N'Исаак', N'Израилев', N'Моисеевич', N'5031232')
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (7, N'Борис', N'Сергеев', N'Николаевич', N'9531230')
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (8, N'Алиса', N'Климова', N'Александровна', N'4542341')
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (9, N'Владислав', N'Куликов', N'Даниилович', N'8663312')
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (10, N'Олег', N'Коротков', N'Матвеевич', N'9257843')
GO
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (8, 5, CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2023-05-01T00:00:00.000' AS DateTime), N'1', N'1')
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (8, 4, CAST(N'2023-03-02T00:00:00.000' AS DateTime), CAST(N'2023-03-10T00:00:00.000' AS DateTime), N'1', N'1')
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (8, 4, CAST(N'2023-03-15T00:00:00.000' AS DateTime), CAST(N'2023-03-30T00:00:00.000' AS DateTime), N'2', NULL)
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (9, 5, CAST(N'2022-12-12T00:00:00.000' AS DateTime), CAST(N'2023-01-11T00:00:00.000' AS DateTime), N'3', N'3')
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (1, 10, CAST(N'2023-02-01T00:00:00.000' AS DateTime), CAST(N'2023-04-15T00:00:00.000' AS DateTime), N'4', NULL)
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (7, 6, CAST(N'2023-03-20T00:00:00.000' AS DateTime), CAST(N'2023-03-30T00:00:00.000' AS DateTime), N'2', NULL)
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (9, 8, CAST(N'2021-12-14T00:00:00.000' AS DateTime), CAST(N'2022-05-14T00:00:00.000' AS DateTime), N'1', N'3')
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (1, 7, CAST(N'2023-01-01T00:00:00.000' AS DateTime), CAST(N'2023-04-01T00:00:00.000' AS DateTime), N'2', NULL)
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (7, 3, CAST(N'2022-05-01T00:00:00.000' AS DateTime), CAST(N'2022-05-15T00:00:00.000' AS DateTime), N'3', N'3')
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (7, 3, CAST(N'2022-06-01T00:00:00.000' AS DateTime), CAST(N'2022-07-01T00:00:00.000' AS DateTime), N'2', N'2')
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (9, 9, CAST(N'2019-08-07T00:00:00.000' AS DateTime), CAST(N'2019-08-08T00:00:00.000' AS DateTime), N'1', N'4')
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (8, 8, CAST(N'2020-09-19T00:00:00.000' AS DateTime), CAST(N'2020-10-19T00:00:00.000' AS DateTime), N'4', N'2')
GO
INSERT [dbo].[roles] ([role_id], [role_name]) VALUES (1, N'Администратор')
INSERT [dbo].[roles] ([role_id], [role_name]) VALUES (2, N'Менеджер')
INSERT [dbo].[roles] ([role_id], [role_name]) VALUES (3, N'Клиент')
GO
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (1, 1, N'Синий', N'MERIDA KALAHARI-500', N'XR430Z', N'Да', 1, N'ул. Мира 14', 500.0000)
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (2, 2, N'Синий', N'Suzuki RG200', N'АБ201В', N'Да', 2, N'ул. Победы 20', 1000.0000)
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (3, 1, N'Красный', N'STELS 730', N'ГГ311В', N'Да', 2, N'ул. Победы 20', 400.0000)
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (4, 3, N'Желтый', N'LADA VESTA', N'К341ТО', N'Нет', NULL, NULL, 2000.0000)
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (5, 3, N'Белый', N'LADA VESTA', N'У312ТН', N'Да', 3, N'п. Ленина 16', 2000.0000)
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (6, 3, N'Белый', N'Kia Rio', N'К312ОО', N'Нет', NULL, NULL, 3000.0000)
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (7, 1, N'Чёрный', N'MERIDA KALAHARI-500', N'ZC182V', N'Нет', NULL, NULL, 500.0000)
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (8, 4, N'Красный', N'Alpha RX-11', N'Г352ВС', N'Да', 2, N'ул. Победы 20', 900.0000)
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (9, 4, N'Красный', N'Alpha RX-15', N'А513ВВ', N'Да', 4, N'ул. Труда 8', 900.0000)
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (10, 2, N'Коричневый', N'Yamaha G800', N'У666СР', N'Нет', NULL, NULL, 1000.0000)
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (11, 3, N'Фиолетовый', N'Renault Sandero-II', N'C999ЕН', N'Да', 4, N'ул. Труда 8', 2500.0000)
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price]) VALUES (12, 1, N'Белый', N'GT-50', N'XW121V', N'Да', 1, N'ул. Мира 14', 550.0000)
GO
INSERT [dbo].[transport_type] ([transport_id], [transport_type_name]) VALUES (1, N'Велосипед')
INSERT [dbo].[transport_type] ([transport_id], [transport_type_name]) VALUES (2, N'Мотоцикл')
INSERT [dbo].[transport_type] ([transport_id], [transport_type_name]) VALUES (3, N'Автомобиль')
INSERT [dbo].[transport_type] ([transport_id], [transport_type_name]) VALUES (4, N'Мопец')
GO
INSERT [dbo].[users] ([login], [password], [role_id]) VALUES (N'7efwqtub80i5@outlook.com', N'54zxr3', 3)
INSERT [dbo].[users] ([login], [password], [role_id]) VALUES (N'v718fhbjuq0p@mail.com', N'4d23as', 2)
INSERT [dbo].[users] ([login], [password], [role_id]) VALUES (N'7vnrat4hmcz6@yahoo.com', N'zzz323', 1)
INSERT [dbo].[users] ([login], [password], [role_id]) VALUES (N'v4mlcsi1bgnk@tutanota.com', N'6664ee', 1)
INSERT [dbo].[users] ([login], [password], [role_id]) VALUES (N'2yx3tbqv4ndi@outlook.com', N'85fd4', 2)
INSERT [dbo].[users] ([login], [password], [role_id]) VALUES (N'5bf1xdiq6zup@tutanota.com', N'99663w', 2)
INSERT [dbo].[users] ([login], [password], [role_id]) VALUES (N'p7rviz42j6bh@outlook.com', N'hryus33', 3)
INSERT [dbo].[users] ([login], [password], [role_id]) VALUES (N'g5nrmh1axwfl@outlook.com', N'watw2ain', 3)
INSERT [dbo].[users] ([login], [password], [role_id]) VALUES (N'5knb4drlf2hj@tutanota.com', N'ZsdSDr', 3)
INSERT [dbo].[users] ([login], [password], [role_id]) VALUES (N'pk90ratym8bo@yahoo.com', N'ZZZds2', 3)
GO
USE [master]
GO
ALTER DATABASE [Drive] SET  READ_WRITE 
GO
