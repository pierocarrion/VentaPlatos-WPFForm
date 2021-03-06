USE [master]
GO
/****** Object:  Database [dbRestaurante]    Script Date: 18/11/2019 22:01:35 ******/
CREATE DATABASE [dbRestaurante]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbRestaurante', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\dbRestaurante.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbRestaurante_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\dbRestaurante_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dbRestaurante] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbRestaurante].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbRestaurante] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbRestaurante] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbRestaurante] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbRestaurante] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbRestaurante] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbRestaurante] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [dbRestaurante] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbRestaurante] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbRestaurante] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbRestaurante] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbRestaurante] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbRestaurante] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbRestaurante] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbRestaurante] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbRestaurante] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dbRestaurante] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbRestaurante] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbRestaurante] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbRestaurante] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbRestaurante] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbRestaurante] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbRestaurante] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbRestaurante] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbRestaurante] SET  MULTI_USER 
GO
ALTER DATABASE [dbRestaurante] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbRestaurante] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbRestaurante] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbRestaurante] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [dbRestaurante] SET DELAYED_DURABILITY = DISABLED 
GO
USE [dbRestaurante]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 18/11/2019 22:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[idCliente] [varchar](11) NOT NULL,
	[NombreC] [varchar](30) NULL,
	[ApellidoC] [varchar](30) NULL,
	[DireccionC] [varchar](30) NULL,
	[Telefono] [int] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleVentas]    Script Date: 18/11/2019 22:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVentas](
	[idDetalleVenta] [int] IDENTITY(1,1) NOT NULL,
	[idVenta] [int] NOT NULL,
	[idPlato] [int] NOT NULL,
	[Costo] [money] NULL,
 CONSTRAINT [PK_DetalleVentas] PRIMARY KEY CLUSTERED 
(
	[idDetalleVenta] ASC,
	[idVenta] ASC,
	[idPlato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Platos]    Script Date: 18/11/2019 22:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platos](
	[idPlato] [int] IDENTITY(1,1) NOT NULL,
	[NombreP] [varchar](30) NULL,
	[PrecioP] [money] NULL,
 CONSTRAINT [PK_Platos] PRIMARY KEY CLUSTERED 
(
	[idPlato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trabajadores]    Script Date: 18/11/2019 22:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trabajadores](
	[idTrabajador] [int] IDENTITY(1,1) NOT NULL,
	[NombreT] [varchar](30) NULL,
	[ApellidoT] [varchar](30) NULL,
 CONSTRAINT [PK_Trabajadores] PRIMARY KEY CLUSTERED 
(
	[idTrabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 18/11/2019 22:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[idVenta] [int] IDENTITY(1,1) NOT NULL,
	[idTrabajador] [int] NULL,
	[idCliente] [varchar](11) NULL,
	[Fecha] [datetime] NULL,
	[Total] [money] NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DetalleVentas]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVentas_Platos] FOREIGN KEY([idPlato])
REFERENCES [dbo].[Platos] ([idPlato])
GO
ALTER TABLE [dbo].[DetalleVentas] CHECK CONSTRAINT [FK_DetalleVentas_Platos]
GO
ALTER TABLE [dbo].[DetalleVentas]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVentas_Ventas] FOREIGN KEY([idVenta])
REFERENCES [dbo].[Ventas] ([idVenta])
GO
ALTER TABLE [dbo].[DetalleVentas] CHECK CONSTRAINT [FK_DetalleVentas_Ventas]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Clientes] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Clientes] ([idCliente])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Clientes]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Trabajadores] FOREIGN KEY([idTrabajador])
REFERENCES [dbo].[Trabajadores] ([idTrabajador])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Trabajadores]
GO
USE [master]
GO
ALTER DATABASE [dbRestaurante] SET  READ_WRITE 
GO
