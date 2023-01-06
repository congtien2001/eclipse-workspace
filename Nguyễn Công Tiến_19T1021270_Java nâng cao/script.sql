USE [master]
GO
/****** Object:  Database [QLDD]    Script Date: 12/21/2022 2:31:00 PM ******/
CREATE DATABASE [QLDD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLDD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QLDD.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLDD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QLDD_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLDD] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLDD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLDD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLDD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLDD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLDD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLDD] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLDD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLDD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLDD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLDD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLDD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLDD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLDD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLDD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLDD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLDD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLDD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLDD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLDD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLDD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLDD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLDD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLDD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLDD] SET RECOVERY FULL 
GO
ALTER DATABASE [QLDD] SET  MULTI_USER 
GO
ALTER DATABASE [QLDD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLDD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLDD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLDD] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLDD] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLDD', N'ON'
GO
USE [QLDD]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 12/21/2022 2:31:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaChiTietHD] [bigint] IDENTITY(1,1) NOT NULL,
	[MaDiDong] [nvarchar](50) NOT NULL,
	[SoLuongMua] [int] NOT NULL,
	[MaHoaDon] [bigint] NOT NULL,
	[DaMua] [bit] NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaChiTietHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DangNhap]    Script Date: 12/21/2022 2:31:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangNhap](
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Quyen] [bit] NOT NULL,
 CONSTRAINT [PK_DangNhap] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiDong]    Script Date: 12/21/2022 2:31:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiDong](
	[MaDiDong] [nvarchar](50) NOT NULL,
	[TenDiDong] [nvarchar](50) NULL,
	[SoLuong] [bigint] NULL,
	[Gia] [bigint] NULL,
	[MaLoai] [nvarchar](50) NULL,
	[Anh] [nvarchar](50) NULL,
	[NgayNhap] [datetime] NULL,
	[XuatXu] [nvarchar](50) NULL,
 CONSTRAINT [PK_DiDong] PRIMARY KEY CLUSTERED 
(
	[MaDiDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiDong1]    Script Date: 12/21/2022 2:31:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiDong1](
	[MaDiDong] [nvarchar](50) NOT NULL,
	[TenDiDong] [nvarchar](50) NULL,
	[SoLuong] [bigint] NULL,
	[Gia] [bigint] NULL,
	[MaLoai] [nvarchar](50) NULL,
	[Anh] [nvarchar](50) NULL,
	[NgayNhap] [date] NULL,
	[XuatXu] [nvarchar](50) NULL,
 CONSTRAINT [PK_DiDong1] PRIMARY KEY CLUSTERED 
(
	[MaDiDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/21/2022 2:31:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [bigint] IDENTITY(1,1) NOT NULL,
	[MaKH] [bigint] NULL,
	[NgayMua] [datetime] NOT NULL,
	[DaMua] [bit] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/21/2022 2:31:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [bigint] NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDT] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[TenDN] [nvarchar](50) NULL,
	[Pass] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Loai]    Script Date: 12/21/2022 2:31:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[MaLoai] [nvarchar](50) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_Loai] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Loai1]    Script Date: 12/21/2022 2:31:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai1](
	[MaLoai] [nvarchar](50) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_Loai1] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[View_1]    Script Date: 12/21/2022 2:31:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_1]
AS
SELECT dbo.DiDong1.TenDiDong, dbo.ChiTietHoaDon.SoLuongMua, dbo.DiDong1.Gia
FROM     dbo.DiDong1 INNER JOIN
                  dbo.ChiTietHoaDon ON dbo.DiDong1.MaDiDong = dbo.ChiTietHoaDon.MaDiDong INNER JOIN
                  dbo.HoaDon ON dbo.ChiTietHoaDon.MaHoaDon = dbo.HoaDon.MaHoaDon INNER JOIN
                  dbo.KhachHang ON dbo.HoaDon.MaKH = dbo.KhachHang.MaKH

GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] ON 

INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaDiDong], [SoLuongMua], [MaHoaDon], [DaMua]) VALUES (1, N'a1', 5, 11, NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaDiDong], [SoLuongMua], [MaHoaDon], [DaMua]) VALUES (2, N'a2', 5, 45, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaDiDong], [SoLuongMua], [MaHoaDon], [DaMua]) VALUES (3, N'a6', 1, 46, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaDiDong], [SoLuongMua], [MaHoaDon], [DaMua]) VALUES (4, N'a7', 1, 49, 1)
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] OFF
INSERT [dbo].[DangNhap] ([TenDangNhap], [MatKhau], [Quyen]) VALUES (N'lam', N'345', 0)
INSERT [dbo].[DangNhap] ([TenDangNhap], [MatKhau], [Quyen]) VALUES (N'quang', N'234', 1)
INSERT [dbo].[DangNhap] ([TenDangNhap], [MatKhau], [Quyen]) VALUES (N'quy', N'456', 0)
INSERT [dbo].[DangNhap] ([TenDangNhap], [MatKhau], [Quyen]) VALUES (N'tien', N'123', 1)
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'a1', N'Iphone 14 pro max', 10, 32000000, N'Iphone', N'didong_image/a1.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'USA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'a10', N'Iphone 14 pro', 9, 30000000, N'Iphone', N'didong_image/a10.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'USA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'a2', N'Iphone 14 ', 11, 29000000, N'Iphone', N'didong_image/a2.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'USA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'a3', N'Iphone 13 pro max', 12, 31000000, N'Iphone', N'didong_image/a3.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'USA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'a4', N'Iphone 13 pro', 13, 29000000, N'Iphone', N'didong_image/a4.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'USA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'a5', N'Iphone 13', 4, 28000000, N'Iphone', N'didong_image/a5.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'USA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'a6', N'Iphone 12 pro max', 5, 27000000, N'Iphone', N'didong_image/a6.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'USA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'a7', N'Iphone 12 pro', 7, 26000000, N'Iphone', N'didong_image/a7.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'USA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'a8', N'Iphone 12', 8, 25000000, N'Iphone', N'didong_image/a8.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'USA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'a9', N'Iphone se', 9, 24000000, N'Iphone', N'didong_image/a9.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'USA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'r1', N'Realme1', 2, 19000000, N'Relme', N'didong_image/r1.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'CHINA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'r10', N'Realme10', 8, 18000000, N'Relme', N'didong_image/r10.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'CHINA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'r2', N'Realme2', 1, 17000000, N'Relme', N'didong_image/r2.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'CHINA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'r3', N'Realme3', 2, 16000000, N'Relme', N'didong_image/r3.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'CHINA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'r4', N'Realme4', 1, 15000000, N'Relme', N'didong_image/r4.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'CHINA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'r5', N'Realme5', 7, 14000000, N'Relme', N'didong_image/r5.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'CHINA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'r6', N'Realme6', 6, 13000000, N'Relme', N'didong_image/r6.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'CHINA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'r7', N'Realme7', 8, 12000000, N'Relme', N'didong_image/r7.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'CHINA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'r8', N'Realme8', 9, 11000000, N'Relme', N'didong_image/r8.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'CHINA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'r9', N'Realme9', 7, 10000000, N'Relme', N'didong_image/r1.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'CHINA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N's1', N'Samsung1', 32, 25000000, N'Samsung', N'didong_image/s1.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'KOREA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N's10', N'Samsung10', 45, 24000000, N'Samsung', N'didong_image/s10.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'KOREA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N's2', N'Samsung2', 3, 23000000, N'Samsung', N'didong_image/s2.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'KOREA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N's3', N'Samsung3', 2, 22000000, N'Samsung', N'didong_image/s3.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'KOREA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N's4', N'Samsung4', 1, 21000000, N'Samsung', N'didong_image/s4.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'KOREA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N's5', N'Samsung5', 5, 20000000, N'Samsung', N'didong_image/s5.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'KOREA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N's6', N'Samsung6', 6, 19000000, N'Samsung', N'didong_image/s6.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'KOREA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N's7', N'Samsung7', 9, 18000000, N'Samsung', N'didong_image/s7.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'KOREA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N's8', N'Samsung8', 8, 17000000, N'Samsung', N'didong_image/s8.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'KOREA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N's9', N'Samsung9', 7, 16000000, N'Samsung', N'didong_image/s9.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'KOREA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'x1', N'Xiaomi 1', 3, 25000000, N'Xiaomi', N'didong_image/x1.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'CHINA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'x10', N'Xiaomi 10', 2, 24000000, N'Xiaomi', N'didong_image/x10.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'CHINA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'x2', N'Xiaomi 2', 2, 23000000, N'Xiaomi', N'didong_image/x2.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'CHINA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'x3', N'Xiaomi 3', 1, 22000000, N'Xiaomi', N'didong_image/x3.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'CHINA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'x4', N'Xiaomi 4', 4, 21000000, N'Xiaomi', N'didong_image/x4.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'CHINA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'x5', N'Xiaomi 5', 5, 20000000, N'Xiaomi', N'didong_image/x5.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'CHINA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'x6', N'Xiaomi 6', 9, 19000000, N'Xiaomi', N'didong_image/x6.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'CHINA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'x7', N'Xiaomi 7', 8, 18000000, N'Xiaomi', N'didong_image/x7.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'CHINA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'x8', N'Xiaomi 8', 7, 17000000, N'Xiaomi', N'didong_image/x8.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'CHINA')
INSERT [dbo].[DiDong] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'x9', N'Xiaomi 9', 41, 16000000, N'Xiaomi', N'didong_image/x9.jpg', CAST(N'2022-12-12 00:00:00.000' AS DateTime), N'CHINA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'a1', N'Iphone 14 pro max', 12, 35000000, N'Iphone', N'didong_image/a1.jpg', CAST(N'2022-12-12' AS Date), N'USA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'a2', N'Iphone 14 ', 7, 33000000, N'Iphone', N'didong_image/a2.jpg', CAST(N'2022-12-12' AS Date), N'USA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'a3', N'Iphone 13 pro max', 9, 32000000, N'Iphone', N'didong_image/a3.jpg', CAST(N'2022-12-12' AS Date), N'USA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'a4', N'Iphone 13 pro', 6, 31000000, N'Iphone', N'didong_image/a4.jpg', CAST(N'2022-12-12' AS Date), N'USA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'a5', N'Iphone 13', 3, 30000000, N'Iphone', N'didong_image/a5.jpg', CAST(N'2022-12-12' AS Date), N'USA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'a6', N'Iphone 12 pro max', 7, 29000000, N'Iphone', N'didong_image/a6.jpg', CAST(N'2022-12-12' AS Date), N'USA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'a7', N'Iphone 12 pro', 5, 28000000, N'Iphone', N'didong_image/a7.jpg', CAST(N'2022-12-12' AS Date), N'USA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'a8', N'Iphone 12', 4, 27000000, N'Iphone', N'didong_image/a8.jpg', CAST(N'2022-12-12' AS Date), N'USA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'a9', N'Iphone se', 10, 26000000, N'Iphone', N'didong_image/a9.jpg', CAST(N'2022-12-12' AS Date), N'USA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'r1', N'Realme1', 23, 25000000, N'Realme', N'didong_image/r1.jpg', CAST(N'2022-12-12' AS Date), N'CHINA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'r10', N'Realme10', 25, 24000000, N'Realme', N'didong_image/r10.jpg', CAST(N'2022-12-12' AS Date), N'CHINA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'r2', N'Realme2', 44, 23000000, N'Realme', N'didong_image/r2.jpg', CAST(N'2022-12-12' AS Date), N'CHINA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'r3', N'Realme3', 20, 22000000, N'Realme', N'didong_image/r3.jpg', CAST(N'2022-12-12' AS Date), N'CHINA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'r4', N'Realme4', 10, 21000000, N'Realme', N'didong_image/r4.jpg', CAST(N'2022-12-12' AS Date), N'CHINA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'r5', N'Realme5', 15, 20000000, N'Realme', N'didong_image/r5.jpg', CAST(N'2022-12-12' AS Date), N'CHINA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'r6', N'Realme6', 14, 19000000, N'Realme', N'didong_image/r6.jpg', CAST(N'2022-12-12' AS Date), N'CHINA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'r7', N'Realme7', 17, 18000000, N'Realme', N'didong_image/r7.jpg', CAST(N'2022-12-12' AS Date), N'CHINA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'r8', N'Realme8', 18, 17000000, N'Realme', N'didong_image/r8.jpg', CAST(N'2022-12-12' AS Date), N'CHINA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'r9', N'Realme9', 19, 16000000, N'Realme', N'didong_image/r9.jpg', CAST(N'2022-12-12' AS Date), N'CHINA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N's1', N'Samsung1', 2, 30000000, N'Samsung', N'didong_image/s1.jpg', CAST(N'2022-12-12' AS Date), N'KOREA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N's10', N'Samsung10', 25, 29000000, N'Samsung', N'didong_image/s10.jpg', CAST(N'2022-12-12' AS Date), N'KOREA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N's2', N'Samsung2', 23, 28000000, N'Samsung', N'didong_image/s2.jpg', CAST(N'2022-12-12' AS Date), N'KOREA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N's3', N'Samsung3', 45, 27000000, N'Samsung', N'didong_image/s3.jpg', CAST(N'2022-12-12' AS Date), N'KOREA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N's4', N'Samsung4', 17, 26000000, N'Samsung', N'didong_image/s4.jpg', CAST(N'2022-12-12' AS Date), N'KOREA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N's5', N'Samsung5', 19, 25000000, N'Samsung', N'didong_image/s5.jpg', CAST(N'2022-12-12' AS Date), N'KOREA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N's6', N'Samsung6', 15, 24000000, N'Samsung', N'didong_image/s6.jpg', CAST(N'2022-12-12' AS Date), N'KOREA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N's7', N'Samsung7', 14, 23000000, N'Samsung', N'didong_image/s7.jpg', CAST(N'2022-12-12' AS Date), N'KOREA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N's8', N'Samsung8', 19, 22000000, N'Samsung', N'didong_image/s8.jpg', CAST(N'2022-12-12' AS Date), N'KOREA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N's9', N'Samsung9', 11, 21000000, N'Samsung', N'didong_image/s9.jpg', CAST(N'2022-12-12' AS Date), N'KOREA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'x1', N'Xiaomi 1', 23, 30000000, N'Xiaomi', N'didong_image/x1.jpg', CAST(N'2022-12-12' AS Date), N'CHINA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'x10', N'Xiaomi 10', 24, 29000000, N'Xiaomi', N'didong_image/x10.jpg', CAST(N'2022-12-12' AS Date), N'CHINA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'x2', N'Xiaomi 2', 25, 28000000, N'Xiaomi', N'didong_image/x2.jpg', CAST(N'2022-12-12' AS Date), N'CHINA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'x3', N'Xiaomi 3', 26, 27000000, N'Xiaomi', N'didong_image/x3.jpg', CAST(N'2022-12-12' AS Date), N'CHINA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'x4', N'Xiaomi 4', 27, 26000000, N'Xiaomi', N'didong_image/x4.jpg', CAST(N'2022-12-12' AS Date), N'CHINA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'x5', N'Xiaomi 5', 28, 25000000, N'Xiaomi', N'didong_image/x5.jpg', CAST(N'2022-12-12' AS Date), N'CHINA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'x6', N'Xiaomi 6', 29, 24000000, N'Xiaomi', N'didong_image/x6.jpg', CAST(N'2022-12-12' AS Date), N'CHINA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'x7', N'Xiaomi 7', 4, 23000000, N'Xiaomi', N'didong_image/x7.jpg', CAST(N'2022-12-12' AS Date), N'CHINA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'x8', N'Xiaomi 8', 5, 22000000, N'Xiaomi', N'didong_image/x8.jpg', CAST(N'2022-12-12' AS Date), N'CHINA')
INSERT [dbo].[DiDong1] ([MaDiDong], [TenDiDong], [SoLuong], [Gia], [MaLoai], [Anh], [NgayNhap], [XuatXu]) VALUES (N'x9', N'Xiaomi 9', 9, 21000000, N'Xiaomi', N'didong_image/x9.jpg', CAST(N'2022-12-12' AS Date), N'CHINA')
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKH], [NgayMua], [DaMua]) VALUES (11, 1, CAST(N'2022-12-12 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKH], [NgayMua], [DaMua]) VALUES (22, 2, CAST(N'2022-12-12 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKH], [NgayMua], [DaMua]) VALUES (33, 3, CAST(N'2022-12-12 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKH], [NgayMua], [DaMua]) VALUES (44, 4, CAST(N'2022-12-12 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKH], [NgayMua], [DaMua]) VALUES (45, 1, CAST(N'2022-12-21 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKH], [NgayMua], [DaMua]) VALUES (46, 1, CAST(N'2022-12-21 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKH], [NgayMua], [DaMua]) VALUES (49, 1, CAST(N'2022-12-21 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKH], [NgayMua], [DaMua]) VALUES (52, 1, CAST(N'2022-12-21 00:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SoDT], [Email], [TenDN], [Pass]) VALUES (1, N'Nguyễn Công Tiến', N'Huế', N'0123456789', N'tien@gmail.com', N'tien', N'123')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SoDT], [Email], [TenDN], [Pass]) VALUES (2, N'Võ Ngọc Nhật Quang', N'Huế', N'0123456789', N'quang@gmail.com', N'quang', N'234')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SoDT], [Email], [TenDN], [Pass]) VALUES (3, N'Hoàng Thế Lâm', N'Huế', N'0123456789', N'lam@gmail.com', N'lam', N'345')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SoDT], [Email], [TenDN], [Pass]) VALUES (4, N'Nguyễn Văn Quý', N'Huế', N'0123456789', N'quy@gmail.com', N'quy', N'456')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (N'Iphone', N'Điện thoại Iphone')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (N'Realme', N'Điện thoại Realme')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (N'Samsung', N'Điện thoại Samsung')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (N'Xiaomi', N'Điện thoại Xiaomi')
INSERT [dbo].[Loai1] ([MaLoai], [TenLoai]) VALUES (N'Iphone', N'Điện thoại Iphone')
INSERT [dbo].[Loai1] ([MaLoai], [TenLoai]) VALUES (N'Realme', N'Điện thoại Realme')
INSERT [dbo].[Loai1] ([MaLoai], [TenLoai]) VALUES (N'Samsung', N'Điện thoại Samsung')
INSERT [dbo].[Loai1] ([MaLoai], [TenLoai]) VALUES (N'Xiaomi', N'Điện thoại Xiaomi')
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_DiDong1] FOREIGN KEY([MaDiDong])
REFERENCES [dbo].[DiDong1] ([MaDiDong])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_DiDong1]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[DiDong1]  WITH CHECK ADD  CONSTRAINT [FK_DiDong1_Loai1] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[Loai1] ([MaLoai])
GO
ALTER TABLE [dbo].[DiDong1] CHECK CONSTRAINT [FK_DiDong1_Loai1]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "DiDong1"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 7
               Left = 290
               Bottom = 170
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "HoaDon"
            Begin Extent = 
               Top = 7
               Left = 532
               Bottom = 170
               Right = 726
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KhachHang"
            Begin Extent = 
               Top = 7
               Left = 774
               Bottom = 170
               Right = 968
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
USE [master]
GO
ALTER DATABASE [QLDD] SET  READ_WRITE 
GO
