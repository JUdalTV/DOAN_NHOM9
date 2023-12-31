USE [client]
GO
/****** Object:  Table [dbo].[DatPhong]    Script Date: 9/14/2023 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatPhong](
	[MaDatPhong] [int] NOT NULL,
	[MaPhong] [int] NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[TenKhachHang] [nvarchar](255) NULL,
	[SoDienThoai] [nvarchar](15) NULL,
	[Email] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDatPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongKhachSan]    Script Date: 9/14/2023 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongKhachSan](
	[MaPhong] [int] NOT NULL,
	[TenPhong] [nvarchar](255) NULL,
	[LoaiPhong] [nvarchar](50) NULL,
	[GiaPhong] [decimal](10, 2) NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[TenKhachHang] [nvarchar](255) NULL,
	[SoDienThoai] [nvarchar](15) NULL,
	[Email] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblkhachhang]    Script Date: 9/14/2023 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblkhachhang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[tên] [nchar](10) NULL,
	[địa chỉ] [nchar](10) NULL,
	[Gmail] [nchar](10) NULL,
	[số điện thoại] [float] NULL,
	[căn cước] [float] NULL,
	[quốc tịch] [nchar](10) NULL,
 CONSTRAINT [PK_tblkhachhang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tlbdichvu]    Script Date: 9/14/2023 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tlbdichvu](
	[ID] [int] NOT NULL,
	[wifi] [nchar](10) NULL,
	[giặt là quần áo] [nchar](10) NULL,
	[bồn tắm thông thường] [nchar](10) NULL,
	[đưa đón sân bay bến tàu] [nchar](10) NULL,
	[quầy bar] [nchar](10) NULL,
	[spa] [nchar](10) NULL,
	[phục vụ các bữa ăn] [nchar](10) NULL,
 CONSTRAINT [PK_tlbdichvu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tlbhangphong]    Script Date: 9/14/2023 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tlbhangphong](
	[ID] [int] NOT NULL,
	[hạng thường] [nvarchar](50) NULL,
	[hạng nâng cao] [nvarchar](50) NULL,
	[hạng cao cấp] [nvarchar](50) NULL,
	[hạng thương gia] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tlbhangphong] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tlbtaikhoan]    Script Date: 9/14/2023 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tlbtaikhoan](
	[ID] [int] NULL,
	[tài khoản] [nchar](10) NULL,
	[mật khẩu] [nvarchar](225) NULL,
	[gmail] [nchar](10) NULL,
	[thói quen sử dụng] [nchar](10) NULL,
	[địa chỉ] [nvarchar](50) NULL,
	[thời gian] [time](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TraPhong]    Script Date: 9/14/2023 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TraPhong](
	[MaTraPhong] [int] NOT NULL,
	[MaDatPhong] [int] NULL,
	[NgayTraPhong] [datetime] NULL,
	[TongTienThanhToan] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTraPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DatPhong]  WITH CHECK ADD FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PhongKhachSan] ([MaPhong])
GO
ALTER TABLE [dbo].[TraPhong]  WITH CHECK ADD FOREIGN KEY([MaDatPhong])
REFERENCES [dbo].[DatPhong] ([MaDatPhong])
GO
