USE [master]
GO
/****** Object:  Database [DataMartJardineria076]    Script Date: 24/05/2024 2:17:12 a. m. ******/
CREATE DATABASE [DataMartJardineria076]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DataMartJardineria076', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DataMartJardineria076.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DataMartJardineria076_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DataMartJardineria076_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DataMartJardineria076] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DataMartJardineria076].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DataMartJardineria076] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DataMartJardineria076] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DataMartJardineria076] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DataMartJardineria076] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DataMartJardineria076] SET ARITHABORT OFF 
GO
ALTER DATABASE [DataMartJardineria076] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DataMartJardineria076] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DataMartJardineria076] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DataMartJardineria076] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DataMartJardineria076] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DataMartJardineria076] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DataMartJardineria076] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DataMartJardineria076] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DataMartJardineria076] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DataMartJardineria076] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DataMartJardineria076] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DataMartJardineria076] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DataMartJardineria076] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DataMartJardineria076] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DataMartJardineria076] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DataMartJardineria076] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DataMartJardineria076] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DataMartJardineria076] SET RECOVERY FULL 
GO
ALTER DATABASE [DataMartJardineria076] SET  MULTI_USER 
GO
ALTER DATABASE [DataMartJardineria076] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DataMartJardineria076] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DataMartJardineria076] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DataMartJardineria076] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DataMartJardineria076] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DataMartJardineria076] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DataMartJardineria076', N'ON'
GO
ALTER DATABASE [DataMartJardineria076] SET QUERY_STORE = ON
GO
ALTER DATABASE [DataMartJardineria076] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DataMartJardineria076]
GO
/****** Object:  Table [dbo].[DimCliente]    Script Date: 24/05/2024 2:17:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCliente](
	[clienteId] [int] NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[nombre_contacto] [nvarchar](30) NULL,
	[direccion] [nvarchar](50) NULL,
	[limite_credito] [numeric](15, 2) NULL,
	[apellido] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[clienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimEmpleado]    Script Date: 24/05/2024 2:17:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimEmpleado](
	[empleadoId] [int] NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[apellido1] [nvarchar](50) NULL,
	[email] [nvarchar](100) NULL,
	[puesto] [nvarchar](50) NULL,
	[extension] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[empleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimGeografia]    Script Date: 24/05/2024 2:17:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimGeografia](
	[geografia_id] [int] NOT NULL,
	[ciudad] [nvarchar](30) NULL,
	[pais] [nvarchar](50) NULL,
	[region] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[geografia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimProducto]    Script Date: 24/05/2024 2:17:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimProducto](
	[productoId] [int] NOT NULL,
	[precio_venta] [numeric](15, 2) NULL,
	[nombre] [nvarchar](70) NULL,
	[cantidad_en_stock] [smallint] NULL,
	[dimensiones] [nvarchar](25) NULL,
	[categoria] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[productoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[facturaVenta]    Script Date: 24/05/2024 2:17:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[facturaVenta](
	[facturaVentaId] [int] NOT NULL,
	[pedido_id] [int] NULL,
	[ID_producto] [int] NULL,
	[geografia_id] [int] NULL,
	[clienteId] [int] NULL,
	[empleadoId] [int] NULL,
	[total] [numeric](15, 2) NULL,
	[fecha_pedido] [date] NULL,
	[descripcion] [nvarchar](max) NULL,
	[cantidad] [int] NULL,
	[precio_unidad] [numeric](15, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[facturaVentaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[facturaVenta]  WITH CHECK ADD  CONSTRAINT [FK_facturaVenta_DimCliente] FOREIGN KEY([clienteId])
REFERENCES [dbo].[DimCliente] ([clienteId])
GO
ALTER TABLE [dbo].[facturaVenta] CHECK CONSTRAINT [FK_facturaVenta_DimCliente]
GO
ALTER TABLE [dbo].[facturaVenta]  WITH CHECK ADD  CONSTRAINT [FK_facturaVenta_DimEmpleado] FOREIGN KEY([empleadoId])
REFERENCES [dbo].[DimEmpleado] ([empleadoId])
GO
ALTER TABLE [dbo].[facturaVenta] CHECK CONSTRAINT [FK_facturaVenta_DimEmpleado]
GO
ALTER TABLE [dbo].[facturaVenta]  WITH CHECK ADD  CONSTRAINT [FK_facturaVenta_DimGeografia] FOREIGN KEY([geografia_id])
REFERENCES [dbo].[DimGeografia] ([geografia_id])
GO
ALTER TABLE [dbo].[facturaVenta] CHECK CONSTRAINT [FK_facturaVenta_DimGeografia]
GO
ALTER TABLE [dbo].[facturaVenta]  WITH CHECK ADD  CONSTRAINT [FK_facturaVenta_DimProducto] FOREIGN KEY([ID_producto])
REFERENCES [dbo].[DimProducto] ([productoId])
GO
ALTER TABLE [dbo].[facturaVenta] CHECK CONSTRAINT [FK_facturaVenta_DimProducto]
GO
USE [master]
GO
ALTER DATABASE [DataMartJardineria076] SET  READ_WRITE 
GO
