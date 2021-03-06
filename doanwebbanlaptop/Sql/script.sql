USE [WebSiteBanLapTop]
GO
/****** Object:  Table [dbo].[tbl_anhchitietsanpham]    Script Date: 07/07/2020 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_anhchitietsanpham](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Sp] [int] NOT NULL,
	[DuongDan] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tbl_anhchitietsanpham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_giohang]    Script Date: 07/07/2020 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_giohang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_user] [int] NULL,
	[Id_MaSanPham] [int] NULL,
	[SoLuongSanPham] [int] NULL,
	[NgayNhap] [date] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_tbl_giohang_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Hgiohang]    Script Date: 07/07/2020 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Hgiohang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](500) NULL,
	[TenSanPham] [nvarchar](500) NULL,
	[SoLuongSanPham] [int] NULL,
	[NgayNhap] [date] NULL,
	[TrangThai] [nvarchar](50) NULL,
	[TenNguoiThayDoi] [nvarchar](500) NULL,
	[TrangThaiThayDoi] [nvarchar](50) NULL,
	[NgayThayDoi] [date] NULL,
 CONSTRAINT [PK_tbl_Hgiohang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Hmember]    Script Date: 07/07/2020 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Hmember](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nchar](100) NOT NULL,
	[TenDangNhap_Cu] [nchar](100) NULL,
	[MatKhau] [nvarchar](100) NULL,
	[MatKhau_Cu] [nvarchar](100) NULL,
	[QuyenHan] [nvarchar](50) NULL,
	[QuyenHan_Cu] [nvarchar](50) NULL,
	[TenKhachHang] [nvarchar](150) NULL,
	[TenKhachHang_Cu] [nvarchar](150) NULL,
	[NgaySinh] [date] NULL,
	[NgaySinh_Cu] [date] NULL,
	[SDT] [nchar](12) NULL,
	[SDT_Cu] [nchar](12) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[DiaChi_Cu] [nvarchar](150) NULL,
	[Email] [nchar](100) NULL,
	[Email_Cu] [nchar](100) NULL,
	[NguoiThayDoi] [nchar](100) NULL,
	[NgayThayDoi] [date] NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Hmember] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_member]    Script Date: 07/07/2020 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_member](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nchar](100) NOT NULL,
	[MatKhau] [nvarchar](100) NOT NULL,
	[QuyenHan] [int] NOT NULL,
	[TenKhachHang] [nvarchar](150) NULL,
	[NgaySinh] [date] NULL,
	[SDT] [nchar](12) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[Email] [nchar](100) NULL,
	[XacMinh] [nvarchar](50) NULL CONSTRAINT [DF_tbl_member_XacMinh]  DEFAULT ((0)),
 CONSTRAINT [PK_tbl_member_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_nhasanxuat]    Script Date: 07/07/2020 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_nhasanxuat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaSanXuat] [nvarchar](100) NULL,
	[NuocSanXuat] [nvarchar](100) NULL,
 CONSTRAINT [PK_tbl_nhasanxuat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_sanpham]    Script Date: 07/07/2020 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_sanpham](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](250) NULL,
	[GiaTien] [float] NULL,
	[ChiTietSanPham] [nvarchar](max) NULL,
	[NhaSanXuat] [int] NULL,
	[LoaiSanPham] [nvarchar](50) NULL,
	[AnhSanPham] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_sanpham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_slider]    Script Date: 07/07/2020 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_slider](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenSlider] [nvarchar](50) NULL,
	[NoiDungChiTiet] [nvarchar](100) NULL,
	[DuongDan] [nvarchar](max) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_tbl_slider] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tbl_anhchitietsanpham] ON 

INSERT [dbo].[tbl_anhchitietsanpham] ([Id], [Id_Sp], [DuongDan]) VALUES (25, 17, N'6.jpg')
INSERT [dbo].[tbl_anhchitietsanpham] ([Id], [Id_Sp], [DuongDan]) VALUES (26, 18, N'5.jpg')
INSERT [dbo].[tbl_anhchitietsanpham] ([Id], [Id_Sp], [DuongDan]) VALUES (27, 19, N'1.jpg')
INSERT [dbo].[tbl_anhchitietsanpham] ([Id], [Id_Sp], [DuongDan]) VALUES (28, 20, N'3.jpg')
INSERT [dbo].[tbl_anhchitietsanpham] ([Id], [Id_Sp], [DuongDan]) VALUES (29, 21, N'2.jpg')
INSERT [dbo].[tbl_anhchitietsanpham] ([Id], [Id_Sp], [DuongDan]) VALUES (30, 22, N'may-bo-dell-core-i3-ssd-210-1.png')
INSERT [dbo].[tbl_anhchitietsanpham] ([Id], [Id_Sp], [DuongDan]) VALUES (31, 23, N'may-tinh-ke-toan-vien-2019-99-1.png')
INSERT [dbo].[tbl_anhchitietsanpham] ([Id], [Id_Sp], [DuongDan]) VALUES (33, 25, N'anhchitiet33.jpg')
INSERT [dbo].[tbl_anhchitietsanpham] ([Id], [Id_Sp], [DuongDan]) VALUES (34, 27, N'anhchitiet34.jpg')
INSERT [dbo].[tbl_anhchitietsanpham] ([Id], [Id_Sp], [DuongDan]) VALUES (35, 25, N'anhchitiet35.jpg')
INSERT [dbo].[tbl_anhchitietsanpham] ([Id], [Id_Sp], [DuongDan]) VALUES (36, 28, N'anhchitiet36.jpg')
INSERT [dbo].[tbl_anhchitietsanpham] ([Id], [Id_Sp], [DuongDan]) VALUES (37, 26, N'anhchitiet37.jpg')
INSERT [dbo].[tbl_anhchitietsanpham] ([Id], [Id_Sp], [DuongDan]) VALUES (38, 29, N'anhchitiet38.jpg')
SET IDENTITY_INSERT [dbo].[tbl_anhchitietsanpham] OFF
SET IDENTITY_INSERT [dbo].[tbl_giohang] ON 

INSERT [dbo].[tbl_giohang] ([Id], [Id_user], [Id_MaSanPham], [SoLuongSanPham], [NgayNhap], [TrangThai]) VALUES (40, 23, 17, 5, CAST(N'2019-12-24' AS Date), 1)
INSERT [dbo].[tbl_giohang] ([Id], [Id_user], [Id_MaSanPham], [SoLuongSanPham], [NgayNhap], [TrangThai]) VALUES (41, 16, 27, 1, CAST(N'2020-06-27' AS Date), 3)
INSERT [dbo].[tbl_giohang] ([Id], [Id_user], [Id_MaSanPham], [SoLuongSanPham], [NgayNhap], [TrangThai]) VALUES (42, 23, 28, 2, CAST(N'2019-12-25' AS Date), 1)
INSERT [dbo].[tbl_giohang] ([Id], [Id_user], [Id_MaSanPham], [SoLuongSanPham], [NgayNhap], [TrangThai]) VALUES (43, 23, 25, 1, CAST(N'2020-06-16' AS Date), 1)
INSERT [dbo].[tbl_giohang] ([Id], [Id_user], [Id_MaSanPham], [SoLuongSanPham], [NgayNhap], [TrangThai]) VALUES (44, 16, 29, 1, CAST(N'2020-06-27' AS Date), 2)
SET IDENTITY_INSERT [dbo].[tbl_giohang] OFF
SET IDENTITY_INSERT [dbo].[tbl_Hgiohang] ON 

INSERT [dbo].[tbl_Hgiohang] ([Id], [TenKhachHang], [TenSanPham], [SoLuongSanPham], [NgayNhap], [TrangThai], [TenNguoiThayDoi], [TrangThaiThayDoi], [NgayThayDoi]) VALUES (16, N'nam02                                                                                               ', N'sony SVE15133cvw e1', 1, CAST(N'2019-12-24' AS Date), N'Sản Phẩm Đang Nằm Trong Giỏ Hàng - Khách Hàng', N'nam02                                                                                               ', N'Thêm Vào Giỏ Hàng Sản Phẩm Mới - Khách Hàng', CAST(N'2019-12-24' AS Date))
INSERT [dbo].[tbl_Hgiohang] ([Id], [TenKhachHang], [TenSanPham], [SoLuongSanPham], [NgayNhap], [TrangThai], [TenNguoiThayDoi], [TrangThaiThayDoi], [NgayThayDoi]) VALUES (17, N'nam02                                                                                               ', N'sony SVE15133cvw e1', 2, CAST(N'2019-12-24' AS Date), N'Sản Phẩm Đang Nằm Trong Giỏ Hàng - Khách Hàng', N'nam02                                                                                               ', N'Tăng Số Lượng Sản Phẩm Trong Giỏ Hàng - Khách Hàng', CAST(N'2019-12-24' AS Date))
INSERT [dbo].[tbl_Hgiohang] ([Id], [TenKhachHang], [TenSanPham], [SoLuongSanPham], [NgayNhap], [TrangThai], [TenNguoiThayDoi], [TrangThaiThayDoi], [NgayThayDoi]) VALUES (18, N'nam02                                                                                               ', N'sony SVE15133cvw e1', 3, CAST(N'2019-12-24' AS Date), N'Sản Phẩm Đang Nằm Trong Giỏ Hàng - Khách Hàng', N'nam02                                                                                               ', N'Tăng Số Lượng Sản Phẩm Trong Giỏ Hàng - Khách Hàng', CAST(N'2019-12-24' AS Date))
INSERT [dbo].[tbl_Hgiohang] ([Id], [TenKhachHang], [TenSanPham], [SoLuongSanPham], [NgayNhap], [TrangThai], [TenNguoiThayDoi], [TrangThaiThayDoi], [NgayThayDoi]) VALUES (19, N'nam02                                                                                               ', N'sony SVE15133cvw e1', 4, CAST(N'2019-12-24' AS Date), N'Sản Phẩm Đang Nằm Trong Giỏ Hàng - Khách Hàng', N'nam02                                                                                               ', N'Tăng Số Lượng Sản Phẩm Trong Giỏ Hàng - Khách Hàng', CAST(N'2019-12-24' AS Date))
INSERT [dbo].[tbl_Hgiohang] ([Id], [TenKhachHang], [TenSanPham], [SoLuongSanPham], [NgayNhap], [TrangThai], [TenNguoiThayDoi], [TrangThaiThayDoi], [NgayThayDoi]) VALUES (20, N'nam02                                                                                               ', N'sony SVE15133cvw e1', 5, CAST(N'2019-12-24' AS Date), N'Sản Phẩm Đang Nằm Trong Giỏ Hàng - Khách Hàng', N'nam02                                                                                               ', N'Tăng Số Lượng Sản Phẩm Trong Giỏ Hàng - Khách Hàng', CAST(N'2019-12-24' AS Date))
INSERT [dbo].[tbl_Hgiohang] ([Id], [TenKhachHang], [TenSanPham], [SoLuongSanPham], [NgayNhap], [TrangThai], [TenNguoiThayDoi], [TrangThaiThayDoi], [NgayThayDoi]) VALUES (21, N'namphuong                                                                                           ', N'fgfgf', 1, CAST(N'2019-12-25' AS Date), N'Sản Phẩm Đang Nằm Trong Giỏ Hàng - Khách Hàng', N'namphuong                                                                                           ', N'Thêm Vào Giỏ Hàng Sản Phẩm Mới - Khách Hàng', CAST(N'2019-12-25' AS Date))
INSERT [dbo].[tbl_Hgiohang] ([Id], [TenKhachHang], [TenSanPham], [SoLuongSanPham], [NgayNhap], [TrangThai], [TenNguoiThayDoi], [TrangThaiThayDoi], [NgayThayDoi]) VALUES (22, N'nam02                                                                                               ', N'ujujuju', 1, CAST(N'2019-12-25' AS Date), N'Sản Phẩm Đang Nằm Trong Giỏ Hàng - Khách Hàng', N'nam02                                                                                               ', N'Thêm Vào Giỏ Hàng Sản Phẩm Mới - Khách Hàng', CAST(N'2019-12-25' AS Date))
INSERT [dbo].[tbl_Hgiohang] ([Id], [TenKhachHang], [TenSanPham], [SoLuongSanPham], [NgayNhap], [TrangThai], [TenNguoiThayDoi], [TrangThaiThayDoi], [NgayThayDoi]) VALUES (23, N'nam02                                                                                               ', N'ujujuju', 2, CAST(N'2019-12-25' AS Date), N'Sản Phẩm Đang Nằm Trong Giỏ Hàng - Khách Hàng', N'nam02                                                                                               ', N'Thêm Vào Giỏ Hàng Sản Phẩm Đã Có - Khách Hàng', CAST(N'2019-12-25' AS Date))
INSERT [dbo].[tbl_Hgiohang] ([Id], [TenKhachHang], [TenSanPham], [SoLuongSanPham], [NgayNhap], [TrangThai], [TenNguoiThayDoi], [TrangThaiThayDoi], [NgayThayDoi]) VALUES (24, N'nam02                                                                                               ', N'ujujuju', 1, CAST(N'2019-12-25' AS Date), N'Sản Phẩm Đang Nằm Trong Giỏ Hàng - Khách Hàng', N'nam02                                                                                               ', N'Giảm Số Lượng Sản Phẩm Trong Giỏ Hàng - Khách Hàng', CAST(N'2019-12-25' AS Date))
INSERT [dbo].[tbl_Hgiohang] ([Id], [TenKhachHang], [TenSanPham], [SoLuongSanPham], [NgayNhap], [TrangThai], [TenNguoiThayDoi], [TrangThaiThayDoi], [NgayThayDoi]) VALUES (25, N'nam02                                                                                               ', N'ujujuju', 2, CAST(N'2019-12-25' AS Date), N'Sản Phẩm Đang Nằm Trong Giỏ Hàng - Khách Hàng', N'nam02                                                                                               ', N'Tăng Số Lượng Sản Phẩm Trong Giỏ Hàng - Khách Hàng', CAST(N'2019-12-25' AS Date))
INSERT [dbo].[tbl_Hgiohang] ([Id], [TenKhachHang], [TenSanPham], [SoLuongSanPham], [NgayNhap], [TrangThai], [TenNguoiThayDoi], [TrangThaiThayDoi], [NgayThayDoi]) VALUES (26, N'nam02                                                                                               ', N'LKKKK', 1, CAST(N'2020-06-16' AS Date), N'Sản Phẩm Đang Nằm Trong Giỏ Hàng - Khách Hàng', N'nam02                                                                                               ', N'Thêm Vào Giỏ Hàng Sản Phẩm Mới - Khách Hàng', CAST(N'2020-06-16' AS Date))
INSERT [dbo].[tbl_Hgiohang] ([Id], [TenKhachHang], [TenSanPham], [SoLuongSanPham], [NgayNhap], [TrangThai], [TenNguoiThayDoi], [TrangThaiThayDoi], [NgayThayDoi]) VALUES (27, N'namphuong                                                                                           ', N'reggyrty', 1, CAST(N'2020-06-27' AS Date), N'Sản Phẩm Đang Nằm Trong Giỏ Hàng - Khách Hàng', N'namphuong                                                                                           ', N'Thêm Vào Giỏ Hàng Sản Phẩm Mới - Khách Hàng', CAST(N'2020-06-27' AS Date))
INSERT [dbo].[tbl_Hgiohang] ([Id], [TenKhachHang], [TenSanPham], [SoLuongSanPham], [NgayNhap], [TrangThai], [TenNguoiThayDoi], [TrangThaiThayDoi], [NgayThayDoi]) VALUES (28, N'namphuong                                                                                           ', N'fgfgf', 1, CAST(N'2020-06-27' AS Date), N'Sản Phẩm Đang Nằm Trong Giỏ Hàng - Khách Hàng', N'namphuong                                                                                           ', N'Thanh Toán Sản Phẩm Trong Giỏ Hàng - Khách Hàng', CAST(N'2020-06-27' AS Date))
INSERT [dbo].[tbl_Hgiohang] ([Id], [TenKhachHang], [TenSanPham], [SoLuongSanPham], [NgayNhap], [TrangThai], [TenNguoiThayDoi], [TrangThaiThayDoi], [NgayThayDoi]) VALUES (29, N'namphuong                                                                                           ', N'reggyrty', 1, CAST(N'2020-06-27' AS Date), N'Sản Phẩm Đang Nằm Trong Giỏ Hàng - Khách Hàng', N'namphuong                                                                                           ', N'Thanh Toán Sản Phẩm Trong Giỏ Hàng - Khách Hàng', CAST(N'2020-06-27' AS Date))
INSERT [dbo].[tbl_Hgiohang] ([Id], [TenKhachHang], [TenSanPham], [SoLuongSanPham], [NgayNhap], [TrangThai], [TenNguoiThayDoi], [TrangThaiThayDoi], [NgayThayDoi]) VALUES (30, N'namphuong                                                                                           ', N'fgfgf', 1, CAST(N'2020-06-27' AS Date), N'Sản Phẩm Đã Thanh Toán Thành Công - Admin', N'namphuong                                                                                           ', N'Sửa Giỏ Hàng Đang Chờ Thanh Toán - Admin', CAST(N'2020-06-27' AS Date))
SET IDENTITY_INSERT [dbo].[tbl_Hgiohang] OFF
SET IDENTITY_INSERT [dbo].[tbl_Hmember] ON 

INSERT [dbo].[tbl_Hmember] ([Id], [TenDangNhap], [TenDangNhap_Cu], [MatKhau], [MatKhau_Cu], [QuyenHan], [QuyenHan_Cu], [TenKhachHang], [TenKhachHang_Cu], [NgaySinh], [NgaySinh_Cu], [SDT], [SDT_Cu], [DiaChi], [DiaChi_Cu], [Email], [Email_Cu], [NguoiThayDoi], [NgayThayDoi], [TrangThai]) VALUES (21, N'nam02                                                                                               ', N'nam02                                                                                               ', N'21837B5110B12B12312EB994F0DEB439', N'21837B5110B12B12312EB994F0DEB439', N'Admin', N'Khách Hàng', N'namphuongnguyen', N'namphuongnguyen', CAST(N'2019-09-11' AS Date), CAST(N'2019-09-11' AS Date), N'0225526652  ', N'0225526652  ', N'wedede', N'wedede', N'namnguyen.02.08.99@gmail.com                                                                        ', N'namnguyen.02.08.99@gmail.com                                                                        ', N'nam02                                                                                               ', CAST(N'2019-12-24' AS Date), N'Thêm Tài Khoản Người Dùng - Khách Hàng')
INSERT [dbo].[tbl_Hmember] ([Id], [TenDangNhap], [TenDangNhap_Cu], [MatKhau], [MatKhau_Cu], [QuyenHan], [QuyenHan_Cu], [TenKhachHang], [TenKhachHang_Cu], [NgaySinh], [NgaySinh_Cu], [SDT], [SDT_Cu], [DiaChi], [DiaChi_Cu], [Email], [Email_Cu], [NguoiThayDoi], [NgayThayDoi], [TrangThai]) VALUES (29, N'nam03                                                                                               ', N'nam03                                                                                               ', N'Nam@0773654031', N'Nam@0773654031', N'Khách Hàng', N'Khách Hàng', N'Nguyễn Phương Nam', N'Nguyễn Phương Nam', CAST(N'1999-08-02' AS Date), CAST(N'1999-08-02' AS Date), N'0225526652  ', N'0225526652  ', N'gbgbgb', N'gbgbgb', N'namnguyen.02.08.99@gmail.com                                                                        ', N'namnguyen.02.08.99@gmail.com                                                                        ', N'nam03                                                                                               ', CAST(N'2019-12-25' AS Date), N'Thêm Tài Khoản Người Dùng - Admin')
SET IDENTITY_INSERT [dbo].[tbl_Hmember] OFF
SET IDENTITY_INSERT [dbo].[tbl_member] ON 

INSERT [dbo].[tbl_member] ([Id], [TenDangNhap], [MatKhau], [QuyenHan], [TenKhachHang], [NgaySinh], [SDT], [DiaChi], [Email], [XacMinh]) VALUES (16, N'namphuong                                                                                           ', N'21837B5110B12B12312EB994F0DEB439', 2, N'Nguyễn Phương Nam', CAST(N'1999-08-02' AS Date), N'0773654031  ', N' bình dương
', N'namnguyen.02.08.99@gmail.com                                                                        ', NULL)
INSERT [dbo].[tbl_member] ([Id], [TenDangNhap], [MatKhau], [QuyenHan], [TenKhachHang], [NgaySinh], [SDT], [DiaChi], [Email], [XacMinh]) VALUES (23, N'nam02                                                                                               ', N'21837B5110B12B12312EB994F0DEB439', 1, N'namphuongnguyen', CAST(N'2019-09-11' AS Date), N'0225526652  ', N'wedede', N'namnguyen.02.08.99@gmail.com                                                                        ', NULL)
INSERT [dbo].[tbl_member] ([Id], [TenDangNhap], [MatKhau], [QuyenHan], [TenKhachHang], [NgaySinh], [SDT], [DiaChi], [Email], [XacMinh]) VALUES (24, N'nam01                                                                                               ', N'21837B5110B12B12312EB994F0DEB439', 2, N'Nguyễn Phương Nam1', CAST(N'2018-11-06' AS Date), N'00505050505 ', N'cdvdvdvdvd', N'npn0299@gmail.com                                                                                   ', NULL)
INSERT [dbo].[tbl_member] ([Id], [TenDangNhap], [MatKhau], [QuyenHan], [TenKhachHang], [NgaySinh], [SDT], [DiaChi], [Email], [XacMinh]) VALUES (25, N'nam03                                                                                               ', N'21837B5110B12B12312EB994F0DEB439', 2, N'Nguyễn Phương Nam', CAST(N'1999-08-02' AS Date), N'0225526652  ', N'gbgbgb', N'namnguyen.02.08.99@gmail.com                                                                        ', NULL)
SET IDENTITY_INSERT [dbo].[tbl_member] OFF
SET IDENTITY_INSERT [dbo].[tbl_nhasanxuat] ON 

INSERT [dbo].[tbl_nhasanxuat] ([Id], [TenNhaSanXuat], [NuocSanXuat]) VALUES (18, N'Acer', N'mỹ')
INSERT [dbo].[tbl_nhasanxuat] ([Id], [TenNhaSanXuat], [NuocSanXuat]) VALUES (19, N'Dell', N'Pháp')
INSERT [dbo].[tbl_nhasanxuat] ([Id], [TenNhaSanXuat], [NuocSanXuat]) VALUES (20, N'Lenovo', N'Mỹ')
INSERT [dbo].[tbl_nhasanxuat] ([Id], [TenNhaSanXuat], [NuocSanXuat]) VALUES (21, N'Asus', N'Hàn Quốc')
SET IDENTITY_INSERT [dbo].[tbl_nhasanxuat] OFF
SET IDENTITY_INSERT [dbo].[tbl_sanpham] ON 

INSERT [dbo].[tbl_sanpham] ([Id], [TenSanPham], [GiaTien], [ChiTietSanPham], [NhaSanXuat], [LoaiSanPham], [AnhSanPham]) VALUES (25, N'LKKKK', 100000, N'KKKKKKK', 20, N'LAPTOP', N'sp25.jpg')
INSERT [dbo].[tbl_sanpham] ([Id], [TenSanPham], [GiaTien], [ChiTietSanPham], [NhaSanXuat], [LoaiSanPham], [AnhSanPham]) VALUES (26, N'LKKKK', 100000, N'KKKKKKK', 20, N'LAPTOP', N'sp26.jpg')
INSERT [dbo].[tbl_sanpham] ([Id], [TenSanPham], [GiaTien], [ChiTietSanPham], [NhaSanXuat], [LoaiSanPham], [AnhSanPham]) VALUES (27, N'fgfgf', 100000, N'gthvbfbf', 21, N'LAPTOP', N'sp27.jpg')
INSERT [dbo].[tbl_sanpham] ([Id], [TenSanPham], [GiaTien], [ChiTietSanPham], [NhaSanXuat], [LoaiSanPham], [AnhSanPham]) VALUES (28, N'ujujuju', 10000000, N'gbbgbgb', 18, N'LAPTOP', N'sp28.jpg')
INSERT [dbo].[tbl_sanpham] ([Id], [TenSanPham], [GiaTien], [ChiTietSanPham], [NhaSanXuat], [LoaiSanPham], [AnhSanPham]) VALUES (29, N'reggyrty', 100000, N'vdgrehtryrt', 20, N'LAPTOP', N'sp29.jpg')
SET IDENTITY_INSERT [dbo].[tbl_sanpham] OFF
SET IDENTITY_INSERT [dbo].[tbl_slider] ON 

INSERT [dbo].[tbl_slider] ([Id], [TenSlider], [NoiDungChiTiet], [DuongDan], [TrangThai]) VALUES (19, NULL, NULL, N'slide1.jpg', 2)
INSERT [dbo].[tbl_slider] ([Id], [TenSlider], [NoiDungChiTiet], [DuongDan], [TrangThai]) VALUES (20, NULL, NULL, N'slide2.jpg', 2)
INSERT [dbo].[tbl_slider] ([Id], [TenSlider], [NoiDungChiTiet], [DuongDan], [TrangThai]) VALUES (21, NULL, NULL, N'slide3.jpg', 2)
INSERT [dbo].[tbl_slider] ([Id], [TenSlider], [NoiDungChiTiet], [DuongDan], [TrangThai]) VALUES (23, N'', N'', N'slide22.png', 2)
SET IDENTITY_INSERT [dbo].[tbl_slider] OFF
