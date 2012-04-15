CREATE DATABASE QLDoAn
GO
USE [QLDoAn]
GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 04/15/2012 18:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[MaSinhVien] [varchar](20) NOT NULL,
	[TenSinhVien] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[KhoaHoc] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_SINHVIEN] PRIMARY KEY CLUSTERED 
(
	[MaSinhVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MONHOC]    Script Date: 04/15/2012 18:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONHOC](
	[MaMonHoc] [int] IDENTITY(1,1) NOT NULL,
	[TenMonHoc] [nvarchar](50) NULL,
	[SoLuongSVNhom] [int] NULL,
	[ThoiGianBatDau] [datetime] NULL,
	[ThoiGianKetThuc] [datetime] NULL,
 CONSTRAINT [PK_MONHOC] PRIMARY KEY CLUSTERED 
(
	[MaMonHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIDOAN]    Script Date: 04/15/2012 18:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIDOAN](
	[MaLoaiDoAn] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiDoAn] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAIDOAN] PRIMARY KEY CLUSTERED 
(
	[MaLoaiDoAn] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIAOVIEN]    Script Date: 04/15/2012 18:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIAOVIEN](
	[MaGiaoVien] [int] IDENTITY(1,1) NOT NULL,
	[TenGiaoVien] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[TinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_GIAOVIEN] PRIMARY KEY CLUSTERED 
(
	[MaGiaoVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOAN]    Script Date: 04/15/2012 18:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOAN](
	[MaDoAn] [int] IDENTITY(1,1) NOT NULL,
	[TenDoAn] [nvarchar](50) NULL,
	[MaMonHoc] [int] NULL,
	[MaLoaiDoAn] [int] NULL,
	[ThoiHanNop] [datetime] NULL,
	[SoLuongDangKy] [int] NULL,
 CONSTRAINT [PK_DOAN] PRIMARY KEY CLUSTERED 
(
	[MaDoAn] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANCONG]    Script Date: 04/15/2012 18:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANCONG](
	[MaMonHoc] [int] NOT NULL,
	[MaGiaoVien] [int] NOT NULL,
 CONSTRAINT [PK_PHANCONG] PRIMARY KEY CLUSTERED 
(
	[MaMonHoc] ASC,
	[MaGiaoVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHOM]    Script Date: 04/15/2012 18:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHOM](
	[MaNhom] [int] IDENTITY(1,1) NOT NULL,
	[TenNhom] [nvarchar](50) NULL,
	[MaMonHoc] [int] NULL,
	[TruongNhom] [varchar](20) NULL,
	[TinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_NHOM] PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DE]    Script Date: 04/15/2012 18:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DE](
	[MaDe] [int] IDENTITY(1,1) NOT NULL,
	[MaDoAn] [int] NULL,
	[LienKet] [varchar](200) NULL,
 CONSTRAINT [PK_DE] PRIMARY KEY CLUSTERED 
(
	[MaDe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHITIETNHOM]    Script Date: 04/15/2012 18:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHITIETNHOM](
	[MaNhom] [int] NOT NULL,
	[MaSinhVien] [varchar](20) NOT NULL,
 CONSTRAINT [PK_CHITIETNHOM] PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC,
	[MaSinhVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DE_SINHVIEN]    Script Date: 04/15/2012 18:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DE_SINHVIEN](
	[MaDe] [int] NOT NULL,
	[MaSinhVien] [varchar](20) NOT NULL,
 CONSTRAINT [PK_DE_SINHVIEN] PRIMARY KEY CLUSTERED 
(
	[MaDe] ASC,
	[MaSinhVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_CHITIETNHOM_NHOM]    Script Date: 04/15/2012 18:41:08 ******/
ALTER TABLE [dbo].[CHITIETNHOM]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETNHOM_NHOM] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[NHOM] ([MaNhom])
GO
ALTER TABLE [dbo].[CHITIETNHOM] CHECK CONSTRAINT [FK_CHITIETNHOM_NHOM]
GO
/****** Object:  ForeignKey [FK_CHITIETNHOM_SINHVIEN]    Script Date: 04/15/2012 18:41:08 ******/
ALTER TABLE [dbo].[CHITIETNHOM]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETNHOM_SINHVIEN] FOREIGN KEY([MaSinhVien])
REFERENCES [dbo].[SINHVIEN] ([MaSinhVien])
GO
ALTER TABLE [dbo].[CHITIETNHOM] CHECK CONSTRAINT [FK_CHITIETNHOM_SINHVIEN]
GO
/****** Object:  ForeignKey [FK_DE_DOAN]    Script Date: 04/15/2012 18:41:08 ******/
ALTER TABLE [dbo].[DE]  WITH CHECK ADD  CONSTRAINT [FK_DE_DOAN] FOREIGN KEY([MaDoAn])
REFERENCES [dbo].[DOAN] ([MaDoAn])
GO
ALTER TABLE [dbo].[DE] CHECK CONSTRAINT [FK_DE_DOAN]
GO
/****** Object:  ForeignKey [FK_DE_SINHVIEN_DE]    Script Date: 04/15/2012 18:41:08 ******/
ALTER TABLE [dbo].[DE_SINHVIEN]  WITH CHECK ADD  CONSTRAINT [FK_DE_SINHVIEN_DE] FOREIGN KEY([MaDe])
REFERENCES [dbo].[DE] ([MaDe])
GO
ALTER TABLE [dbo].[DE_SINHVIEN] CHECK CONSTRAINT [FK_DE_SINHVIEN_DE]
GO
/****** Object:  ForeignKey [FK_DE_SINHVIEN_SINHVIEN]    Script Date: 04/15/2012 18:41:08 ******/
ALTER TABLE [dbo].[DE_SINHVIEN]  WITH CHECK ADD  CONSTRAINT [FK_DE_SINHVIEN_SINHVIEN] FOREIGN KEY([MaSinhVien])
REFERENCES [dbo].[SINHVIEN] ([MaSinhVien])
GO
ALTER TABLE [dbo].[DE_SINHVIEN] CHECK CONSTRAINT [FK_DE_SINHVIEN_SINHVIEN]
GO
/****** Object:  ForeignKey [FK_DOAN_LOAIDOAN]    Script Date: 04/15/2012 18:41:08 ******/
ALTER TABLE [dbo].[DOAN]  WITH CHECK ADD  CONSTRAINT [FK_DOAN_LOAIDOAN] FOREIGN KEY([MaLoaiDoAn])
REFERENCES [dbo].[LOAIDOAN] ([MaLoaiDoAn])
GO
ALTER TABLE [dbo].[DOAN] CHECK CONSTRAINT [FK_DOAN_LOAIDOAN]
GO
/****** Object:  ForeignKey [FK_DOAN_MONHOC]    Script Date: 04/15/2012 18:41:08 ******/
ALTER TABLE [dbo].[DOAN]  WITH CHECK ADD  CONSTRAINT [FK_DOAN_MONHOC] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MONHOC] ([MaMonHoc])
GO
ALTER TABLE [dbo].[DOAN] CHECK CONSTRAINT [FK_DOAN_MONHOC]
GO
/****** Object:  ForeignKey [FK_NHOM_MONHOC]    Script Date: 04/15/2012 18:41:08 ******/
ALTER TABLE [dbo].[NHOM]  WITH CHECK ADD  CONSTRAINT [FK_NHOM_MONHOC] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MONHOC] ([MaMonHoc])
GO
ALTER TABLE [dbo].[NHOM] CHECK CONSTRAINT [FK_NHOM_MONHOC]
GO
/****** Object:  ForeignKey [FK_NHOM_SINHVIEN]    Script Date: 04/15/2012 18:41:08 ******/
ALTER TABLE [dbo].[NHOM]  WITH CHECK ADD  CONSTRAINT [FK_NHOM_SINHVIEN] FOREIGN KEY([TruongNhom])
REFERENCES [dbo].[SINHVIEN] ([MaSinhVien])
GO
ALTER TABLE [dbo].[NHOM] CHECK CONSTRAINT [FK_NHOM_SINHVIEN]
GO
/****** Object:  ForeignKey [FK_PHANCONG_GIAOVIEN]    Script Date: 04/15/2012 18:41:08 ******/
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONG_GIAOVIEN] FOREIGN KEY([MaGiaoVien])
REFERENCES [dbo].[GIAOVIEN] ([MaGiaoVien])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PHANCONG_GIAOVIEN]
GO
/****** Object:  ForeignKey [FK_PHANCONG_MONHOC]    Script Date: 04/15/2012 18:41:08 ******/
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONG_MONHOC] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MONHOC] ([MaMonHoc])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PHANCONG_MONHOC]
GO
