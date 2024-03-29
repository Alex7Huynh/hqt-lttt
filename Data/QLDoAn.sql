-- Tạo Cơ Sở Dữ Liệu Và Phát Sinh Dữ Liệu.
CREATE DATABASE QLDoAn
GO
USE [QLDoAn]
GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 04/29/2012 14:43:23 ******/
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
	[MatKhau] [varchar](20) NULL,
 CONSTRAINT [PK_SINHVIEN] PRIMARY KEY CLUSTERED 
(
	[MaSinhVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [TenSinhVien], [NgaySinh], [KhoaHoc], [TinhTrang], [MatKhau]) VALUES (N'0812001', N'Nguyễn Văn A', CAST(0x0000808600000000 AS DateTime), N'2008', N'đang học', N'0812001')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [TenSinhVien], [NgaySinh], [KhoaHoc], [TinhTrang], [MatKhau]) VALUES (N'0812002', N'Trần B', CAST(0x000080A200000000 AS DateTime), N'2008', N'đang học', N'0812002')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [TenSinhVien], [NgaySinh], [KhoaHoc], [TinhTrang], [MatKhau]) VALUES (N'0812003', N'Huỳnh C', CAST(0x000080C100000000 AS DateTime), N'2008', N'đang học', N'0812003')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [TenSinhVien], [NgaySinh], [KhoaHoc], [TinhTrang], [MatKhau]) VALUES (N'0812004', N'Trương D', CAST(0x0000806800000000 AS DateTime), N'2008', N'đã tốt nghiệp', N'0812004')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [TenSinhVien], [NgaySinh], [KhoaHoc], [TinhTrang], [MatKhau]) VALUES (N'0812005', N'Chương E', CAST(0x00007F3700000000 AS DateTime), N'2008', N'đang học', N'0812005')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [TenSinhVien], [NgaySinh], [KhoaHoc], [TinhTrang], [MatKhau]) VALUES (N'0812006', N'Tống G', CAST(0x00007E0900000000 AS DateTime), N'2008', N'buộc thôi học', N'0812006')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [TenSinhVien], [NgaySinh], [KhoaHoc], [TinhTrang], [MatKhau]) VALUES (N'0812007', N'Hoàng I', CAST(0x00007F9500000000 AS DateTime), N'2008', N'buộc thôi học', N'0812007')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [TenSinhVien], [NgaySinh], [KhoaHoc], [TinhTrang], [MatKhau]) VALUES (N'0812008', N'Vạn K', CAST(0x0000808D00000000 AS DateTime), N'2008', N'đang học', N'0812008')
INSERT [dbo].[SINHVIEN] ([MaSinhVien], [TenSinhVien], [NgaySinh], [KhoaHoc], [TinhTrang], [MatKhau]) VALUES (N'0812009', N'Lý L', CAST(0x0000814A00000000 AS DateTime), N'2008', N'đang học', N'0812009')
/****** Object:  Table [dbo].[MONHOC]    Script Date: 04/29/2012 14:43:23 ******/
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
SET IDENTITY_INSERT [dbo].[MONHOC] ON
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoLuongSVNhom], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (1, N'Các chủ đề nâng cao trong CNPM', 3, CAST(0x00009F5100000000 AS DateTime), CAST(0x00009FCF00000000 AS DateTime))
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoLuongSVNhom], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (2, N'Java phân tán', 2, CAST(0x00009F5100000000 AS DateTime), CAST(0x00009FCF00000000 AS DateTime))
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoLuongSVNhom], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (3, N'Kiến trúc phần mềm', 2, CAST(0x00009F5100000000 AS DateTime), CAST(0x00009FCF00000000 AS DateTime))
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoLuongSVNhom], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (4, N'Quản lý quy trình phần mềm', 5, CAST(0x00009F5100000000 AS DateTime), CAST(0x00009FCF00000000 AS DateTime))
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoLuongSVNhom], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (5, N'Lập trình hiện đại', 3, CAST(0x00009F5100000000 AS DateTime), CAST(0x00009FCF00000000 AS DateTime))
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoLuongSVNhom], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (6, N'Mô hình hóa phần mềm', 1, CAST(0x00009FEE00000000 AS DateTime), CAST(0x0000A0A000000000 AS DateTime))
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoLuongSVNhom], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (7, N'Mẫu thiết kế', 5, CAST(0x00009FEE00000000 AS DateTime), CAST(0x0000A0A000000000 AS DateTime))
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoLuongSVNhom], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (8, N'Thiết kế giao diện', 5, CAST(0x00009FEE00000000 AS DateTime), CAST(0x0000A0A000000000 AS DateTime))
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoLuongSVNhom], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (9, N'Hệ quản trị CSDL', 4, CAST(0x00009FEE00000000 AS DateTime), CAST(0x0000A0A000000000 AS DateTime))
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoLuongSVNhom], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (10, N'Lập trình logic', 3, CAST(0x00009FEE00000000 AS DateTime), CAST(0x0000A0A000000000 AS DateTime))
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoLuongSVNhom], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (11, N'Cơ sở trí tuệ nhân tạo', 2, CAST(0x00009FEE00000000 AS DateTime), CAST(0x0000A0A000000000 AS DateTime))
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoLuongSVNhom], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (12, N'Kiểm chứng phần mềm', 5, CAST(0x00009FEE00000000 AS DateTime), CAST(0x0000A0A000000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[MONHOC] OFF
/****** Object:  Table [dbo].[LOAIDOAN]    Script Date: 04/29/2012 14:43:23 ******/
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
SET IDENTITY_INSERT [dbo].[LOAIDOAN] ON
INSERT [dbo].[LOAIDOAN] ([MaLoaiDoAn], [TenLoaiDoAn]) VALUES (1, N'Đồ án giữa kỳ')
INSERT [dbo].[LOAIDOAN] ([MaLoaiDoAn], [TenLoaiDoAn]) VALUES (2, N'Đồ án cuối kỳ')
INSERT [dbo].[LOAIDOAN] ([MaLoaiDoAn], [TenLoaiDoAn]) VALUES (3, N'Bài tập cộng điểm')
SET IDENTITY_INSERT [dbo].[LOAIDOAN] OFF
/****** Object:  Table [dbo].[GIAOVIEN]    Script Date: 04/29/2012 14:43:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[GIAOVIEN](
	[MaGiaoVien] [varchar](20) NOT NULL,
	[TenGiaoVien] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[MatKhau] [varchar](20) NULL,
 CONSTRAINT [PK_GIAOVIEN] PRIMARY KEY CLUSTERED 
(
	[MaGiaoVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[GIAOVIEN] ([MaGiaoVien], [TenGiaoVien], [NgaySinh], [TinhTrang], [MatKhau]) VALUES (N'dhcuong', N'Đỗ Hoàng Cường', CAST(0x0000632D00000000 AS DateTime), N'nghỉ phép', N'dhcuong')
INSERT [dbo].[GIAOVIEN] ([MaGiaoVien], [TenGiaoVien], [NgaySinh], [TinhTrang], [MatKhau]) VALUES (N'lqvu', N'Lâm Quang Vũ', CAST(0x00006B0200000000 AS DateTime), N'đang dạy', N'lqvu')
INSERT [dbo].[GIAOVIEN] ([MaGiaoVien], [TenGiaoVien], [NgaySinh], [TinhTrang], [MatKhau]) VALUES (N'ltanh', N'Lê Trí Anh', CAST(0x00006B5E00000000 AS DateTime), N'nghỉ phép', N'ltanh')
INSERT [dbo].[GIAOVIEN] ([MaGiaoVien], [TenGiaoVien], [NgaySinh], [TinhTrang], [MatKhau]) VALUES (N'nndkhoa', N'Ngô Ngọc Đăng Khoa', CAST(0x0000726100000000 AS DateTime), N'đang dạy', N'nndkhoa')
INSERT [dbo].[GIAOVIEN] ([MaGiaoVien], [TenGiaoVien], [NgaySinh], [TinhTrang], [MatKhau]) VALUES (N'nnthao', N'Nguyễn Ngọc Thảo', CAST(0x000072C000000000 AS DateTime), N'đang dạy', N'nnthao')
INSERT [dbo].[GIAOVIEN] ([MaGiaoVien], [TenGiaoVien], [NgaySinh], [TinhTrang], [MatKhau]) VALUES (N'nthuy', N'Nguyễn Tiến Huy', CAST(0x0000746C00000000 AS DateTime), N'đang dạy', N'nthuy')
INSERT [dbo].[GIAOVIEN] ([MaGiaoVien], [TenGiaoVien], [NgaySinh], [TinhTrang], [MatKhau]) VALUES (N'nvu', N'Nguyễn Văn Vũ', CAST(0x000061FF00000000 AS DateTime), N'đang dạy', N'nvu')
INSERT [dbo].[GIAOVIEN] ([MaGiaoVien], [TenGiaoVien], [NgaySinh], [TinhTrang], [MatKhau]) VALUES (N'nhanh', N'Nguyễn Hoàng Anh', CAST(0x000067B500000000 AS DateTime), N'nghỉ phép', N'nhanh')
INSERT [dbo].[GIAOVIEN] ([MaGiaoVien], [TenGiaoVien], [NgaySinh], [TinhTrang], [MatKhau]) VALUES (N'ptson', N'Phạm Tuấn Sơn', CAST(0x0000713200000000 AS DateTime), N'nghỉ phép', N'ptson')
INSERT [dbo].[GIAOVIEN] ([MaGiaoVien], [TenGiaoVien], [NgaySinh], [TinhTrang], [MatKhau]) VALUES (N'tdthu', N'Trần Đan Thư', CAST(0x0000567200000000 AS DateTime), N'đang dạy', N'tdthu')
INSERT [dbo].[GIAOVIEN] ([MaGiaoVien], [TenGiaoVien], [NgaySinh], [TinhTrang], [MatKhau]) VALUES (N'tmtriet', N'Trần Minh Triết', CAST(0x000063DF00000000 AS DateTime), N'đang dạy', N'tmtriet')
INSERT [dbo].[GIAOVIEN] ([MaGiaoVien], [TenGiaoVien], [NgaySinh], [TinhTrang], [MatKhau]) VALUES (N'tnhduc', N'Tuấn Nguyên Hoài Đức', CAST(0x000066A300000000 AS DateTime), N'đang dạy', N'tnhduc')
/****** Object:  Table [dbo].[DOAN]    Script Date: 04/29/2012 14:43:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOAN](
	[MaDoAn] [int] IDENTITY(1,1) NOT NULL,
	[TenDoAn] [nvarchar](50) NULL,
	[MaMonHoc] [int] NOT NULL,
	[MaLoaiDoAn] [int] NOT NULL,
	[ThoiHanNop] [datetime] NULL,
	[SoLuongDangKy] [int] NULL,
 CONSTRAINT [PK_DOAN] PRIMARY KEY CLUSTERED 
(
	[MaDoAn] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DOAN] ON
INSERT [dbo].[DOAN] ([MaDoAn], [TenDoAn], [MaMonHoc], [MaLoaiDoAn], [ThoiHanNop], [SoLuongDangKy]) VALUES (2, N'Đăng ký đồ án môn học', 9, 1, '04/08/2012', 10)
INSERT [dbo].[DOAN] ([MaDoAn], [TenDoAn], [MaMonHoc], [MaLoaiDoAn], [ThoiHanNop], [SoLuongDangKy]) VALUES (3, N'Tìm hiểu giải thuật leo đồi', 11, 3, CAST(0x0000A04700000000 AS DateTime), 10)
INSERT [dbo].[DOAN] ([MaDoAn], [TenDoAn], [MaMonHoc], [MaLoaiDoAn], [ThoiHanNop], [SoLuongDangKy]) VALUES (4, N'Quản lý nhà hàng', 8, 2, CAST(0x0000A06100000000 AS DateTime), 5)
INSERT [dbo].[DOAN] ([MaDoAn], [TenDoAn], [MaMonHoc], [MaLoaiDoAn], [ThoiHanNop], [SoLuongDangKy]) VALUES (5, N'Trang web Apple Store', 2, 2, CAST(0x00009FCF00000000 AS DateTime), 4)
INSERT [dbo].[DOAN] ([MaDoAn], [TenDoAn], [MaMonHoc], [MaLoaiDoAn], [ThoiHanNop], [SoLuongDangKy]) VALUES (6, N'Ứng dụng tìm kiếm dịch vụ TPHCM', 4, 2, CAST(0x00009FC300000000 AS DateTime), 12)
INSERT [dbo].[DOAN] ([MaDoAn], [TenDoAn], [MaMonHoc], [MaLoaiDoAn], [ThoiHanNop], [SoLuongDangKy]) VALUES (7, N'Mạng xã hội Zonest', 12, 2, CAST(0x0000A06000000000 AS DateTime), 20)
INSERT [dbo].[DOAN] ([MaDoAn], [TenDoAn], [MaMonHoc], [MaLoaiDoAn], [ThoiHanNop], [SoLuongDangKy]) VALUES (8, N'Website tìm kiếm ứng dụng AOP', 1, 1, CAST(0x00009FD400000000 AS DateTime), 7)
INSERT [dbo].[DOAN] ([MaDoAn], [TenDoAn], [MaMonHoc], [MaLoaiDoAn], [ThoiHanNop], [SoLuongDangKy]) VALUES (9, N'Ứng dụng quản lý biển số xe', 3, 2, CAST(0x00009FDC00000000 AS DateTime), 1)
INSERT [dbo].[DOAN] ([MaDoAn], [TenDoAn], [MaMonHoc], [MaLoaiDoAn], [ThoiHanNop], [SoLuongDangKy]) VALUES (10, N'Ứng dụng phân tích đặc tả hình thức', 6, 1, CAST(0x0000A03900000000 AS DateTime), 30)
SET IDENTITY_INSERT [dbo].[DOAN] OFF
/****** Object:  Table [dbo].[PHANCONG]    Script Date: 04/29/2012 14:43:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[PHANCONG](
	[MaMonHoc] [int] NOT NULL,
	[MaGiaoVien] [varchar](20) NOT NULL,
 CONSTRAINT [PK_PHANCONG] PRIMARY KEY CLUSTERED 
(
	[MaMonHoc] ASC,
	[MaGiaoVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PHANCONG] ([MaMonHoc], [MaGiaoVien]) VALUES (1, N'nvu')
INSERT [dbo].[PHANCONG] ([MaMonHoc], [MaGiaoVien]) VALUES (3, N'tmtriet')
INSERT [dbo].[PHANCONG] ([MaMonHoc], [MaGiaoVien]) VALUES (5, N'nndkhoa')
INSERT [dbo].[PHANCONG] ([MaMonHoc], [MaGiaoVien]) VALUES (6, N'tmtriet')
INSERT [dbo].[PHANCONG] ([MaMonHoc], [MaGiaoVien]) VALUES (7, N'tdthu')
INSERT [dbo].[PHANCONG] ([MaMonHoc], [MaGiaoVien]) VALUES (8, N'nvu')
INSERT [dbo].[PHANCONG] ([MaMonHoc], [MaGiaoVien]) VALUES (9, N'tnhduc')
INSERT [dbo].[PHANCONG] ([MaMonHoc], [MaGiaoVien]) VALUES (11, N'nnthao')
INSERT [dbo].[PHANCONG] ([MaMonHoc], [MaGiaoVien]) VALUES (12, N'lqvu')
INSERT [dbo].[PHANCONG] ([MaMonHoc], [MaGiaoVien]) VALUES (3, N'nndkhoa')
/****** Object:  Table [dbo].[NHOM]    Script Date: 04/29/2012 14:43:23 ******/
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
	[TruongNhom] [varchar](20) NOT NULL,
	[TinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_NHOM] PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[NHOM] ON
INSERT [dbo].[NHOM] ([MaNhom], [TenNhom], [MaMonHoc], [TruongNhom], [TinhTrang]) VALUES (1, N'Testing master', 12, N'0812001', N'hủy nhóm')
INSERT [dbo].[NHOM] ([MaNhom], [TenNhom], [MaMonHoc], [TruongNhom], [TinhTrang]) VALUES (2, N'AI master', 11, N'0812002', N'đang hoạt động')
INSERT [dbo].[NHOM] ([MaNhom], [TenNhom], [MaMonHoc], [TruongNhom], [TinhTrang]) VALUES (3, N'DB master', 9, N'0812003', N'đang hoạt động')
INSERT [dbo].[NHOM] ([MaNhom], [TenNhom], [MaMonHoc], [TruongNhom], [TinhTrang]) VALUES (4, N'UI master', 8, N'0812004', N'đang hoạt động')
INSERT [dbo].[NHOM] ([MaNhom], [TenNhom], [MaMonHoc], [TruongNhom], [TinhTrang]) VALUES (5, N'Pro testers', 12, N'0812001', N'đang hoạt động')
SET IDENTITY_INSERT [dbo].[NHOM] OFF
/****** Object:  Table [dbo].[DE]    Script Date: 04/29/2012 14:43:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DE](
	[MaDe] [int] IDENTITY(1,1) NOT NULL,
	[MaDoAn] [int] NOT NULL,
	[LienKet] [varchar](200) NULL,
 CONSTRAINT [PK_DE] PRIMARY KEY CLUSTERED 
(
	[MaDe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DE] ON
INSERT [dbo].[DE] ([MaDe], [MaDoAn], [LienKet]) VALUES (1, 2, N'http://www.2.com')
INSERT [dbo].[DE] ([MaDe], [MaDoAn], [LienKet]) VALUES (2, 3, N'http://www.3.com')
INSERT [dbo].[DE] ([MaDe], [MaDoAn], [LienKet]) VALUES (3, 4, N'http://www.4.com')
INSERT [dbo].[DE] ([MaDe], [MaDoAn], [LienKet]) VALUES (4, 6, N'http://www.6a.com')
INSERT [dbo].[DE] ([MaDe], [MaDoAn], [LienKet]) VALUES (5, 6, N'http://www.6b.com')
INSERT [dbo].[DE] ([MaDe], [MaDoAn], [LienKet]) VALUES (6, 6, N'http://www.6c.com')
INSERT [dbo].[DE] ([MaDe], [MaDoAn], [LienKet]) VALUES (7, 10, N'http://www.10a.com')
INSERT [dbo].[DE] ([MaDe], [MaDoAn], [LienKet]) VALUES (8, 10, N'http://www.10b.com')
INSERT [dbo].[DE] ([MaDe], [MaDoAn], [LienKet]) VALUES (9,9, N'http://www.10b.com')
SET IDENTITY_INSERT [dbo].[DE] OFF
/****** Object:  Table [dbo].[CHITIETNHOM]    Script Date: 04/29/2012 14:43:23 ******/
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
INSERT [dbo].[CHITIETNHOM] ([MaNhom], [MaSinhVien]) VALUES (1, N'0812001')
INSERT [dbo].[CHITIETNHOM] ([MaNhom], [MaSinhVien]) VALUES (1, N'0812002')
INSERT [dbo].[CHITIETNHOM] ([MaNhom], [MaSinhVien]) VALUES (1, N'0812003')
INSERT [dbo].[CHITIETNHOM] ([MaNhom], [MaSinhVien]) VALUES (1, N'0812004')
INSERT [dbo].[CHITIETNHOM] ([MaNhom], [MaSinhVien]) VALUES (1, N'0812005')
INSERT [dbo].[CHITIETNHOM] ([MaNhom], [MaSinhVien]) VALUES (2, N'0812002')
INSERT [dbo].[CHITIETNHOM] ([MaNhom], [MaSinhVien]) VALUES (2, N'0812005')
INSERT [dbo].[CHITIETNHOM] ([MaNhom], [MaSinhVien]) VALUES (3, N'0812003')
INSERT [dbo].[CHITIETNHOM] ([MaNhom], [MaSinhVien]) VALUES (3, N'0812004')
INSERT [dbo].[CHITIETNHOM] ([MaNhom], [MaSinhVien]) VALUES (3, N'0812005')
INSERT [dbo].[CHITIETNHOM] ([MaNhom], [MaSinhVien]) VALUES (3, N'0812006')
/****** Object:  Table [dbo].[DE_SINHVIEN]    Script Date: 04/29/2012 14:43:23 ******/
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
INSERT [dbo].[DE_SINHVIEN] ([MaDe], [MaSinhVien]) VALUES (1, N'0812001')
INSERT [dbo].[DE_SINHVIEN] ([MaDe], [MaSinhVien]) VALUES (2, N'0812002')
INSERT [dbo].[DE_SINHVIEN] ([MaDe], [MaSinhVien]) VALUES (3, N'0812003')
INSERT [dbo].[DE_SINHVIEN] ([MaDe], [MaSinhVien]) VALUES (3, N'0812004')
INSERT [dbo].[DE_SINHVIEN] ([MaDe], [MaSinhVien]) VALUES (3, N'0812005')
INSERT [dbo].[DE_SINHVIEN] ([MaDe], [MaSinhVien]) VALUES (4, N'0812002')
INSERT [dbo].[DE_SINHVIEN] ([MaDe], [MaSinhVien]) VALUES (4, N'0812003')
INSERT [dbo].[DE_SINHVIEN] ([MaDe], [MaSinhVien]) VALUES (5, N'0812001')
INSERT [dbo].[DE_SINHVIEN] ([MaDe], [MaSinhVien]) VALUES (5, N'0812003')
INSERT [dbo].[DE_SINHVIEN] ([MaDe], [MaSinhVien]) VALUES (5, N'0812005')
INSERT [dbo].[DE_SINHVIEN] ([MaDe], [MaSinhVien]) VALUES (5, N'0812006')
/****** Object:  Check [C_GIAOVIEN_TINHTRANG]    Script Date: 04/29/2012 14:43:23 ******/
ALTER TABLE [dbo].[GIAOVIEN]  WITH CHECK ADD  CONSTRAINT [C_GIAOVIEN_TINHTRANG] CHECK  (([TINHTRANG]=N'nghỉ phép' OR [TINHTRANG]=N'nghỉ việc' OR [TINHTRANG]=N'đang dạy'))
GO
ALTER TABLE [dbo].[GIAOVIEN] CHECK CONSTRAINT [C_GIAOVIEN_TINHTRANG]
GO
/****** Object:  Check [C_NHOM_TINHTRANG]    Script Date: 04/29/2012 14:43:23 ******/
ALTER TABLE [dbo].[NHOM]  WITH CHECK ADD  CONSTRAINT [C_NHOM_TINHTRANG] CHECK  (([TINHTRANG]=N'hủy nhóm' OR [TINHTRANG]=N'đang hoạt động'))
GO
ALTER TABLE [dbo].[NHOM] CHECK CONSTRAINT [C_NHOM_TINHTRANG]
GO
/****** Object:  Check [C_SINHVIEN_TINHTRANG]    Script Date: 04/29/2012 14:43:23 ******/
ALTER TABLE [dbo].[SINHVIEN]  WITH CHECK ADD  CONSTRAINT [C_SINHVIEN_TINHTRANG] CHECK  (([TINHTRANG]=N'đã tốt nghiệp' OR [TINHTRANG]=N'buộc thôi học' OR [TINHTRANG]=N'đang học'))
GO
ALTER TABLE [dbo].[SINHVIEN] CHECK CONSTRAINT [C_SINHVIEN_TINHTRANG]
GO
/****** Object:  ForeignKey [FK_CHITIETNHOM_NHOM]    Script Date: 04/29/2012 14:43:23 ******/
ALTER TABLE [dbo].[CHITIETNHOM]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETNHOM_NHOM] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[NHOM] ([MaNhom])
GO
ALTER TABLE [dbo].[CHITIETNHOM] CHECK CONSTRAINT [FK_CHITIETNHOM_NHOM]
GO
/****** Object:  ForeignKey [FK_CHITIETNHOM_SINHVIEN]    Script Date: 04/29/2012 14:43:23 ******/
ALTER TABLE [dbo].[CHITIETNHOM]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETNHOM_SINHVIEN] FOREIGN KEY([MaSinhVien])
REFERENCES [dbo].[SINHVIEN] ([MaSinhVien])
GO
ALTER TABLE [dbo].[CHITIETNHOM] CHECK CONSTRAINT [FK_CHITIETNHOM_SINHVIEN]
GO
/****** Object:  ForeignKey [FK_DE_DOAN]    Script Date: 04/29/2012 14:43:23 ******/
ALTER TABLE [dbo].[DE]  WITH CHECK ADD  CONSTRAINT [FK_DE_DOAN] FOREIGN KEY([MaDoAn])
REFERENCES [dbo].[DOAN] ([MaDoAn])
GO
ALTER TABLE [dbo].[DE] CHECK CONSTRAINT [FK_DE_DOAN]
GO
/****** Object:  ForeignKey [FK_DE_SINHVIEN_DE]    Script Date: 04/29/2012 14:43:23 ******/
ALTER TABLE [dbo].[DE_SINHVIEN]  WITH CHECK ADD  CONSTRAINT [FK_DE_SINHVIEN_DE] FOREIGN KEY([MaDe])
REFERENCES [dbo].[DE] ([MaDe])
GO
ALTER TABLE [dbo].[DE_SINHVIEN] CHECK CONSTRAINT [FK_DE_SINHVIEN_DE]
GO
/****** Object:  ForeignKey [FK_DE_SINHVIEN_SINHVIEN]    Script Date: 04/29/2012 14:43:23 ******/
ALTER TABLE [dbo].[DE_SINHVIEN]  WITH CHECK ADD  CONSTRAINT [FK_DE_SINHVIEN_SINHVIEN] FOREIGN KEY([MaSinhVien])
REFERENCES [dbo].[SINHVIEN] ([MaSinhVien])
GO
ALTER TABLE [dbo].[DE_SINHVIEN] CHECK CONSTRAINT [FK_DE_SINHVIEN_SINHVIEN]
GO
/****** Object:  ForeignKey [FK_DOAN_LOAIDOAN]    Script Date: 04/29/2012 14:43:23 ******/
ALTER TABLE [dbo].[DOAN]  WITH CHECK ADD  CONSTRAINT [FK_DOAN_LOAIDOAN] FOREIGN KEY([MaLoaiDoAn])
REFERENCES [dbo].[LOAIDOAN] ([MaLoaiDoAn])
GO
ALTER TABLE [dbo].[DOAN] CHECK CONSTRAINT [FK_DOAN_LOAIDOAN]
GO
/****** Object:  ForeignKey [FK_DOAN_MONHOC]    Script Date: 04/29/2012 14:43:23 ******/
ALTER TABLE [dbo].[DOAN]  WITH CHECK ADD  CONSTRAINT [FK_DOAN_MONHOC] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MONHOC] ([MaMonHoc])
GO
ALTER TABLE [dbo].[DOAN] CHECK CONSTRAINT [FK_DOAN_MONHOC]
GO
/****** Object:  ForeignKey [FK_NHOM_MONHOC]    Script Date: 04/29/2012 14:43:23 ******/
ALTER TABLE [dbo].[NHOM]  WITH CHECK ADD  CONSTRAINT [FK_NHOM_MONHOC] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MONHOC] ([MaMonHoc])
GO
ALTER TABLE [dbo].[NHOM] CHECK CONSTRAINT [FK_NHOM_MONHOC]
GO
/****** Object:  ForeignKey [FK_NHOM_SINHVIEN]    Script Date: 04/29/2012 14:43:23 ******/
ALTER TABLE [dbo].[NHOM]  WITH CHECK ADD  CONSTRAINT [FK_NHOM_SINHVIEN] FOREIGN KEY([TruongNhom])
REFERENCES [dbo].[SINHVIEN] ([MaSinhVien])
GO
ALTER TABLE [dbo].[NHOM] CHECK CONSTRAINT [FK_NHOM_SINHVIEN]
GO
/****** Object:  ForeignKey [FK_PHANCONG_GIAOVIEN]    Script Date: 04/29/2012 14:43:23 ******/
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONG_GIAOVIEN] FOREIGN KEY([MaGiaoVien])
REFERENCES [dbo].[GIAOVIEN] ([MaGiaoVien])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PHANCONG_GIAOVIEN]
GO
/****** Object:  ForeignKey [FK_PHANCONG_MONHOC]    Script Date: 04/29/2012 14:43:23 ******/
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONG_MONHOC] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MONHOC] ([MaMonHoc])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PHANCONG_MONHOC]
GO


UPDATE DOAN SET ThoiHanNop = '06/20/2012' WHERE MaDoAn = 9

--CÁC STORE PROCEDURE GÂY RA LỖI TRANH CHẤP ĐỒNG THÒI
--Stored procedure CapNhatThoiGianNopDoAn: được gọi khi giáo viên muốn thay đổi thời gian nộp của một đồ án mà giáo viên quản lý
CREATE PROCEDURE usp_CapNhatThoiGianNopDoAn_Error
	@MaGiaoVien  VARCHAR(20),	
	@MaDoAn INT,
	@ThoiHanNopMoi DATETIME,
	@WaitingTime VARCHAR(10),
	@KetQua NVARCHAR(100) OUTPUT 	
AS
	BEGIN TRAN
		DECLARE @MaMonHoc NVARCHAR(50)
		SELECT @MaMonHoc=MaMonHoc FROM DOAN da WHERE MaDoAn = @MaDoAn
		-- Kiểm tra xem giáo viên có quản lý môn này không
		DECLARE @MaGVQuanLy VARCHAR(20)
		SELECT @MaGVQuanLy = MaGiaoVien FROM PHANCONG  WHERE MaMonHoc=@MaMonHoc
		IF(@MaGiaoVien=@MaGVQuanLy)
			BEGIN
				UPDATE DOAN SET ThoiHanNop=@ThoiHanNopMoi WHERE MaDoAn=@MaDoAn
				SET @KetQua = N'Cập nhật thành công'
			END
		ELSE
			BEGIN
				SET @KetQua = N'Giáo viên này không quản lý môn này'
				COMMIT TRAN
				RETURN
			END
		--
		WAITFOR DELAY @WaitingTime
		
		DECLARE @KetThuc DATETIME
		SELECT @KetThuc=ThoiGianKetThuc FROM MONHOC WHERE MaMonHoc = @MaMonHoc
		IF(@ThoiHanNopMoi >@KetThuc)
			BEGIN
				SET @KetQua = N'Thời hạn nộp sau thời hạn kết thức của môn học này'
				ROLLBACK TRAN
				RETURN
			END
	COMMIT TRAN
GO


--Stored procedure DangKyDoAn: được gọi khi sinh viên muốn đăng ký đồ án
CREATE PROCEDURE usp_DangKyDoAn_Error
	@MaSinhVien VARCHAR(20),
	@MaDe INT,
	@WaitingTime VARCHAR(10),
	@ThoiHanNopKQ DATETIME OUTPUT,
	@KetQua NVARCHAR(100) OUTPUT
AS
	BEGIN TRAN	
		--SET TRANSACTION ISOLATION LEVEL REPEATABLE READ		
		--Tính toán số nhóm đã đăng ký đồ án
		DECLARE @soNhomDaDangKy int	
		DECLARE @soNhomToiDa int
		DECLARE @maDoAn int
		SELECT @maDoAn = d.MaDoAn FROM DE d WHERE d.MaDe = @maDe
		SELECT @soNhomDaDangKy = COUNT(dsv.MaSinhVien) 
								FROM DOAN da, DE d, DE_SINHVIEN dsv 
								WHERE da.MaDoAn = @maDoAn AND da.MaDoAn = d.MaDoAn AND d.MaDe = dsv.MaDe
		PRINT N'Số nhóm đã đăng ký đồ án: ' + CAST(@soNhomDaDangKy AS VARCHAR(12))
		SELECT @soNhomToiDa = da.SoLuongDangKy FROM DOAN da WHERE da.MaDoAn = @maDoAn
		
		DECLARE @ThoiHanNop DATETIME
		SET @ThoiHanNop = (SELECT ThoiHanNop FROM DOAN da, DE d WHERE da.MaDoAn=d.MaDoAn AND d.MaDe=@MaDe)
		--Kiểm tra số nhóm đã đang ký nhỏ hơn số nhóm đăng ký tối đa và thời gian đăng ký trước thời gian nộp đồ án, nếu thỏa 2 điều kiện sẽ chấp nhận đăng ký và thêm vào CSDL.
		IF(@soNhomDaDangKy < @soNhomToiDa AND @ThoiHanNop> GETDATE())
			BEGIN		
				--Chờ giây để demo lỗi phantom trong truy xuất đồng thời, 
				--tức là giao tác T1 chưa kịp phát khóa ghi đã bị T2 chiếm và ghi dữ liệu xuống.
				WAITFOR DELAY @WaitingTime		
				INSERT INTO DE_SINHVIEN VALUES(@maDe, @maSinhVien)
				SET @KetQua = N'Đăng ký thành công. Hạn nộp là ' + CAST(@ThoiHanNop AS VARCHAR(12))
			END
		ELSE
			BEGIN
				SET @KetQua = N'Đăng ký thất bại do đã đủ nhóm hoặc đã quá hạn nộp.'
			END
		--Lấy thời hạn nộp
		SET @ThoiHanNopKQ = (SELECT ThoiHanNop FROM DOAN da, DE d WHERE da.MaDoAn=d.MaDoAn AND d.MaDe=@MaDe)
		--Xuất lại số nhóm đăng ký đồ án
		SELECT @soNhomDaDangKy = COUNT(dsv.MaSinhVien) 
								FROM DOAN da, DE d, DE_SINHVIEN dsv 
								WHERE da.MaDoAn = @maDoAn AND da.MaDoAn = d.MaDoAn AND d.MaDe = dsv.MaDe
		PRINT N'Số nhóm đăng ký đồ án: ' + CAST(@soNhomDaDangKy AS VARCHAR(12))
	COMMIT TRAN
GO


--Stored procedure HuyDoAn: được gọi khi sinh viên muốn hủy đồ án
CREATE PROCEDURE usp_HuyDoAn_Error
	@MaSinhVien VARCHAR(20),
	@MaDe INT,	
	@KetQua INT OUTPUT
AS
	BEGIN TRAN
		SET TRAN ISOLATION LEVEL READ UNCOMMITTED
		DECLARE @HanNop DATETIME
		SELECT @HanNop=ThoiHanNop FROM DOAN da, DE d WHERE da.MaDoAn= d.MaDoAn and d.MaDe=@MaDe
		IF(@HanNop>GETDATE())
			BEGIN
				DELETE FROM DE_SINHVIEN WHERE MaDe=@MaDe and MaSinhVien=@MaSinhVien
				SET @KetQua = 1
			END
		ELSE
			BEGIN
				SET @KetQua = 0
			END
	COMMIT TRAN
GO

--Stored procedure CapNhatSoLuongSVNhom: được gọi khi giáo viên muốn thay đổi số lượng sinh viên trong nhóm
CREATE PROCEDURE usp_CapNhatSoLuongSVNhom_Error
	@MaGiaoVien VARCHAR(20),
	@TenMonHoc NVARCHAR(50),
	@Count INT,
	@WaitingTime VARCHAR(10),
	@KetQua INT OUTPUT
AS
	BEGIN TRAN
		--Kiểm tra giáo viên có dạy môn đó hay không.
		DECLARE @MonHoc NVARCHAR(50),
				@slsv	INT
		SET @MonHoc = (SELECT mh.TenMonHoc FROM MONHOC mh, PHANCONG pc, GIAOVIEN gv WHERE mh.MaMonHoc = pc.MaMonHoc AND pc.MaGiaoVien = gv.MaGiaoVien AND gv.MaGiaoVien = @MaGiaoVien AND mh.TenMonHoc = @TenMonHoc)
		IF(@MonHoc = @TenMonHoc)
			BEGIN	
				--Bắt đầu đọc số lượng sinh viên nhóm và tính toán			
				SET @slsv = (SELECT mh.SoLuongSVNhom FROM MONHOC mh WHERE @TenMonHoc = mh.TenMonHoc)
				SET @slsv = @slsv + @Count
				--Chờ 5 giây để demo lỗi lost update trong truy xuất đồng thời
				WAITFOR DELAY @WaitingTime
				--Update số lượng sinh viên nhóm
				UPDATE MONHOC SET SoLuongSVNhom = @slsv WHERE TenMonHoc = @TenMonHoc
				SET @Ketqua = @slsv
			END
		ELSE
			BEGIN
				SET @KetQua = -1
			END
	COMMIT TRAN
GO


--CÁC STORED PROCEDURE KHẮC PHỤC LỖI TRANH CHẤP ĐỒNG THỜI

--Stored procedure CapNhatThoiGianNopDoAn: được gọi khi giáo viên muốn thay đổi thời gian nộp của một đồ án mà giáo viên quản lý
CREATE PROCEDURE usp_CapNhatThoiGianNopDoAn_Fix
	@MaGiaoVien  VARCHAR(20),	
	@MaDoAn INT,
	@ThoiHanNopMoi DATETIME,
	@WaitingTime VARCHAR(10),
	@KetQua NVARCHAR(50) OUTPUT 	
AS
	BEGIN TRAN
		DECLARE @MaMonHoc NVARCHAR(50)
		SELECT @MaMonHoc=MaMonHoc FROM DOAN da WHERE MaDoAn = @MaDoAn
		-- Kiểm tra xem giáo viên có quản lý môn này không
		DECLARE @MaGVQuanLy VARCHAR(20)
		SELECT @MaGVQuanLy = MaGiaoVien FROM PHANCONG  WHERE MaMonHoc=@MaMonHoc
		IF(@MaGiaoVien=@MaGVQuanLy)
			BEGIN
				UPDATE DOAN SET ThoiHanNop=@ThoiHanNopMoi WHERE MaDoAn=@MaDoAn
				SET @KetQua = N'Cập nhật thành công'
			END
		ELSE
			BEGIN
				SET @KetQua = N'Giáo viên này không quản lý môn này'
				COMMIT TRAN
				RETURN
			END
		--
		WAITFOR DELAY @WaitingTime
		
		DECLARE @KetThuc DATETIME
		SELECT @KetThuc=ThoiGianKetThuc FROM MONHOC WHERE MaMonHoc = @MaMonHoc
		IF(@ThoiHanNopMoi >@KetThuc)
			BEGIN
				SET @KetQua = N'Thời hạn nộp sau thời hạn kết thức của môn học này'
				ROLLBACK TRAN
				RETURN
			END
	COMMIT TRAN
GO

--Stored procedure DangKyDoAn: được gọi khi sinh viên muốn đăng ký đồ án
CREATE PROCEDURE usp_DangKyDoAn_Fix
	@MaSinhVien VARCHAR(20),
	@MaDe INT,	
	@WaitingTime VARCHAR(10),
	@ThoiHanNopKQ DATETIME OUTPUT,
	@KetQua NVARCHAR(100) OUTPUT
AS
	BEGIN TRAN	
		SET TRANSACTION ISOLATION LEVEL SERIALIZABLE		
		--Tính toán số nhóm đã đăng ký đồ án
		DECLARE @soNhomDaDangKy int	
		DECLARE @soNhomToiDa int
		DECLARE @maDoAn int
		SELECT @maDoAn = d.MaDoAn FROM DE d WHERE d.MaDe = @maDe
		SELECT @soNhomDaDangKy = COUNT(dsv.MaSinhVien) 
								FROM DOAN da, DE d, DE_SINHVIEN dsv 
								WHERE da.MaDoAn = @maDoAn AND da.MaDoAn = d.MaDoAn AND d.MaDe = dsv.MaDe
		PRINT N'Số nhóm đã đăng ký đồ án: ' + CAST(@soNhomDaDangKy AS VARCHAR(12))
		SELECT @soNhomToiDa = da.SoLuongDangKy FROM DOAN da WHERE da.MaDoAn = @maDoAn
		
		DECLARE @ThoiHanNop DATETIME
		SET @ThoiHanNop = (SELECT ThoiHanNop FROM DOAN da, DE d WHERE da.MaDoAn=d.MaDoAn AND d.MaDe=@MaDe)
		--Kiểm tra số nhóm đã đang ký nhỏ hơn số nhóm đăng ký tối đa và thời gian đăng ký trước thời gian nộp đồ án, nếu thỏa 2 điều kiện sẽ chấp nhận đăng ký và thêm vào CSDL.
		IF(@soNhomDaDangKy < @soNhomToiDa AND @ThoiHanNop> GETDATE())
			BEGIN		
				--Chờ giây để demo lỗi phantom trong truy xuất đồng thời, 
				--tức là giao tác T1 chưa kịp phát khóa ghi đã bị T2 chiếm và ghi dữ liệu xuống.
				WAITFOR DELAY @WaitingTime
				INSERT INTO DE_SINHVIEN VALUES(@maDe, @maSinhVien)
				SET @KetQua = N'Đăng ký thành công. Hạn nộp là ' + CAST(@ThoiHanNop AS VARCHAR(12))
			END
		ELSE
			BEGIN
				SET @KetQua = N'Đăng ký thất bại do đã đủ nhóm hoặc đã quá hạn nộp.'
			END
		--Lấy thời hạn nộp
		SET @ThoiHanNopKQ = (SELECT ThoiHanNop FROM DOAN da, DE d WHERE da.MaDoAn=d.MaDoAn AND d.MaDe=@MaDe)
		--Xuất lại số nhóm đăng ký đồ án
		SELECT @soNhomDaDangKy = COUNT(dsv.MaSinhVien) 
								FROM DOAN da, DE d, DE_SINHVIEN dsv 
								WHERE da.MaDoAn = @maDoAn AND da.MaDoAn = d.MaDoAn AND d.MaDe = dsv.MaDe
		PRINT N'Số nhóm đăng ký đồ án: ' + CAST(@soNhomDaDangKy AS VARCHAR(12))
	COMMIT TRAN
GO

--Stored procedure HuyDoAn: được gọi khi sinh viên muốn hủy đồ án 
Create PROCEDURE usp_HuyDoAn_Fix
	@MaSinhVien VARCHAR(20),
	@MaDe INT,	
	@KetQua INT OUTPUT
AS
	BEGIN TRAN
		SET TRAN ISOLATION LEVEL READ COMMITTED
		DECLARE @HanNop DATETIME
		SELECT @HanNop=ThoiHanNop FROM DOAN da, DE d WHERE da.MaDoAn= d.MaDoAn and d.MaDe=@MaDe
		IF(@HanNop>GETDATE())
			BEGIN
				DELETE FROM DE_SINHVIEN WHERE MaDe=@MaDe and MaSinhVien=@MaSinhVien
				SET @KetQua = 1
			END
		ELSE
			BEGIN
				SET @KetQua = 0
			END
	COMMIT TRAN
GO

--Stored procedure CapNhatSoLuongSVNhom: được gọi khi giáo viên muốn thay đổi số lượng sinh viên của nhóm
CREATE PROCEDURE usp_CapNhatSoLuongSVNhom_Fix
	@MaGiaoVien VARCHAR(20),
	@TenMonHoc NVARCHAR(50),
	@Count INT,
	@WaitingTime VARCHAR(10),
	@KetQua INT OUTPUT
AS
	BEGIN TRAN
		SET TRANSACTION ISOLATION LEVEL REPEATABLE READ	
		--Kiểm tra giáo viên có dạy môn đó hay không.
		DECLARE @MonHoc NVARCHAR(50),
				@slsv	INT
		SET @MonHoc =(SELECT  mh.TenMonHoc FROM MONHOC mh, PHANCONG pc, GIAOVIEN gv WHERE mh.MaMonHoc = pc.MaMonHoc AND pc.MaGiaoVien = gv.MaGiaoVien AND gv.MaGiaoVien = @MaGiaoVien AND mh.TenMonHoc = @TenMonHoc)
		IF(@TenMonHoc = @MonHoc)
			BEGIN	
				--Bắt đầu đọc số lượng sinh viên nhóm và tính toán	
				SET @slsv = (SELECT mh.SoLuongSVNhom FROM MONHOC mh WITH (UPDLOCK) WHERE @TenMonHoc = mh.TenMonHoc)
				SET @slsv = @slsv + @Count
				--Chờ 5 giây để demo lỗi lost update trong truy xuất đồng thời
				WAITFOR DELAY @WaitingTime
				--Update số lượng sinh viên nhóm
				UPDATE MONHOC SET SoLuongSVNhom = @slsv WHERE TenMonHoc = @TenMonHoc
				SET @Ketqua = @slsv
			END
		ELSE
			BEGIN
				SET @KetQua = -1
			END
	COMMIT TRAN
GO

--Các STORE PROCEDURE KHÁC

-- Stored procedure spLogin
/*
Có 2 tham số truyền vào là username, password.
Có 1 tham số cần trả về là result:

Xử lý đăng nhập là cho vào 2 thông tin username, password, 
store procedure sẽ trả về trong tham số result là 0, 1, 2.
nếu result trả về 0 là đăng nhập thất bại
nếu result trả về 1 là sinh viên
nếu result trả về 2 là giáo viên

Trong trường hợp trả về 1 hoặc 2 (hay khác 0), có nghĩa là đăng nhập thành công
và ta không cần truy vấn lại MaSinhVien hay MaGiaoVien mà nó cũng chính là username truyền vào

*/
CREATE PROCEDURE spLogin
	@username VARCHAR(20),
	@password VARCHAR(20),
	@result INT OUTPUT
AS
BEGIN
	DECLARE @ketQua INT
	SET @ketQua = 0;

	IF EXISTS(SELECT sv.MaSinhVien FROM SINHVIEN sv WHERE sv.MaSinhVien = @username AND sv.MatKhau = @password)
		BEGIN
			SET @ketQua = 1;
		END
	ELSE IF EXISTS(SELECT gv.MaGiaoVien FROM GIAOVIEN gv WHERE gv.MaGiaoVien = @username AND gv.MatKhau = @password)
		BEGIN
			SET @ketQua = 2;
		END
		
	SET @result = @ketQua
END
GO
--stored usp_SoNhomToiDa_SoNhomDaDangKy lấy số nhóm tối đa của 1 đồ án, và số nhóm hiện thời đã đăng ký đồ án đó

CREATE PROCEDURE usp_SoNhomToiDa_SoNhomDaDangKy
	@MaDoAn INT,
	@SoNhomToiDa INT OUTPUT,
	@SoNhomDaDangKy INT OUTPUT
AS
	BEGIN TRAN	
		--Lấy số nhóm tối đa
		DECLARE @soNhomTD int	
		SELECT @soNhomTD = da.SoLuongDangKy FROM DOAN da WHERE da.MaDoAn = @MaDoAn
		--Tính toán số nhóm đã đăng ký đồ án
		DECLARE @soNhomDaDK int		
		SELECT @soNhomDaDK = COUNT(dsv.MaSinhVien) 
								FROM DOAN da, DE d, DE_SINHVIEN dsv 
								WHERE da.MaDoAn = @maDoAn AND da.MaDoAn = d.MaDoAn AND d.MaDe = dsv.MaDe
		
		SET @SoNhomToiDa = @soNhomTD
		SET @SoNhomDaDangKy = @soNhomDaDK
	COMMIT TRAN
GO

-- stored usp_DSMaDeMaSVDaDangKy lấy danh sách mã đề mà 1 sinh viên đã đăng ký
CREATE PROCEDURE usp_DSMaDeSVDaDangKy
	@MaSV VARCHAR(20)
	AS
		SELECT MaDe FROM DE_SINHVIEN WHERE MaSinhVien=@MaSV
	Go