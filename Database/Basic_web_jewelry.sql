USE [JEWELRY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 5/31/2022 11:19:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[u_id] [int] NOT NULL,
	[deliveryAddress] [nvarchar](50) NULL,
	[buyDate] [date] NULL,
	[deliveryCancelDay] [date] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_cart] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartItem]    Script Date: 5/31/2022 11:19:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[pro_id] [int] NOT NULL,
	[cart_id] [int] NOT NULL,
	[price] [float] NOT NULL,
 CONSTRAINT [PK_CartItem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/31/2022 11:19:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cate_id] [int] IDENTITY(1,1) NOT NULL,
	[cate_name] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/31/2022 11:19:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[price] [float] NULL,
	[discount] [float] NULL,
	[cate_id] [int] NOT NULL,
	[image] [varchar](50) NULL,
	[unit] [nvarchar](50) NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 5/31/2022 11:19:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [nvarchar](50) NOT NULL,
	[lastname] [nvarchar](50) NOT NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](50) NOT NULL,
	[salt] [varchar](50) NOT NULL,
	[address] [nvarchar](100) NULL,
	[phone] [varchar](10) NULL,
	[sex] [int] NULL,
	[birthday] [datetime] NULL,
	[avatar] [varchar](50) NULL,
	[role_id] [int] NULL,
	[StatusDelete] [int] NULL,
	[IsVerify] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([id], [u_id], [deliveryAddress], [buyDate], [deliveryCancelDay], [status]) VALUES (3, 34, N'Thủ Đức', CAST(N'2022-05-25' AS Date), CAST(N'2022-05-26' AS Date), 1)
INSERT [dbo].[Cart] ([id], [u_id], [deliveryAddress], [buyDate], [deliveryCancelDay], [status]) VALUES (4, 34, N'Thủ Đức', CAST(N'2022-05-26' AS Date), CAST(N'2022-05-27' AS Date), 1)
INSERT [dbo].[Cart] ([id], [u_id], [deliveryAddress], [buyDate], [deliveryCancelDay], [status]) VALUES (5, 35, N'vc', CAST(N'2022-05-27' AS Date), NULL, 2)
INSERT [dbo].[Cart] ([id], [u_id], [deliveryAddress], [buyDate], [deliveryCancelDay], [status]) VALUES (6, 35, N'vc', CAST(N'2022-05-27' AS Date), CAST(N'2022-05-27' AS Date), 1)
INSERT [dbo].[Cart] ([id], [u_id], [deliveryAddress], [buyDate], [deliveryCancelDay], [status]) VALUES (8, 34, N'Thủ Đức', CAST(N'2022-05-28' AS Date), CAST(N'2022-05-28' AS Date), -1)
INSERT [dbo].[Cart] ([id], [u_id], [deliveryAddress], [buyDate], [deliveryCancelDay], [status]) VALUES (9, 35, N'vc', CAST(N'2022-05-29' AS Date), NULL, 0)
INSERT [dbo].[Cart] ([id], [u_id], [deliveryAddress], [buyDate], [deliveryCancelDay], [status]) VALUES (10, 46, N'Thủ Đức', CAST(N'2022-05-29' AS Date), CAST(N'2022-05-29' AS Date), -1)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[CartItem] ON 

INSERT [dbo].[CartItem] ([id], [quantity], [pro_id], [cart_id], [price]) VALUES (4, 1, 3, 3, 4175100)
INSERT [dbo].[CartItem] ([id], [quantity], [pro_id], [cart_id], [price]) VALUES (5, 1, 5, 3, 4370000)
INSERT [dbo].[CartItem] ([id], [quantity], [pro_id], [cart_id], [price]) VALUES (6, 1, 4, 4, 8100000)
INSERT [dbo].[CartItem] ([id], [quantity], [pro_id], [cart_id], [price]) VALUES (7, 1, 3, 4, 4175100)
INSERT [dbo].[CartItem] ([id], [quantity], [pro_id], [cart_id], [price]) VALUES (8, 1, 9, 4, 23765000)
INSERT [dbo].[CartItem] ([id], [quantity], [pro_id], [cart_id], [price]) VALUES (9, 1, 5, 5, 4370000)
INSERT [dbo].[CartItem] ([id], [quantity], [pro_id], [cart_id], [price]) VALUES (10, 1, 3, 6, 4175100)
INSERT [dbo].[CartItem] ([id], [quantity], [pro_id], [cart_id], [price]) VALUES (13, 1, 4, 8, 8100000)
INSERT [dbo].[CartItem] ([id], [quantity], [pro_id], [cart_id], [price]) VALUES (14, 1, 3, 8, 4175100)
INSERT [dbo].[CartItem] ([id], [quantity], [pro_id], [cart_id], [price]) VALUES (15, 1, 4, 9, 8100000)
INSERT [dbo].[CartItem] ([id], [quantity], [pro_id], [cart_id], [price]) VALUES (16, 1, 7, 9, 750000)
INSERT [dbo].[CartItem] ([id], [quantity], [pro_id], [cart_id], [price]) VALUES (17, 1, 4, 10, 8100000)
INSERT [dbo].[CartItem] ([id], [quantity], [pro_id], [cart_id], [price]) VALUES (18, 1, 6, 10, 2090000)
SET IDENTITY_INSERT [dbo].[CartItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([cate_id], [cate_name]) VALUES (1, N'Hoa tai đá thiên nhiên')
INSERT [dbo].[Category] ([cate_id], [cate_name]) VALUES (2, N'Vòng cổ đá thiên nhiên')
INSERT [dbo].[Category] ([cate_id], [cate_name]) VALUES (3, N'Nhẫn thiên nhiên')
INSERT [dbo].[Category] ([cate_id], [cate_name]) VALUES (7, N'bv')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [quantity]) VALUES (3, N'Hoa Tai Đá Garnet 5mm ', 4639000, 10, 1, N'hoa-tai-da-garnet3-scaled.jpg', N'Vàng 14k', 5)
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [quantity]) VALUES (4, N'Mặt Dây Chuyền Đá Ruby ', 9000000, 10, 2, N'mat-day-chuye-da-ruby-2.jpg', N'Vàng 14k', 0)
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [quantity]) VALUES (5, N'Mặt Dây Chuyền Đá Topaz Trắng ', 4600000, 5, 2, N'mat-day-chuyen-topaz-1-768x768.jpg', N'Vàng 14k', 3)
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [quantity]) VALUES (6, N'Nhẫn Nam Đá Chủ Garnet Thiên Nhiên ', 2200000, 5, 3, N'nhan-nam-da-garnet-1.jpg', N'Bạc 925 mạ rodium', 2)
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [quantity]) VALUES (7, N'Nhẫn Bạc Đá Chủ Garnet Oval( Ngọc Hồng Lựu)', 750000, 0, 3, N'nhan-nu-da-garnet-oval-768x735.jpg', N'Bạc 925 mạ vàng trắng', 4)
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [quantity]) VALUES (8, N'Nhẫn Nữ Đá Garnet Trái Tim', 850000, 7, 3, N'nhan-nu-garnet-trai-tim.jpg', N'Bạc mạ vàng trắng', 6)
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [quantity]) VALUES (9, N'Nhẫn Nam Đá Spinel', 24500000, 3, 3, N'6b19e0b3f30708595116-768x768.jpg', N'Vàng Hồng', 1)
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [quantity]) VALUES (10, N'Nhẫn Eternity Đá Sapphire Vàng', 1800000, 8, 3, N'Nhan-bac-da-tam-sapphire-vang-2-e1628594043937.jpg', N'Bạc/vàng', 3)
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [quantity]) VALUES (11, N'Nhẫn Nam Vàng 10k Thạch Anh Vàng', 12800000, 10, 3, N'nhan-nam-vang-10k-da-thach-anh-vang-2-768x768.jpg', N'Vàng Gold 10k', 5)
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [quantity]) VALUES (12, N'Nhẫn Nam Đá Thạch Anh Vàng Chanh', 1500000, 0, 3, N'nhan-nam-da-thach-anh-vang-chanh-2-768x768.jpg', N'Bạc mạ vàng trắng', 2)
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [quantity]) VALUES (13, N'Nhẫn Nữ Đá Sapphire Vàng', 950000, 10, 3, N'nhan-bac-da-sapphire-vang-2-768x768.jpg', N'Bạc mạ vàng trắng', 5)
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [quantity]) VALUES (14, N'Nhẫn Mạ Vàng Đá Peridot', 1350000, 12, 3, N'nhan-ma-vang-da-peridot-1-768x768.jpg', N'Bạc mạ vàng', 5)
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [quantity]) VALUES (15, N'Nhẫn Nữ Đá Peridot Tròn thiên nhiên', 1250000, 12, 3, N'nhan-nu-bac-da-chu-peridot-768x768.jpg', N'Bạc mạ vàng trắng', 7)
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [quantity]) VALUES (16, N'Nhẫn Nữ Vàng Đá Sapphire Xanh', 4500000, 5, 3, N'nhan-vang-sapphire-xanh-1-768x768.jpg', N'Vàng 18k (AU 750)', 2)
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [quantity]) VALUES (18, N'Nhẫn Nam Đá Thạch Anh Vàng Cam', 1500000, 0, 3, N'nhan-da-citrine-oval-thien-nhien.jpg', N'Bạc mạ vàng trắng', 2)
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [quantity]) VALUES (19, N'Nhẫn Nữ Đá Mắt Hổ Thiên Nhiên', 750000, 10, 3, N'nhan-nu-da-mat-ho-3.jpg', N'Bạc mạ vàng', 4)
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [quantity]) VALUES (21, N'Nhẫn Vàng Gold Sapphire Xanh', 900000, 0, 3, N'nhan-eternity-sapphire-xanh-3-768x768.jpg', N'Vàng 14k', 2)
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [quantity]) VALUES (22, N'Nhẫn Nữ Đá Topaz Xanh', 5500000, 0, 3, N'nhan-vang-18kgold-datopazxanh-1-768x768.jpg', N'Vàng 10K', 5)
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [quantity]) VALUES (23, N'Nhẫn Nữ Đá Tektite', 1500000, 0, 3, N'nhan-nu-da-chu-tektit-4-768x768.jpg', N'Bạc 925', 4)
INSERT [dbo].[Product] ([id], [name], [price], [discount], [cate_id], [image], [unit], [quantity]) VALUES (29, N'fv', 2, 2, 7, N'220529233047-Garen_0.jpg', N'vbcvb', 2)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [firstname], [lastname], [email], [password], [salt], [address], [phone], [sex], [birthday], [avatar], [role_id], [StatusDelete], [IsVerify]) VALUES (33, N'Trường', N'Nguyễn Lam', N'nguyenlamtruong0104@gmail.com', N'pTvLauypCaEqo9bFEJJ5kLZEUS/0Mn+Zosn2GifU2Sg=', N'bmPkFlx9a4kEyOk2g9inSKeHzRsnPB', N'xcxzczx', N'0363798749', 1, CAST(N'2009-12-25T00:00:00.000' AS DateTime), N'women.jpg', 565, 0, 1)
INSERT [dbo].[User] ([id], [firstname], [lastname], [email], [password], [salt], [address], [phone], [sex], [birthday], [avatar], [role_id], [StatusDelete], [IsVerify]) VALUES (34, N'Nguyên', N'Nguyễn Trung ', N'nguyennguyentrung01@gmail.com', N'AJq7Rj/GkRNEJnNxRSyRSvvlCjlwE2GM2BfSkheVPsk=', N'k7HL9qgbCnXxPJbFH3C7gy80xwOjhv', N'Thủ Đức', N'0337387174', 0, CAST(N'2001-02-26T00:00:00.000' AS DateTime), N'220527164957-Garen_0.jpg', 0, 0, 1)
INSERT [dbo].[User] ([id], [firstname], [lastname], [email], [password], [salt], [address], [phone], [sex], [birthday], [avatar], [role_id], [StatusDelete], [IsVerify]) VALUES (35, N'lt', N'vcv', N'nguyentiendung19509201@gmail.com', N'nBf96V8woDGAFKGfZfq/0iDsAfRmxaka8ZzIYshmm74=', N'ky1iQqLE2y10HD3sE4bIENF7fcJ97Y', N'vc', N'0363798749', 0, CAST(N'2009-12-18T00:00:00.000' AS DateTime), N'220527165213-phto3.jpg', 0, 0, 1)
INSERT [dbo].[User] ([id], [firstname], [lastname], [email], [password], [salt], [address], [phone], [sex], [birthday], [avatar], [role_id], [StatusDelete], [IsVerify]) VALUES (46, N'Ánh', N'Thẩm Ngọc', N'thamngocanh2441@gmail.com', N'bGoL9djNlK8iWNPuXN1F8Ks992+2iC/Vu306Vym4Qig=', N'OPBCpSI5ml358ezaAFBCi462V909Od', N'Thủ Đức', N'0363798749', 0, CAST(N'2009-12-24T00:00:00.000' AS DateTime), N'men.jpg', 0, 0, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_User] FOREIGN KEY([u_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_User]
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_Cart] FOREIGN KEY([cart_id])
REFERENCES [dbo].[Cart] ([id])
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_CartItem_Cart]
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_Product] FOREIGN KEY([cart_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_CartItem_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([cate_id])
REFERENCES [dbo].[Category] ([cate_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
