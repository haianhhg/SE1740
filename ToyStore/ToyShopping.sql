USE [ToyShopping]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/3/2023 12:41:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[displayname] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[roleid] [int] NULL,
 CONSTRAINT [PK__account__3213E83F3F466844] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/3/2023 12:41:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detail]    Script Date: 7/3/2023 12:41:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productname] [nvarchar](255) NULL,
	[productimage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[productid] [int] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK__Detail__3213E83F4AB81AF0] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/3/2023 12:41:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [nvarchar](255) NULL,
	[create_date] [date] NULL,
 CONSTRAINT [PK__orders__3213E83F46E78A0C] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/3/2023 12:41:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
	[description] [nvarchar](255) NULL,
	[imageUrl] [varchar](900) NULL,
	[create_date] [date] NULL,
	[Categoryid] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleAccount]    Script Date: 7/3/2023 12:41:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleAccount](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Rolename] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 
GO
INSERT [dbo].[Account] ([id], [username], [password], [displayname], [address], [email], [phone], [roleid]) VALUES (1, N'Admin', N'Admin', N'tuan', N'Ha Noi', N'admin@gmail.com', N'0123456789', 2)
GO
INSERT [dbo].[Account] ([id], [username], [password], [displayname], [address], [email], [phone], [roleid]) VALUES (2, N'abc', N'abc', N'A AVC', N'Ha Noi', N'nguyentientu2k1@gmail.com', N'123456789', 1)
GO
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'Đồ chơi lắp ghép')
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Thế giới động vật')
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'Đồ chơi mô hình')
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (4, N'Đồ chơi búp bê')
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (5, N'Đồ chơi theo phim')
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (6, N'Đồ chơi Robot')
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (7, N'Đồ chơi phương tiện')
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (8, N'Đồ chơi sáng tạo')
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (9, N'Đồ chơi mô phỏng')
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (10, N'Đồ chơi mầm non')
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (1, N'Bộ đường đua vòng xoay kì diệu', 5, 1709, N'Hot Wheels Action Triple Loop Kit đem đến đường đua cua pha nguy hiểm ba vòng đáng kinh ngạc để mang lại cảm giác hồi hộp và phấn khích tột độ.
Kết nối nó với các bộ Hot Wheels khác (được bán riêng) để tham gia các thử thách tăng cường với bạn bè.', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/h/m/hmx37_1.jpg', CAST(N'2023-02-07' AS Date), 7)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (2, N'Đồ chơi lắp ráp vỏ sò Hoàng Gia', 10, 4999, N'Đồ Chơi Lắp Ráp Vỏ Sò Hoàng Gia Của Nàng Tiên Cá  LEGO ADULTS 43225', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/4/3/43225_1_.jpg', CAST(N'2023-02-07' AS Date), 1)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (3, N'Đồ chơi lắp ráp xe Land Rover', 7, 6999, N'Đồ Chơi Lắp Ráp Xe Land Rover Classic Defender 90 LEGO ADULTS 10317 (2336 chi tiết)', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/1/0/10317_1_.jpg', CAST(N'2023-02-07' AS Date), 1)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (7, N'Đồ chơi lắp ráp Chú yêu tinh Dobby', 8, 979, N'Hồi tưởng lại những cảnh phim Harry Potter™ huyền diệu khi lắp ráp nhân vật đặc biệt yêu tinh Dobby™ bằng gạch LEGO®! Đặt Dobby lên giá trưng bày có bảng tên. Nghiêng đầu để đôi mắt to đó đang nhìn lên bạn', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/7/6/76421_copy_0.jpg', CAST(N'2023-02-07' AS Date), 1)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (8, N'Đồ chơi lắp ráp Trận đấu thể thao', 9, 2128, N'Chiếc hộp chứa đầy niềm vui của bộ môn Quidditch™! Liên minh với Harry Potter™, Draco Malfoy™, Cedric Diggory hoặc Cho Chang… hoặc lắp ráp cầu thủ của riêng bạn', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/7/6/76416.jpg', CAST(N'2023-02-07' AS Date), 1)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (9, N'Đồ chơi lắp ráp Trận chiến tại trường Hogwarts', 10, 2599, N'Đội quân của Voldemort đang tấn công Lâu đài Hogwarts™! Liên minh với Molly Weasley™ để chống lại Bellatrix Lestrange. Sử dụng Thanh kiếm của Gryffindor™ để giúp Neville Longbottom™ tiêu diệt Nagini', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/7/6/76415_copy_0.jpg', CAST(N'2022-02-07' AS Date), 1)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (10, N'Đồ chơi lắp ráp Hươu thần hộ mệnh', 9, 2129, N'Sử dụng Thần hộ mệnh mạnh mẽ để bảo vệ chống lại Giám ngục™! Sử dụng cây đũa phép của Harry Potter (và kỹ năng lắp ráp siêu đẳng của bạn) để tạo ra một Thần hộ mệnh', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/7/6/76414_copy_0.jpg', CAST(N'2023-02-07' AS Date), 1)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (11, N'Đồ chơi lắp ráp Cuộc rượt đuổi Captain American', 9, 469, N'Đồ Chơi Lắp Ráp Cuộc Rượt Đuổi Captain America & Black Widow Lego Superheroes 76260', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/7/6/76260_copy_0.jpg', CAST(N'2023-02-07' AS Date), 1)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (12, N'JW khủng long tấn công', 7, 479, N'JW khủng long tấn công PRESTOSUCHUS', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/h/l/hln71.hln63.jpg', CAST(N'2023-02-07' AS Date), 2)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (13, N'Sói đá hung hăng', 6, 439, N'Schleich là thương hiệu đồ chơi đến từ Đức với 80 năm kinh nghiệm trong việc sản xuất các đồ chơi mô hình, nhân vật', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/7/0/70153_2_.jpg', CAST(N'2023-02-07' AS Date), 2)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (14, N'Sư tử bóng tối', 8, 569, N'Sư tử bóng tối - 42555 là một mối đe dọa mới đầy ám ảnh rình rập Eldrador®. Tối như màn đêm, hình bóng của Sư tử Bóng tối mang một nét giống Sư tử Dung nham đáng sợ mà bạn đã từng thấy trước đây', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/4/2/42555_1_.jpg', CAST(N'2023-02-07' AS Date), 2)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (15, N'Khủng long Tarbosaurus', 9, 749, N'Ở đây có một bạn khủng long Tarbosaurus - 15034! Anh ấy là Tyrannosaur lớn thứ hai sau T-Rex. Anh ấy là một kẻ săn mồi đỉnh cao của kỷ Phấn trắng', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/1/5/15034_1_.jpg', CAST(N'2023-02-07' AS Date), 2)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (16, N'Tắc kè hoa', 10, 239, N'Tắc kè hoa - 14858 có thể thay đổi màu sắc: Xanh lục lam hay nâu đỏ, tùy vào tâm trạng', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/1/4/14858_1_.jpg', CAST(N'2023-02-07' AS Date), 2)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (17, N'Mô hình Sasuke', 10, 739, N'Mô hình chất lượng cao đến từ Nhật Bản Chi tiết đặc biệt tinh xảo đến từ các nhân vật trong thế giới Anime Manga Nhật', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/h/b/hbp-19289_3_.jpg', CAST(N'2023-02-07' AS Date), 3)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (18, N'Mô hình One Piece', 9, 1399, N'Mô hình chất lượng cao đến từ Nhật Bản Chi tiết đặc biệt tinh xảo đến từ các nhân vật trong thế giới Anime Manga Nhật', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/h/b/hbp-18972_1_.jpg', CAST(N'2023-02-07' AS Date), 3)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (19, N'Mô hình Naruto', 9, 2459, N'Mô hình chất lượng cao đến từ Nhật Bản Chi tiết đặc biệt tinh xảo đến từ các nhân vật trong thế giới Anime Manga Nhật', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/h/b/hbp-18965_1_.jpg', CAST(N'2023-02-07' AS Date), 3)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (20, N'Mô hình Demon Slayer', 10, 739, N'Mô hình chất lượng cao đến từ Nhật Bản Chi tiết đặc biệt tinh xảo đến từ các nhân vật trong thế giới Anime Manga Nhật', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/h/b/hbp-18835_3_.jpg', CAST(N'2023-02-07' AS Date), 3)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (21, N'Mô hình That time i go', 11, 739, N'Mô hình chất lượng cao đến từ Nhật Bản Chi tiết đặc biệt tinh xảo đến từ các nhân vật trong thế giới Anime Manga Nhật', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/h/b/hbp-18704_-_1.jpg', CAST(N'2023-02-07' AS Date), 3)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (22, N'Công chúa Ariel', 12, 959, N'Hãy sẵn sàng cho niềm vui đầy màu sắc với Disney Princess Rainbow Reveal Ariel. Búp bê có các khớp nối đuôi và màu khác nhau', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/f/0/f0399_2_.jpg', CAST(N'2023-02-07' AS Date), 4)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (23, N'Công chúa Royal', 9, 569, N'Sự dũng cảm, mái tóc xù và âm nhạc hấp dẫn đã biến ước mơ chân thành của Rapunzel thành hiện thực trong Disney Tangled', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/f/0/f0896_1_.jpg', CAST(N'2023-02-07' AS Date), 4)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (24, N'Công chúa Rapunzel', 10, 719, N'Giấc mơ về mái tóc của Rapunzel: búp bê thời trang Công chúa Disney này có mái tóc dài tuyệt vời', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/f/1/f1057_1_.jpg', CAST(N'2023-02-07' AS Date), 4)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (25, N'Búp bê thời trang - Rock Tee', 10, 369, N'Mỗi búp bê Barbie Fashionistas gồm bốn loại hình dạng cơ thể, chín tông màu da, chín màu mắt, 13 kiểu tóc và rất nhiều thời trang và phụ kiện phù hợp với xu hướng', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/g/r/grb47_fbr37_1.jpg', CAST(N'2023-02-07' AS Date), 4)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (26, N'Búp bê Barbie Extra', 11, 839, N'Búp bê Barbie® Extra có kiểu dáng thời trang CHẤT LỪ bạo và màu sắc tươi sáng, và chúng tạo khẳng định lại vị thế dẫn đầu xu hướng thời trang của mình! Mỗi búp bê Barbie® có phong cách độc đáo của riêng chúng', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/g/r/grn29_grn27_1_.jpg', CAST(N'2023-02-07' AS Date), 4)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (27, N'Xe đẩy Hatchimals', 9, 549, N'Xe đẩy Hatchimals phiên bản trứng Water Hatch. Với thiết kế mới và khả năng ấp trứng đặc biệt. bên trong mỗi trái trứng là một bé Hatchimals siêu đáng yêu', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/6/0/6067741_1_.jpg', CAST(N'2023-02-07' AS Date), 5)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (28, N'Siêu anh hùng Người dơi', 10, 329, N'Mô hình siêu anh hùng Batman với 3 khớp cử động linh hoạt. Thiết kế mang nhiều đường nét chi tiết sắc sảo của từng nhân vật trong phim mang đến một hình ảnh của những siêu anh hùng', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/6/0/6067619_1_.jpg', CAST(N'2023-02-07' AS Date), 5)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (29, N'Siêu anhḣ hùng Superman', 10, 329, N'Mô hình siêu anh hùng Superman với 3 khớp cử động linh hoạt. Thiết kế mang nhiều đường nét chi tiết sắc sảo của từng nhân vật trong phim mang đến một hình ảnh của những siêu anh hùng quyền năng', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/6/0/6067618_1_.jpg', CAST(N'2023-02-07' AS Date), 5)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (30, N'Mô hình OPTIMUS', 9, 1659, N'Thương hiệu đồ chơi trẻ em Transformers đến từ Mỹ nổi tiếng với những sản phẩm đồ chơi được sản xuất dựa trên bộ phim Transformers ăn khách', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/f/7/f7242_1_.jpg', CAST(N'2023-02-07' AS Date), 5)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (31, N'The Flash siêu cấp', 10, 999, N'The Flash Siêu cấp phiên bản The Flash Movie sở hữu tạo hình nhân vật với những chi tiết đến từ chính diễn viên thủ vai The Flash trong phim', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/6/0/6065268.jpg', CAST(N'2023-02-07' AS Date), 5)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (32, N'Robot biến hình ', 9, 449, N'POLI - nhân vật cảnh sát, vô cùng mạnh mẽ và không dễ dàng bỏ cuộc. Cậu ấy trung thực, có trách nhiệm cao trong việc giữ an toàn cho thị trấn và bảo vệ tính mạng cũng như tài sản của cư dân', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/8/3/83094_copy_7.jpg', CAST(N'2023-02-07' AS Date), 6)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (33, N'Robot biến hình Poli', 10, 499, N'Robot biến hình cỡ lớn Jerome cuồng phong và thú cưng Jerome có thể biến hình từ máy bay đồ chơi thành robot siêu năng động!', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/y/w/yw770443.jpg', CAST(N'2023-02-07' AS Date), 6)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (34, N'Robot biến hình Shine lấp lánh ', 9, 379, N'Robot biến hình cỡ lớn Shine lấp lánh đến từ Hàn Quốc, nhận được sự yêu thích của trẻ em trên toàn thế giới.', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/y/w/yw770239.jpg', CAST(N'2023-02-07' AS Date), 6)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (35, N'Robot biến hình SuperWings', 10, 519, N'Căn cứ di chuyển trên không biến hình thành Robot khổng lồ được thiết kế sinh động và giống như nguyên tác từ bộ phim hoạt hình nổi tiếng', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/y/w/yw760288_copy.jpg', CAST(N'2023-02-07' AS Date), 6)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (36, N'Robot Tino huyền thoại', 10, 159, N'Đồ chơi thú cưng khủng long Tino huyền thoại , một sản phẩm từ series phim hoạt hình nổi tiếng được yêu thích trên toàn thế giới - SuperWings', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/e/u/eu770421.jpg', CAST(N'2023-02-07' AS Date), 6)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (37, N'Thùng thức hợp vòng lửa ', 10, 1189, N'Bộ đồ chơi này bao gồm 16 chi tiết và phụ kiện xây dựng đường đua theo chủ đề vòng lửa và đi kèm 1 siêu xe Hot Wheels', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/h/m/hmc04_1.jpg', CAST(N'2023-02-07' AS Date), 7)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (38, N'Siêu xe Fast&Furius', 10, 119, N'Ice Charger là một đại diện chính xác của Dodge Charger 1968 được sử dụng trong phần thứ tám của loạt phim Fast & Furious', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/h/n/hnr98.hnr88_copy_4.jpg', CAST(N'2023-02-07' AS Date), 7)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (39, N'Bộ đôi Siêu xe Wheel Premium', 10, 519, N'Bộ 2 này bao gồm 2 chiếc Lexus RC F GT3 mới và mẫu Pandem phổ biến "Subaru BRZ".', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/h/k/hkf51.hbl96.jpg', CAST(N'2023-02-07' AS Date), 7)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (40, N'Siêu xe Mazda Miata', 10, 259, N'Mazda Mazdaspeed MX-5, được biết đến ở Nhật Bản với tên gọi Eunos Roadster Turbo, là phiên bản định hướng hiệu suất của MX-5 thế hệ thứ hai', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/h/k/hkf22.gjt68_copy.jpg', CAST(N'2023-02-07' AS Date), 7)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (41, N'Bộ thí nghiệm chế tạo nến thơm', 9, 249, N'Với sản phẩm này, trẻ sẽ được chơi và trải nghiệm các kiến thức khoa học đầy thú vị. Khi tự tay làm các thí nghiệm, trẻ sẽ rút ra được những bài học thực tế có thể ứng dụng trong cuộc sống hàng ngày', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/1/3/13027_2_.jpg', CAST(N'2023-02-07' AS Date), 8)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (42, N'Bộ thí nghiệm chế tạo phòng Spa', 10, 449, N'Với sản phẩm này, trẻ sẽ được chơi và trải nghiệm các kiến thức khoa học đầy thú vị. Khi tự tay làm các thí nghiệm, trẻ sẽ rút ra được những bài học thực tế có thể ứng dụng trong cuộc sống hàng ngày', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/95cb36d3254e0a20b33361b06e7c0ce9/1/3/13016_2_.jpg', CAST(N'2023-02-07' AS Date), 8)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (43, N'Bảng vẽ thông minh ', 11, 449, N'Bảng vẽ thông minh mực đa sắc size 10 inch Vịt Con có thể tự xóa giúp bé vẽ và ghi lại những hình ảnh, ý tưởng, những điều mới lạ, bổ ích mà bé được học và quan sát hằng ngày một cách dễ dàng và tiện lợi nhất', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/z/j/zj01yl_1_.jpg', CAST(N'2023-02-07' AS Date), 8)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (44, N'Bộ phụ kiện trang trí giày', 10, 264, N'Bộ phụ kiện trang trí giày Rainbow là sản phẩm đến từ 3C4G - một thương hiệu nổi tiếng về các sản phẩm văn phòng phẩm và phụ kiện cho bé gái của Vương quốc Anh', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/1/3/1325-1.jpg', CAST(N'2023-02-07' AS Date), 8)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (45, N'Đồ chơi rubik', 11, 509, N'Lần này Rubik’s sẽ mang đến cho các bạn một thiết kế hoàn toàn mới. Rubik’s Race là một trò chơi rubik dạng bảng có nhịp độ nhanh được thiết kế để kích thích trí não và các ngón tay của bạn hoạt động nhanh nhất có thể.', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/8/0/800x800_6063980-02.jpg', CAST(N'2023-02-07' AS Date), 8)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (46, N'Vali bác sĩ màu hồng', 10, 379, N'Đồ chơi vali bác sĩ màu hồng ECOIFFIER 002875 mô phỏng dụng cụ y tế, bé cùng bạn bè sẽ đóng vai y tá hoặc bác sĩ. Thông qua món đồ chơi nhập vai này, bố mẹ có thể giúp con có nhận thức về lĩnh vực y tế, có cái nhìn bao quát về sức khỏe', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/0/0/0002875_1.jpg', CAST(N'2023-02-07' AS Date), 9)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (47, N'Bộ đồ ăn cho bé', 10, 529, N'Đồ chơi đồ dùng nhà bếp Ecoiffier - Bộ đồ ăn cho bé ECOIFFIER 002877 là một bộ sản phẩm không thể thiếu đối với các bé có đam mê về lĩnh vực nấu ăn. Với bộ dụng cụ phong phú đa dạng các bé có thể thỏa sức sáng tạo hóa thân thành một đầu bếp thực thụ', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/0/0/002877_1.jpg', CAST(N'2023-02-07' AS Date), 9)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (48, N'Bộ bác sĩ thú cưng', 10, 779, N'Đồ Chơi BATTAT bộ đồ chơi bác sĩ thú cưng BT2538Z là đồ chơi số 1 tại Canada, sử dụng công nghệ tiên tiến giúp bé có thể vừa vui chơi vừa làm quen với các hoạt động gần gũi với thế giới quan', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/magento/BATTAT/BT2538Z/BT2538Z_1.jpg', CAST(N'2023-02-07' AS Date), 9)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (49, N'Chuồng thú cưng', 10, 199, N'Đồ chơi chuồng thú cưng Mini Chó Nâu bao gồm 1 chuồng chú cưng, 1 em cún nhỏ nhắn đáng yêu cùng các phụ kiện ngộ nghĩnh đi kèm để bé thoả sức tương tác và chơi cùng em cún', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/5/0/5073-sh5073_1_.png', CAST(N'2023-02-07' AS Date), 9)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (50, N'Quầy đồ siêu thị', 10, 559, N'Tận hưởng trải nghiệm mua sắm cho bé yêu với bộ trò chơi Quầy siêu thị di động hiện đại.', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/s/h/sh661-515-1.jpg', CAST(N'2023-02-07' AS Date), 9)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (52, N'Bảng vẽ trẻ em ', 9, 212, N'Với bảng vẽ khủng long 2 trong 1, các bé có thể thỏa sức sáng tạo thông qua việc vẽ các hình ảnh bé thích, không chỉ vậy với các phụ kiện đi kèm bảng phác họa mini, còn giúp bé thích thú trải ngiệm việc tô để có được những hình ảnh vô cùng đáng yêu', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/m/t/mt587741.jpg', CAST(N'2023-02-07' AS Date), 10)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (53, N'Đồ chơi rubik đèn và nhạc cho bé', 10, 429, N'Lấy cảm hứng từ trò chơi trí tuệ kinh điển khối Rubik được  thiết kế theo kết cấu có âm nhạc và ánh sáng ngộ nghĩnh để bé tự do khám phá khi vặn và xoay', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/h/j/hjn95.jpg', CAST(N'2023-02-07' AS Date), 10)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (54, N'Điện thoại thông minh', 10, 407, N'75+ bài hát, âm thanh và cụm từ dạy các con số và cách đếm, hình dạng, màu sắc, cảm xúc và thời tiết', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/h/l/hly61_1_.jpg', CAST(N'2023-02-07' AS Date), 10)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (55, N'Đồ chơi lạc đà tập đếm ', 11, 659, N'Đồ chơi được tích hợp nhiều trò chơi thực hành và học tập tương tác thú vị để bé khám phá và phát triển tư duy cũng như những giác quan đầu đời cách tốt nhất.', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/h/m/hmf11_1_.jpg', CAST(N'2023-02-07' AS Date), 10)
GO
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageUrl], [create_date], [Categoryid]) VALUES (56, N'Đồ chơi hình khối ', 12, 399, N'Những món đồ chơi giúp bé nhận biết được hình dạng, màu sắc, con số,.. Đặc biệt còn chơi được cả trong nhà,ngoài trời và cả nhà tắm nữa thì quá tiện lợi', N'https://u6wdnj9wggobj.vcdn.cloud/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/p/a/pab025_1_.jpg', CAST(N'2023-02-07' AS Date), 10)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[RoleAccount] ([id], [role_name]) VALUES (1, N'User')
GO
INSERT [dbo].[RoleAccount] ([id], [role_name]) VALUES (2, N'Admin')
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_orders_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_account_RoleAccount] FOREIGN KEY([roleid])
REFERENCES [dbo].[RoleAccount] ([id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_account_RoleAccount]
GO
ALTER TABLE [dbo].[Detail]  WITH CHECK ADD  CONSTRAINT [FK_Detail_orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[Detail] CHECK CONSTRAINT [FK_Detail_orders]
GO
ALTER TABLE [dbo].[Detail]  WITH CHECK ADD  CONSTRAINT [FK_Detail_Product] FOREIGN KEY([productid])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Detail] CHECK CONSTRAINT [FK_Detail_Product]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_orders_account]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__Categor__0CBAE877] FOREIGN KEY([Categoryid])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__Categor__0CBAE877]
GO
