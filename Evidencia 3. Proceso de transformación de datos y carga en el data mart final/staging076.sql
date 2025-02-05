USE [master]
GO
/****** Object:  Database [staging076]    Script Date: 22/05/2024 10:53:56 p. m. ******/
CREATE DATABASE [staging076]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'staging076', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\staging076.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'staging076_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\staging076_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [staging076] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [staging076].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [staging076] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [staging076] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [staging076] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [staging076] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [staging076] SET ARITHABORT OFF 
GO
ALTER DATABASE [staging076] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [staging076] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [staging076] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [staging076] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [staging076] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [staging076] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [staging076] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [staging076] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [staging076] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [staging076] SET  DISABLE_BROKER 
GO
ALTER DATABASE [staging076] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [staging076] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [staging076] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [staging076] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [staging076] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [staging076] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [staging076] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [staging076] SET RECOVERY FULL 
GO
ALTER DATABASE [staging076] SET  MULTI_USER 
GO
ALTER DATABASE [staging076] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [staging076] SET DB_CHAINING OFF 
GO
ALTER DATABASE [staging076] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [staging076] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [staging076] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [staging076] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'staging076', N'ON'
GO
ALTER DATABASE [staging076] SET QUERY_STORE = ON
GO
ALTER DATABASE [staging076] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [staging076]
GO
/****** Object:  Table [dbo].[destino_TB_cliente_staging076]    Script Date: 22/05/2024 10:53:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destino_TB_cliente_staging076](
	[clienteId] [int] IDENTITY(1,1) NOT NULL,
	[nombre_cliente] [nvarchar](50) NULL,
	[apellido] [nvarchar](30) NULL,
	[nombre_contacto] [nvarchar](30) NULL,
	[direccion] [nvarchar](50) NULL,
	[limite_credito] [numeric](15, 2) NULL,
	[ID_empleado_rep_ventas] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[clienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[destino_TB_detalle_pedido_staging076]    Script Date: 22/05/2024 10:53:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destino_TB_detalle_pedido_staging076](
	[detalle_pedido_id] [int] IDENTITY(1,1) NOT NULL,
	[ID_pedido] [int] NULL,
	[cantidad] [int] NULL,
	[precio_unidad] [numeric](15, 2) NULL,
	[ID_producto] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[detalle_pedido_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[destino_TB_empleado_staging076]    Script Date: 22/05/2024 10:53:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destino_TB_empleado_staging076](
	[empleadoId] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[apellido1] [nvarchar](50) NULL,
	[email] [nvarchar](100) NULL,
	[puesto] [nvarchar](50) NULL,
	[extension] [nvarchar](10) NULL,
	[ID_jefe] [int] NULL,
	[ID_oficina] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[empleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[destino_TB_geografia_staging076]    Script Date: 22/05/2024 10:53:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destino_TB_geografia_staging076](
	[geografia_id] [int] IDENTITY(1,1) NOT NULL,
	[ciudad] [nvarchar](30) NULL,
	[region] [nvarchar](50) NULL,
	[pais] [nvarchar](50) NULL,
	[ID_oficina] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[geografia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[destino_TB_hecho_FacturaVentaJardineria]    Script Date: 22/05/2024 10:53:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destino_TB_hecho_FacturaVentaJardineria](
	[facturaVentaId] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[destino_TB_pago_staging076]    Script Date: 22/05/2024 10:53:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destino_TB_pago_staging076](
	[pago_id] [int] IDENTITY(1,1) NOT NULL,
	[ID_cliente] [int] NULL,
	[total] [numeric](15, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[pago_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[destino_TB_pedido_staging076]    Script Date: 22/05/2024 10:53:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destino_TB_pedido_staging076](
	[pedido_id] [int] IDENTITY(1,1) NOT NULL,
	[ID_pedido] [int] NULL,
	[ID_cliente] [int] NULL,
	[fecha_pedido] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[pedido_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[destino_TB_producto_staging076]    Script Date: 22/05/2024 10:53:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destino_TB_producto_staging076](
	[ID_producto] [int] NULL,
	[precio_venta] [numeric](15, 2) NULL,
	[nombre] [nvarchar](70) NULL,
	[cantidad_en_stock] [smallint] NULL,
	[dimensiones] [nvarchar](25) NULL,
	[nombre_categoria] [nvarchar](50) NULL,
	[descripcion] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[destinoClienteDimJardineria]    Script Date: 22/05/2024 10:53:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destinoClienteDimJardineria](
	[clienteDimId] [int] NULL,
	[nombre] [nvarchar](50) NULL,
	[nombre_contacto] [nvarchar](30) NULL,
	[direccion] [nvarchar](50) NULL,
	[limite_credito] [numeric](15, 2) NULL,
	[apellido] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[destinoDimGeografiaJardineria]    Script Date: 22/05/2024 10:53:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destinoDimGeografiaJardineria](
	[geografiaDim_id] [int] NULL,
	[ciudad] [nvarchar](30) NULL,
	[region] [nvarchar](50) NULL,
	[pais] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[destinoEmpleadoDimJardineria]    Script Date: 22/05/2024 10:53:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destinoEmpleadoDimJardineria](
	[empleadoDimId] [int] NULL,
	[nombre] [nvarchar](50) NULL,
	[apellido1] [nvarchar](50) NULL,
	[email] [nvarchar](100) NULL,
	[puesto] [nvarchar](50) NULL,
	[extension] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[destinoProductoDimJardineria]    Script Date: 22/05/2024 10:53:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destinoProductoDimJardineria](
	[productoDimId] [int] NULL,
	[precio_venta] [numeric](15, 2) NULL,
	[nombre] [nvarchar](70) NULL,
	[cantidad_en_stock] [smallint] NULL,
	[dimensiones] [nvarchar](25) NULL,
	[categoria] [nvarchar](50) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [staging076] SET  READ_WRITE 
GO
