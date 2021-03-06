USE [master]
GO
/****** Object:  Database [QLBANMYPHAM]    Script Date: 11/26/2019 3:01:57 PM ******/
CREATE DATABASE [QLBANMYPHAM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBANMYPHAM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.XUANNHAT\MSSQL\DATA\QLBANMYPHAM.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLBANMYPHAM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.XUANNHAT\MSSQL\DATA\QLBANMYPHAM_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLBANMYPHAM] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBANMYPHAM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBANMYPHAM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBANMYPHAM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBANMYPHAM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBANMYPHAM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBANMYPHAM] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBANMYPHAM] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLBANMYPHAM] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QLBANMYPHAM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBANMYPHAM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBANMYPHAM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBANMYPHAM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBANMYPHAM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBANMYPHAM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBANMYPHAM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBANMYPHAM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBANMYPHAM] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLBANMYPHAM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBANMYPHAM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBANMYPHAM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBANMYPHAM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBANMYPHAM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBANMYPHAM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBANMYPHAM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBANMYPHAM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLBANMYPHAM] SET  MULTI_USER 
GO
ALTER DATABASE [QLBANMYPHAM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBANMYPHAM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBANMYPHAM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBANMYPHAM] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QLBANMYPHAM]
GO
/****** Object:  Table [dbo].[ADMINN]    Script Date: 11/26/2019 3:01:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMINN](
	[TENDN] [varchar](50) NOT NULL,
	[HOTEN] [nvarchar](50) NOT NULL,
	[MATKHAU] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TENDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BINHLUAN]    Script Date: 11/26/2019 3:01:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BINHLUAN](
	[MABL] [int] IDENTITY(1,1) NOT NULL,
	[MATIN] [int] NULL,
	[TAIKHOAN] [varchar](50) NULL,
	[NOIDUNG] [nvarchar](max) NULL,
	[DATEBL] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MABL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHITIETDH]    Script Date: 11/26/2019 3:01:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHITIETDH](
	[MADH] [varchar](8) NOT NULL,
	[MASP] [varchar](8) NOT NULL,
	[SL] [int] NULL,
	[DONGIA] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MADH] ASC,
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 11/26/2019 3:01:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONHANG](
	[MADH] [varchar](8) NOT NULL,
	[TAIKHOAN] [varchar](50) NULL,
	[TINHTRANGTHANHTOAN] [nvarchar](50) NULL,
	[TINHTRANGGIAOHANG] [nvarchar](50) NULL,
	[NGAYDAT] [date] NULL,
	[NGAYGIAO] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MADH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 11/26/2019 3:01:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[HOTEN] [nvarchar](50) NULL,
	[DIACHI] [nvarchar](50) NULL,
	[TAIKHOAN] [varchar](50) NOT NULL,
	[PASS] [varchar](50) NULL,
	[SDT] [char](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[TAIKHOAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 11/26/2019 3:01:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [varchar](8) NOT NULL,
	[TENSP] [nvarchar](100) NULL,
	[MATL] [varchar](8) NULL,
	[PHOTO] [nvarchar](100) NULL,
	[MATH] [varchar](8) NULL,
	[MOTA] [nvarchar](400) NULL,
	[GIA] [money] NULL,
	[NGAYCAPNHAT] [date] NULL,
	[SOLUONGTON] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TIN]    Script Date: 11/26/2019 3:01:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIN](
	[MATIN] [int] IDENTITY(1,1) NOT NULL,
	[TIEUDE] [nvarchar](max) NULL,
	[HINH] [nvarchar](max) NULL,
	[NGAY] [date] NULL,
	[TOMTAT] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MATIN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[THELOAI]    Script Date: 11/26/2019 3:01:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THELOAI](
	[MATL] [varchar](8) NOT NULL,
	[TENTL] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MATL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THUONGHIEU]    Script Date: 11/26/2019 3:01:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THUONGHIEU](
	[MATH] [varchar](8) NOT NULL,
	[TENTH] [nvarchar](50) NULL,
	[PHOTOTH] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ADMINN] ([TENDN], [HOTEN], [MATKHAU]) VALUES (N'PhuongUyen', N'Nguyễn Thị Phương Uyên', N'1')
INSERT [dbo].[ADMINN] ([TENDN], [HOTEN], [MATKHAU]) VALUES (N'XuanNhat', N'Nguyễn Xuân Nhật', N'1')
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SL], [DONGIA]) VALUES (N'HD0', N'SP19', 1, 80000.0000)
INSERT [dbo].[CHITIETDH] ([MADH], [MASP], [SL], [DONGIA]) VALUES (N'HD0', N'SP2', 1, 150000.0000)
INSERT [dbo].[DONHANG] ([MADH], [TAIKHOAN], [TINHTRANGTHANHTOAN], [TINHTRANGGIAOHANG], [NGAYDAT], [NGAYGIAO]) VALUES (N'HD0', N'UyenSoCute', N'Chưa thanh toán', N'Đang tiếp nhận', CAST(0x6C400B00 AS Date), CAST(0x6B430B00 AS Date))
INSERT [dbo].[KHACHHANG] ([HOTEN], [DIACHI], [TAIKHOAN], [PASS], [SDT]) VALUES (N'Phương Uyên', N'Huế Mộng Mer', N'UyenSoCute', N'1', N'0961122501 ')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP1', N'Tinh Chất The Body Shop Tea Tree', N'1', N'Tinh Chất The Body Shop Tea Tree.JPG', N'TH1', N'Chiết xuất từ tinh dầu lá Tràm Trà tinh khiết.Cải thiện kết cấu và khuyết điểm của làn da. Cho làn da tươi trẻ, khỏe khoắn và căng bóng.', 500000.0000, CAST(0x52400B00 AS Date), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP10', N'Tẩy Tế Bào Chết ESI Bio SkinCare Face & Body Strawberry 250ml', N'2', N'Tẩy Tế Bào Chết ESI Bio SkinCare Face & Body Strawberry 250ml.JPG', N'TH16', N'Tẩy sạch mọi bụi bẩn, tế bào chết cứng đầu trên body.Bổ sung dưỡng từ quả trái cây thiên nhiên dưỡng ẩm cho làn da.', 510000.0000, CAST(0x52400B00 AS Date), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP11', N'Dầu Gội Xả Head Shoulder 2 In 1 Dry Scalp Care 950ml', N'3', N'Dầu Gội Xả Head Shoulder 2 In 1 Dry Scalp Care 950ml.JPG', N'TH16', N'Giúp bảo vệ và chăm sóc da đầu của bạn trước những tác động từ môi trường', 60000.0000, CAST(0x52400B00 AS Date), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP12', N'Bộ 2 Chai Dầu Gội Xả Hairburst For Longer Stronger 350ml', N'3', N'Bộ 2 Chai Dầu Gội Xả Hairburst For Longer Stronger 350ml.JPG', N'TH16', N'Bổ sung các dưỡng chất cần thiết giúp tóc chắc khỏe, mềm mượt và nhanh mọc hơn.', 170000.0000, CAST(0x52400B00 AS Date), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP13', N'Dầu Gội Cho Tóc Nhuộm TRESemmé Color Radiance 250ml', N'3', N'Dầu Gội Cho Tóc Nhuộm TRESemmé Color Radiance 250ml.JPG', N'TH16', N'Tăng cường ánh màu giúp điều chỉnh sắc độ màu và giữ màu tóc nhuộm sống động như ý. ', 50000.0000, CAST(0x52400B00 AS Date), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP14', N'Dầu Xả Biotin & Collagen Thickening 400ml', N'3', N'Dầu Xả Biotin & Collagen Thickening 400ml.JPG', N'TH16', N'Cung cấp độ ẩm và bổ sung các axit amin, khoáng chất', 90000.0000, CAST(0x52400B00 AS Date), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP16', N'Nước Hoa Nam Gatsby Secret Style 60ml', N'4', N'Nước Hoa Nam Gatsby Secret Style 60ml.JPG', N'TH17', N'Mùi hương nam tính thể hiện sự nam tính, đầy sức sống', 260000.0000, CAST(0x52400B00 AS Date), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP17', N'Nước Hoa Nữ Christian Dior Miss Dior Eau De Parfum', N'4', N'Nước Hoa Nữ Christian Dior Miss Dior Eau De Parfum.JPG', N'TH17', N'Phong cách giản dị, thân thiện quyến rũ ', 60000.0000, CAST(0x52400B00 AS Date), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP18', N'Nước Hoa Nữ Bvlgari Rose Goldea EDP', N'4', N'Nước Hoa Nữ Bvlgari Rose Goldea EDP.JPG', N'TH17', N'Sở hữu sự mở đầu rực rỡ với hương hoa, trái cây và tươi mát cùng một lúc', 140000.0000, CAST(0x52400B00 AS Date), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP19', N'Nước Hoa Nữ Versace Bright Crystal Absolu EDP 50ml', N'4', N'Nước Hoa Nữ Versace Bright Crystal Absolu EDP 50ml.JPG', N'TH5', N'Nhóm hương: Hương Hoa cỏ Trái cây – Floral Fruity', 80000.0000, CAST(0x52400B00 AS Date), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP2', N'Dưỡng Trắng Innisfree Jeju Cherry Blossom Tone-Up Cream', N'1', N'Dưỡng Trắng Innisfree Jeju Cherry Blossom Tone-Up Cream.JPG', N'TH2', N'Hỗ trợ nâng tone da, giúp cải thiện tông da trắng sáng', 150000.0000, CAST(0x52400B00 AS Date), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP20', N'Nước Hoa Dạng Lăn Victoria Secret Crush EDP 7ml', N'4', N'Nước Hoa Dạng Lăn Victoria Secret Crush EDP 7ml.JPG', N'TH18', N'Nhiều mùi hương cho bạn thoải mái lựa chọn theo phong cách của mình', 460000.0000, CAST(0x3D400B00 AS Date), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP21', N'Son Kem Lì 3CE Cloud Velvet Tint Beige Avenue', N'5', N'Son Kem Lì 3CE Cloud Velvet Tint Beige Avenue.JPG', N'TH18', N'Chất son mượt và tương đối mỏng nhẹ, không gây nặng môi khi dùng', 110000.0000, CAST(0x3D400B00 AS Date), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP22', N'Son Lì Make Up For Ever Artist Liquid Matte', N'5', N'Son Lì Make Up For Ever Artist Liquid Matte.JPG', N'TH18', N'Chất son lì nhưng vô cùng mịn mượt, lên màu chuẩn', 410000.0000, CAST(0x3D400B00 AS Date), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP23', N'Son Kem TOI Marshmallow Velvet Tint M Series', N'5', N'Son Kem TOI Marshmallow Velvet Tint M Series.JPG', N'TH1', N'Chất son mượt mà, khả năng dưỡng ẩm cực tốt, không làm môi khô dù có dùng liên tục', 310000.0000, CAST(0x3D400B00 AS Date), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP24', N'Son Kem Dưỡng Dior Lip Maximizer 012 6ml', N'5', N'Son Kem Dưỡng Dior Lip Maximizer 012 6ml.JPG', N'TH19', N'Có collagen làm giảm thâm môi, khắc phục môi thâm và đỡ các vết nhăn ở môi', 350000.0000, CAST(0x3D400B00 AS Date), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP25', N'Son Lì Mamonde True Color Lipstick 3.5g', N'5', N'Son Lì Mamonde True Color Lipstick 3.5g.JPG', N'TH19', N'Thỏi son vỏ nhựa, màu trắng đơn giản nhưng sang trọng', 360000.0000, CAST(0x3D400B00 AS Date), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP26', N'Phấn Nước Innisfree Water Fit Cushion SPF 34 14g', N'6', N'Phấn Nước Innisfree Water Fit Cushion SPF 34 14g.JPG', N'TH19', N'Dưỡng ẩm cho da ngay cả khi đang trang điểm, giúp da sáng hơn và mịn màng.', 350000.0000, CAST(0x3D400B00 AS Date), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP27', N'Phấn Phủ Dạng Bột Innisfree No Sebum Moisture Powder 5g', N'6', N'Phấn Phủ Dạng Bột Innisfree No Sebum Moisture Powder 5g.JPG', N'TH13', N'Thành phần lành tính, tự nhiên từ bạc hà, bột ngọc trai và các khoáng chất thiên nhiên ở đảo Jeju giúp che phủ tốt cho da mềm mịn tự nhiên.', 180000.0000, CAST(0x3D400B00 AS Date), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP28', N'Tạo Khối Rimmel Natural Bronzer 022 Sun Bronze', N'6', N'Tạo Khối Rimmel Natural Bronzer 022 Sun Bronze.JPG', N'TH13', N'Giúp cho gương mặt của bạn trông sống động, rực rỡ.Mang lại cho bạn một lớp nền phủ hoàn hảo, nổi bật.', 410000.0000, CAST(0x3D400B00 AS Date), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP29', N'Kem Nền Innisfree My Foundation 30ml', N'6', N'Kem Nền Innisfree My Foundation 30ml.JPG', N'TH12', N'Thiết kế tỉ mỉ từng chi tiết nhỏ để các nàng có nhiều lựa chọn cho tone da của mình.Chứa hàm lượng dưỡng ẩm cao giúp da được duy trì cung cấp độ ẩm cả ngày', 280000.0000, CAST(0x3D400B00 AS Date), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP3', N'Miếng Lột Mụn Đầu Đen Innisfree Jeju Volcanic Nose Pack', N'1', N'Miếng Lột Mụn Đầu Đen Innisfree Jeju Volcanic Nose Pack.JPG', N'TH17', N'Làm sạch các bã nhờn và tạp chất trên da.Tạo cảm giác thư giãn, dễ chịu nhờ hương Lavender', 160000.0000, CAST(0x52400B00 AS Date), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP30', N'Kem Lót Sugao Snow Whipped Cream SPF 23', N'6', N'Kem Lót Sugao Snow Whipped Cream SPF 23.JPG', N'TH12', N'Chỉ số chống nắng SPF23 PA+++ ngăn chặn tác hại từ tia UVA và UVB.', 70000.0000, CAST(0x3D400B00 AS Date), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP31', N'Kem Đánh Răng Colgate Sensitive Whitening 170g', N'7', N'Kem Đánh Răng Colgate Sensitive Whitening 170g.JPG', N'TH8', N'Kem Đánh Răng Colgate Sensitive Whitening ', 60000.0000, CAST(0x3D400B00 AS Date), 5)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP32', N'Bột Than Hoạt Tính Đánh Trắng Răng Teeth Whitening', N'7', N'Bột Than Hoạt Tính Đánh Trắng Răng Teeth Whitening.JPG', N'TH10', N'Toàn bộ thành phần tự nhiên có tính hiệu quả cao trong việc loại bỏ hoàn toàn các tác nhân gây xấu cho răng như cà phê, thuốc lá, rượu, sô đa,…', 330000.0000, CAST(0xAB3F0B00 AS Date), 15)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP33', N'Máy Làm Trắng Răng Crest 3D White Light', N'7', N'Máy Làm Trắng Răng Crest 3D White Light.JPG', N'TH10', N'Sản phẩm giúp đánh bật mọi vết bẩn, ố vàng trên răng tích tụ suốt hơn mười năm qua, và trả lại hàm răng trắng bóng', 320000.0000, CAST(0xAB3F0B00 AS Date), 15)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP34', N'Kem Đánh Răng Baking Soda Toothpaste 220g', N'7', N'Kem Đánh Răng Baking Soda Toothpaste 220g.JPG', N'TH9', N'Thành phần Baking soda, chiết xuất thảo dược thiên nhiên.Trung hòa axit trong vòm miệng, loại bỏ mảng bám.', 60000.0000, CAST(0xAB3F0B00 AS Date), 15)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP35', N'Kem Đánh Răng Crest 3D White Radiant Mint 99gr', N'7', N'Kem Đánh Răng Crest 3D White Radiant Mint 99gr.JPG', N'TH9', N'Thử nghiệm đã cho thấy 80% các vết ố vàng trên bề mặt răng bị đánh tan', 240000.0000, CAST(0xAB3F0B00 AS Date), 15)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP36', N'Gel Rửa Tay Khô Bath Body Works Honolulu Sun 29ml', N'8', N'Gel Rửa Tay Khô Bath Body Works Honolulu Sun 29ml.JPG', N'TH3', N'Gel Rửa Tay Khô Bath Body Works Honolulu Sun ', 510000.0000, CAST(0xAB3F0B00 AS Date), 15)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP37', N'Gel Rửa Tay Bath Body Works Japanese Cherry Blossom', N'8', N'Gel Rửa Tay Bath Body Works Japanese Cherry Blossom.JPG', N'TH15', N'Gel Rửa Tay Bath Body Works Japanese Cherry Blossom', 70000.0000, CAST(0xAB3F0B00 AS Date), 15)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP38', N'Kem Dưỡng Da Tay Mamonde Flower Scented 50ml', N'8', N'Kem Dưỡng Da Tay Mamonde Flower Scented 50ml.JPG', N'TH7', N'Cung cấp độ ẩm cao và dưỡng chất làm mờ các vết thâm xạn.Giúp cung cấp dưỡng chất cho da tay thêm mềm mịn.', 380000.0000, CAST(0xAB3F0B00 AS Date), 15)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP39', N'Nước Tẩy Sơn Móng Etude House Nail Remover 100ml', N'8', N'Nước Tẩy Sơn Móng Etude House Nail Remover 100ml.JPG', N'TH15', N'tẩy sạch sơn móng tay một cách nhanh chóng và hiệu quả.Mùi hương rất dễ chịu không có cảm giác hắc và nồng mùi cồn', 370000.0000, CAST(0xAB3F0B00 AS Date), 15)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP4', N'Nước Hoa Hồng Innisfree Broccoli Clearing Toner', N'1', N'Nước Hoa Hồng Innisfree Broccoli Clearing Toner.JPG', N'TH1', N'Chiếc xuất từ bông cải xanh chứa vitamin và khoáng chất. Loại bỏ tế bào chết, se khít lỗ chân lông.', 70000.0000, CAST(0x52400B00 AS Date), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP40', N'Rửa Tay Khô Bath & Body Works Twisted Peppermint 29ml', N'8', N'Rửa Tay Khô Bath & Body Works Twisted Peppermint 29ml.JPG', N'TH14', N' Là kết hợp hoàn hảo giữa nước hoa và nước rửa tay.Không cần dùng nước, không bết dính tay.', 390000.0000, CAST(0xAB3F0B00 AS Date), 15)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP41', N'Kem Dưỡng Mắt Innisfree Green Tea Seed Eye Cream 30ml', N'9', N'Kem Dưỡng Mắt Innisfree Green Tea Seed Eye Cream 30ml.JPG', N'TH5', N'Hiệu quả chống oxy hóa của EGCG trà xanh giúp dưỡng ẩm và làm sáng da', 320000.0000, CAST(0xAB3F0B00 AS Date), 15)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP42', N'Dưỡng Mắt 3W Clinic Collagen Lifting Eye Cream 35ml', N'9', N'Dưỡng Mắt 3W Clinic Collagen Lifting Eye Cream 35ml.JPG', N'TH6', N'Xóa nếp nhăn hiệu quả, tăng cường độ đàn hồi.Giảm sự kích ứng da và mệt mỏi của vùng mắt.', 310000.0000, CAST(0xAB3F0B00 AS Date), 15)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP43', N'Kem Mắt AHC Ageless Real Eye Cream For Face 30ml', N'9', N'Kem Mắt AHC Ageless Real Eye Cream For Face 30ml.JPG', N'TH4', N'Chứa hơn 10 loại Peptide giúp ngăn ngừa, chống lão hóa da và săn mịn da', 90000.0000, CAST(0xAB3F0B00 AS Date), 15)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP44', N'Serum Dưỡng Mi Maybelline Lash Sensational 5.3ml', N'9', N'Serum Dưỡng Mi Maybelline Lash Sensational 5.3ml.JPG', N'TH4', N'Công thức dưỡng lông mi với arginine và pro-vitamin B5.Mang lại hàng mi khỏe mạnh chỉ sau 4 tuần sử dụng', 270000.0000, CAST(0xAB3F0B00 AS Date), 15)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP45', N'Kem Dưỡng Mắt Clinique All About Eyes 7ml', N'9', N'Kem Dưỡng Mắt Clinique All About Eyes 7ml.JPG', N'TH6', N'Chất kem thấm nhanh, không gây nhờn rích. Làm dịu da, tăng cường sản sinh collagen', 210000.0000, CAST(0xAB3F0B00 AS Date), 15)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP46', N'Khay Đựng Mỹ Phẩm BNBS', N'10', N'Khay Đựng Mỹ Phẩm BNBS.JPG', N'TH11', N'Giúp cho việc bảo quản được tốt hơn tránh tình trạng gãy, đổ .Đựng các dụng cụ trang điểm như son, macara, chì và cọ', 90000.0000, CAST(0xAB3F0B00 AS Date), 15)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP47', N'Cám Gạo Trà Xanh', N'10', N'Cám Gạo Trà Xanh.JPG', N'TH11', N'Giảm mụn đầu đen, mụn trứng cá... và se khít lỗ chân lông.Chống oxy hóa cao, chống lão hóa', 240000.0000, CAST(0xD83F0B00 AS Date), 13)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP48', N'Khay Đựng Son 12 Ô Mica Trong Suốt', N'10', N'Khay Đựng Son 12 Ô Mica Trong Suốt.JPG', N'TH14', N'Hỗ trợ nâng tone da, giúp cải thiện tông da trắng sáng. Nhiều kích cỡ để bạn lựa chọn thích hợp.', 230000.0000, CAST(0xD83F0B00 AS Date), 13)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP49', N'Nến Thơm Bath & Body Works Cinnamon Caramel Swirl 411gr', N'10', N'Nến Thơm Bath & Body Works Cinnamon Caramel Swirl 411gr.JPG', N'TH18', N'Có khả năng loại bỏ các loại vi khuẩn gây hại trong không khí.', 80000.0000, CAST(0xD83F0B00 AS Date), 13)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP5', N'Sáp Dưỡng Da Vaseline Blue Seal Vitamin E 50ml', N'1', N'Sáp Dưỡng Da Vaseline Blue Seal Vitamin E 50ml.JPG', N'TH19', N'Loại bỏ da khô, chết lâu ngày, cải tạo da cho đôi môi sáng hơn, mềm mịn hơn không vết nứt.', 430000.0000, CAST(0x52400B00 AS Date), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP50', N'Hộp Quà Hình Vuông Lớn', N'10', N'Hộp Quà Hình Vuông Lớn.JPG', N'TH1', N'Hộp Quà Hình Vuông Lớn', 50000.0000, CAST(0xD83F0B00 AS Date), 13)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP6', N'Muối Tắm Sữa Tẩy Tế Bào Chết A Bonné Spa Milk Salt', N'2', N'Muối Tắm Sữa Tẩy Tế Bào Chết A Bonné Spa Milk Salt.JPG', N'TH4', N'Xóa mờ các vết thâm ở những vùng khó điều trị. Giúp ngăn ngừa và phòng chống các bệnh về da', 70000.0000, CAST(0x52400B00 AS Date), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP7', N'Tẩy Tế Bào Chết Body Scentio Riceberry Cream 200gr', N'2', N'Tẩy Tế Bào Chết Body Scentio Riceberry Cream 200gr.JPG', N'TH20', N'Chiết xuất từ tinh chất gạo lứt bổ sung thêm dưỡng chất.Vitamin A và các chất chống oxy hóa tự nhiên mạnh mẽ.', 320000.0000, CAST(0x52400B00 AS Date), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP8', N'Tẩy Tế Bào Chết Body Phutawan Sweet Basil 250gr', N'2', N'Tẩy Tế Bào Chết Body Phutawan Sweet Basil 250gr.JPG', N'TH20', N'Làm sạch sâu bụi bẩn, bã nhờn và tế bào chết.Công thức muối biển và khoáng chất làm sạch da.', 200000.0000, CAST(0x52400B00 AS Date), 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [MATL], [PHOTO], [MATH], [MOTA], [GIA], [NGAYCAPNHAT], [SOLUONGTON]) VALUES (N'SP9', N'Muối Tắm A Bonné Snaily Yogurt 350gr', N'2', N'Muối Tắm A Bonné Snaily Yogurt 350gr.JPG', N'TH20', N'Tẩy tế bào chết và tạp chất cứng đầu. Nuôi dưỡng làn da săn chắc và sáng mịn tự nhiên.', 90000.0000, CAST(0x52400B00 AS Date), 10)
SET IDENTITY_INSERT [dbo].[TIN] ON 

INSERT [dbo].[TIN] ([MATIN], [TIEUDE], [HINH], [NGAY], [TOMTAT]) VALUES (1, N'Trang điểm đẹp đêm noel lung linh cho các nàng tự tin dạo phố', N'Trang Điểm Noel.JPG', CAST(0x5F400B00 AS Date), N'Noel đã gần tới rồi. Bạn đã có ý tưởng gì để trang điểm đêm noel chưa? Chắc hẳn các bạn gái ai cũng muốn mình thật xinh đẹp và ấn tượng trong đêm Giáng sinh ngọt ngào đúng không nào? Hãy khám phá ngay bài viết dưới để tạo riêng cho mình một phong cách trang điểm đi chơi Giáng sinh thật lung linh và có thêm thật nhiều bức hình "sống ảo" cực đẹp và ưng ý bạn nhé!Để có diện mạo thật tươi tắn, rạng rỡ, chúng ta không cứ chỉ được đánh son đỏ, son hồng mà có thể chọn những màu son nhạt hơn, như cam chẳng hạn.

Trọng tâm của kiểu makeup này chính là lớp nền trong veo, căng mướt tự nhiên như đẹp sẵn kết hợp với môi-mắt-má ton-sur-ton gam cam đất xinh đẹp, ấn tượng mà tươi trẻ.

Để tạo được lớp nền căng bóng trong veo, bạn nên chọn kem nền lỏng có nhũ ngọc trai. Để lớp nền được bền màu và kiềm dầu tốt hơn, bí quyết là bạn hãy phủ một lớp phấn thật nhẹ lên vùng T-zone và hai bên cánh mũi.Với đôi mắt, chúng ta chỉ cần sử dụng đúng một gam màu nâu cam để tạo chiều sâu và kẻ thêm eyeliner màu nâu để tạo điểm nhấn cho mắt thôi, quá đơn giản phải không nào?

Phấn má màu cam không chỉ tạo nên tổng thể hài hòa, thống nhất cho khuôn mặt mà còn là bí kíp "đinh" giúp da mặt không bị nhợt nhạt khi tô son màu cam đất.

Những kiểu trang điểm trên tuy đơn giản mà nổi bật, phù hợp với không khí Noel, chắc chắn sẽ giúp cho các nàng trở nên xinh đẹp hơn tự tin dạo phố và "sống ảo" thôi nè. Chúc bạn chuẩn bị tốt cho một đêm Giáng sinh an lành nhé.')
INSERT [dbo].[TIN] ([MATIN], [TIEUDE], [HINH], [NGAY], [TOMTAT]) VALUES (2, N'Những bí quyết và quy trình chăm sóc da mặt cho nam', N'TIN2.JPG', CAST(0x5F400B00 AS Date), N'Da của nam và nữ không già đi một cách giống nhau. Da nam giới được bảo vệ bởi sự điều tiết chất làm se da, collagen và lớp biểu bì dày. Vì thế nếp nhăn thường xuất hiện trễ hơn, đôi khi đến tận 50 tuổi, dù vậy chúng lại thường sâu hơn nhiều so với phụ nữ.

Những nguyên nhân khiến da xuất hiện nếp nhăn và bị lão hoá (bên cạnh những nhân tố đã nêu ra ở bài viết trước) nằm ở cách biểu đạt cảm xúc, giấc ngủ và thiếu hụt sự chăm sóc da.

Bên cạnh kem chống lão hoá, chăm sóc da bình thường cũng có thể giúp đẩy lùi những dấu hiệu của tuổi tác. Hãy tìm kiếm những loại sữa rửa mặt, nước hoa hồng và kem dưỡng ẩm đáng tin cậy và phù hợp với loại da.

Nếu bạn có da dầu, hãy chọn những sản phẩm không có chứa dầu vì chúng có thể thúc đẩy quá trình sản sinh và khiến da mặt bóng nhờn hơn. Rửa sạch, thoa nước hoa hồng và dưỡng ẩm da mỗi ngày. Đừng bao giờ đi ngủ mà bỏ qua những bước quan trọng này nhé!')
INSERT [dbo].[TIN] ([MATIN], [TIEUDE], [HINH], [NGAY], [TOMTAT]) VALUES (3, N'101 Tips làm đẹp dành cho nam giới (Phần 1)', N'TIN3.JPG', CAST(0x5F400B00 AS Date), N'1. Đối với một số người đàn ông, bộ râu chính là nét quyến rũ độc đáo của họ nhưng với số khác thì nó lại trông như một thảm hoạ. Nếu râu mọc lộn xộn hay không đều màu thì tốt nhất bạn nên cạo đi thật sạch sẽ.

2. Đừng ngại sử dụng kem che khuyết điểm để che đi những điểm không hoàn hảo trên gương mặt, việc này không giống như thoa son, kẻ mắt hay đánh má hồng. Chỉ đơn giản là có mụn thì ai mà chẳng muốn giấu đi.

3. Bắt đầu sử dụng kem dưỡng ẩm mỗi ngày để duy trì làn da khoẻ mạnh. Cả đàn ông lẫn phụ nữ đều sẽ có nếp nhăn nên không lí do gì để không chăm sóc da đang dần lão hoá.

4. Rửa mặt bằng sữa rửa mặt thay vì xà phòng dùng cho thân thể sẽ giúp bạn có làn da khoẻ và ít mụn hơn. 

5. Bọng mắt chính là dấu hiệu của việc nghỉ ngơi không đầy đủ, hãy ngủ một giấc 8 tiếng mỗi ngày để thức dậy thật tươi mới và sảng khoái nhé!

6. Nếu bạn vẫn gặp phải những bọng mắt gây khó chịu đó, hãy thử thoa một ít Preparation H, công dụng vô cùng thần kì!

7. Khi định đi ra ngoài nắng, bạn hãy nhớ đeo kính mát. Nó sẽ giúp bạn không phải nheo mắt và giảm khả năng xuất hiện nếp nhăn.

8. Nếu da mặt trơn nhẵn (không có râu) thì bạn có thể đánh một chút kem nền không chứa dầu hoặc phấn phủ không màu để da mặt không bị đổ dầu nhé!')
INSERT [dbo].[TIN] ([MATIN], [TIEUDE], [HINH], [NGAY], [TOMTAT]) VALUES (4, N'5 bước trang điểm mắt một mí cực kỳ đơn giản không phải ai cũng biết?', N'TIN4.JPG', CAST(0x5F400B00 AS Date), N'Sở hữu đôi mắt mí lẩn hay mắt một mí khiến nhiều chị em tự ti, nhưng nét đẹp ấy mới khó lẫn lộn giữa rừng những cô nàng từng phẫu thuật nhấn mí. Tại sao không học cách trang điểm mắt một mí cho thật nổi bật và lộng lẫy như các sao Hàn nhỉ. Bởi chỉ cần vài thao tác đơn giản cùng với sự kết hợp khéo léo một số mỹ phẩm trang điểm mắt như mi giả, phấn mắt, bút kẻ mắt là chúng ta đã trang điểm được một đôi mắt to tròn, long lanh và đầy sức cuốn hút.')
INSERT [dbo].[TIN] ([MATIN], [TIEUDE], [HINH], [NGAY], [TOMTAT]) VALUES (5, N'Các bước trang điểm tự nhiên và đơn giản cần những gì?', N'TIN5.JPG', CAST(0x5F400B00 AS Date), N'Các bước trang điểm tự nhiên và đơn giản cần những gì? Vì trang điểm đẹp là nhu cầu cần thiết của chị em mỗi khi đi chơi, dạo phố hay trang điểm tự nhiên và đơn giản là xu hướng chung của rất nhiều chị em khi đi đám cưới, dự tiệc. Chỉ cần vài bước nhỏ bạn sẽ có gương mặt tươi sáng, tự tin và thu hút ánh nhìn từ đối phương. Nghe tưởng đơn giản nhưng nếu với những cô nàng lần đầu làm đẹp thì chắc hẳn sẽ không hề dễ. Ngay bây giờ hãy cùng chúng tôi xem ngay các bước trang điểm đơn giản nhưng đẹp nhẹ nhàng và tự nhiên nhé!')
INSERT [dbo].[TIN] ([MATIN], [TIEUDE], [HINH], [NGAY], [TOMTAT]) VALUES (6, N'Tư vấn các bước trang điểm công sở đẹp tự nhiên và nhẹ nhàng', N'TIN6.JPG', CAST(0x5F400B00 AS Date), N'Trang điểm công sở nhiệm vụ quan trọng. Ngay từ hôm nay, hãy bắt đầu tạo cho mình thói quen trang điểm hằng ngày để lúc nào cũng xinh tươi, tràn đầy sức sống như cô nàng BOSHOP nhé. Hãy bỏ thói quen suy nghĩ trang điểm khi đi làm không cần thiết, mất nhiều thời gian hay không tốt cho da,... Nếu nó giúp bạn sự tự tin, đẹp nhẹ nhàng và thu hút ánh nhìn của đối tác, đồng nghiệp thì bạn có thích? Tư vấn các bước trang điểm công sở đơn giản, đẹp tự nhiên bạn nên tham khảo.')
INSERT [dbo].[TIN] ([MATIN], [TIEUDE], [HINH], [NGAY], [TOMTAT]) VALUES (7, N'6 bí quyết chăm sóc da ngăn ngừa tác hại khi nước bị nhiễm styrene', N'TIN7.JPG', CAST(0x5F400B00 AS Date), N'Theo Cơ Quan Bảo Vệ Môi Trường Mỹ, Styrene nằm trong danh mục những Chất gây ô nhiễm không khí độc hại. Khi ngấm vào nước nó sẽ nhanh chóng bay hơi hoặc phân hủy do hoạt động của vi khuẩn. Styrene có thể gây ra nhiều vấn đề về sức khỏe, thậm chí có thể phá hủy gan, các mô thần kinh, dẫn tới ung thư và nhiều bệnh lý nghiêm trọng về da. Nhưng hiện tại "Chất Độc" đang tồn đọng trong nguồn nước sinh hoạt tại Việt Nam và đã ở ngưỡng dư thừa từ 1,3-3,65 lần, liệu sức khỏe và làn da của chúng ta có chịu nổi sức ép kinh hoàng đó không? Cùng Boshop thực hiện ngay 6 bí quyết chăm sóc da an toàn ngăn ngừa tác hại khi nước bị nhiễm styrene. ')
INSERT [dbo].[TIN] ([MATIN], [TIEUDE], [HINH], [NGAY], [TOMTAT]) VALUES (8, N'Nghệ và 10 công dụng làm đẹp bạn đã biết chưa?', N'TIN8.JPG', CAST(0x5F400B00 AS Date), N'Vốn được xem là một gia vị không thể thiếu tại Ấn Độ, củ nghệ còn được sử dụng như một loại “thần dược” để dưỡng da và làm đẹp với công dụng kháng khuẩn, chống viêm, loại nấm, trị mụn, sáng da và hàng tỉ thứ hiệu quả khác.
Nhưng vấn đề chính là: nghệ có nhiều công dụng thần kỳ như vậy nhưng bạn đã biết cách tận dụng nó chưa? Nếu câu trả lời của bạn là chưa hoặc không biết thì ngay hôm nay, hãy cùng Bo Shop khám phá ngay 10 công dụng làm đẹp của nghệ ngay trong bài viết này nha!')
INSERT [dbo].[TIN] ([MATIN], [TIEUDE], [HINH], [NGAY], [TOMTAT]) VALUES (9, N'Giảm cân kiểu Low Carb và thực đơn chuẩn', N'TIN9.JPG', CAST(0x5F400B00 AS Date), N'Mùa tết vừa qua, chắc hẳn không ít thì nhiều các chị em phụ nữ cũng đã lên thêm vài ký. Vậy nên hãy cùng giảm cân an toàn, lành mạnh và hiệu quả cùng chế độ ăn kiêng low carb đang làm mưa làm gió trong thời gian vừa qua. Đây là một là một chế độ ăn uống hạn chế carbohydrate, đó là chất được tìm thấy trong thực phẩm có đường, mì ống và bánh mì,… chế độ ăn kiêng low carb này đòi hỏi một lượng cao chất đạm, chất béo và rau quả lành mạnh.

Chế độ ăn kiêng low carb này có rất nhiều kiểu khác nhau, và các nghiên cứu cho thấy rằng nó có thể giúp giảm cân và cải thiện sức khỏe. Bên dưới chính là một kế hoạch bữa ăn chi tiết cho chế độ ăn uống low carb. Những gì nên ăn, những gì nên tránh và một menu low carb mẫu cho một tuần.')
INSERT [dbo].[TIN] ([MATIN], [TIEUDE], [HINH], [NGAY], [TOMTAT]) VALUES (10, N'5 tinh chất dưỡng ẩm cho da hiệu quả nhất từ nguyên liệu tự nhiên', N'TIN10.JPG', CAST(0x5F400B00 AS Date), N'Chăm sóc da có nhiều cách nhưng bổ sung dưỡng chất và áp dụng các phương pháp dùng tinh chất dưỡng ẩm cho da thường xuyên từ nguyên liệu tự nhiên là điều cần thiết.
Vừa an toàn, lại không lo ngại về các thành phần hóa học, phẩm màu hay chất tạo hương tổng hợp như dùng các loại mỹ phẩm, thực phẩm chức năng… ')
INSERT [dbo].[TIN] ([MATIN], [TIEUDE], [HINH], [NGAY], [TOMTAT]) VALUES (11, N'Top 7 loại thức ăn nuôi cơ dành cho nam giới', N'TIN11.JPG', CAST(0x5F400B00 AS Date), N'Tăng cơ bắp, xây dựng hay làm sắc nét cơ là những gì mà cánh mày râu thường chú tâm để ý, tuy nhiên không phải chàng trai nào cũng thực sự biết được cách tăng cơ bắp cho body của mình.
Sự phát triển của cơ bắp cần có một công thức bao gồm uống nhiều nước và ăn nhiều thức ăn giàu năng lượng bên cạnh việc chăm chỉ rèn luyện. Với công thức đúng đắn này, bạn sẽ rút ngắn quãng đường chạm đến một cơ thể tuyệt vời.')
INSERT [dbo].[TIN] ([MATIN], [TIEUDE], [HINH], [NGAY], [TOMTAT]) VALUES (12, N'101 Tips làm đẹp dành cho nam giới (Phần 2)', N'TIN12.JPG', CAST(0x5F400B00 AS Date), N'“Làm đẹp dành cho nam giới” với 101 tip đã quay trở lại với phần 2 để “mách” cho các bạn thêm nhiều bí quyết khác để chăm sóc môi, răng và tóc.Làm đẹp cho nam giới không quá khó, và nó hoàn toàn đơn giản nếu như bạn biết được những điều sau đây và bắt đầu chăm sóc từng phần như răng, tóc ....')
SET IDENTITY_INSERT [dbo].[TIN] OFF
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'1', N'Chăm sóc da mặ')
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'10', N'Sản phẩm khác')
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'2', N'Chăm sóc cơ thể')
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'3', N'Chăm sóc tóc')
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'4', N'Nước Hoa')
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'5', N'Son Môi')
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'6', N'Make-Up')
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'7', N'Chăm sóc răng miệng')
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'8', N'Chăm sóc tay chân')
INSERT [dbo].[THELOAI] ([MATL], [TENTL]) VALUES (N'9', N'Chăm sóc mec')
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [PHOTOTH]) VALUES (N'TH1', N'THE BODY SHOP', N'THE BODY SHOP.JPG')
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [PHOTOTH]) VALUES (N'TH10', N'CLEAN & CLEAR', N'CLEAN & CLEAR.JPG')
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [PHOTOTH]) VALUES (N'TH11', N'CLEAR', N'CLEAR.JPG')
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [PHOTOTH]) VALUES (N'TH12', N'GUCCI', N'GUCCI.JPG')
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [PHOTOTH]) VALUES (N'TH13', N'HOLIKA HOLIKA', N'HOLIKA HOLIKA.JPG')
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [PHOTOTH]) VALUES (N'TH14', N'LA GIRL', N'LA GIRL.JPG')
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [PHOTOTH]) VALUES (N'TH15', N'OLAY', N'OLAY.JPG')
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [PHOTOTH]) VALUES (N'TH16', N'SOFTSOAP', N'SOFTSOAP.JPG')
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [PHOTOTH]) VALUES (N'TH17', N'UNILEVER', N'UNILEVER.JPG')
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [PHOTOTH]) VALUES (N'TH18', N'MAKE UP FOREVER', N'MAKE UP FOREVER.JPG')
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [PHOTOTH]) VALUES (N'TH19', N'VASELINE', N'VASELINE.JPG')
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [PHOTOTH]) VALUES (N'TH2', N'BEAUTY TREATS', N'BAEUTY TREATS.JPG')
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [PHOTOTH]) VALUES (N'TH20', N'HANEDA COLLAGEN', N'HANEDA COLLAGEN.JPG')
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [PHOTOTH]) VALUES (N'TH3', N'HUGO BOSS', N'THE BODY SHOP.JPG')
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [PHOTOTH]) VALUES (N'TH4', N'BIORÉ', N'BIORÉ.JPG')
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [PHOTOTH]) VALUES (N'TH5', N'CHANEL', N'CHANEL.JPG')
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [PHOTOTH]) VALUES (N'TH6', N'CETAPHIL', N'CETAPHIL.JPG')
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [PHOTOTH]) VALUES (N'TH7', N'CALVIN KLEIN', N'CALVIN KLEIN.JPG')
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [PHOTOTH]) VALUES (N'TH8', N'COLGATE', N'COLGATE.JPG')
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [PHOTOTH]) VALUES (N'TH9', N'PH CARE', N'PH CARE.JPG')
ALTER TABLE [dbo].[BINHLUAN]  WITH CHECK ADD FOREIGN KEY([MATIN])
REFERENCES [dbo].[TIN] ([MATIN])
GO
ALTER TABLE [dbo].[BINHLUAN]  WITH CHECK ADD FOREIGN KEY([TAIKHOAN])
REFERENCES [dbo].[KHACHHANG] ([TAIKHOAN])
GO
ALTER TABLE [dbo].[CHITIETDH]  WITH CHECK ADD FOREIGN KEY([MADH])
REFERENCES [dbo].[DONHANG] ([MADH])
GO
ALTER TABLE [dbo].[CHITIETDH]  WITH CHECK ADD FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD FOREIGN KEY([TAIKHOAN])
REFERENCES [dbo].[KHACHHANG] ([TAIKHOAN])
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD FOREIGN KEY([MATL])
REFERENCES [dbo].[THELOAI] ([MATL])
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD FOREIGN KEY([MATH])
REFERENCES [dbo].[THUONGHIEU] ([MATH])
GO
USE [master]
GO
ALTER DATABASE [QLBANMYPHAM] SET  READ_WRITE 
GO

delete from KHACHHANG where taikhoan='dsdff'
select * from KHACHHANG