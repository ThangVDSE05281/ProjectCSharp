USE [master]
GO
/****** Object:  Database [ProjectC#]    Script Date: 03/27/2019 11:17:20 ******/
CREATE DATABASE [ProjectC#] ON  PRIMARY 
( NAME = N'ProjectC#', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\ProjectC#.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ProjectC#_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\ProjectC#_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ProjectC#] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectC#].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectC#] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ProjectC#] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ProjectC#] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ProjectC#] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ProjectC#] SET ARITHABORT OFF
GO
ALTER DATABASE [ProjectC#] SET AUTO_CLOSE ON
GO
ALTER DATABASE [ProjectC#] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ProjectC#] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ProjectC#] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ProjectC#] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ProjectC#] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ProjectC#] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ProjectC#] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ProjectC#] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ProjectC#] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ProjectC#] SET  ENABLE_BROKER
GO
ALTER DATABASE [ProjectC#] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ProjectC#] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ProjectC#] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ProjectC#] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ProjectC#] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ProjectC#] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ProjectC#] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ProjectC#] SET  READ_WRITE
GO
ALTER DATABASE [ProjectC#] SET RECOVERY SIMPLE
GO
ALTER DATABASE [ProjectC#] SET  MULTI_USER
GO
ALTER DATABASE [ProjectC#] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ProjectC#] SET DB_CHAINING OFF
GO
USE [ProjectC#]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 03/27/2019 11:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[shopID] [int] NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[image] [nvarchar](200) NOT NULL,
	[price] [float] NOT NULL,
	[productType] [nvarchar](100) NULL,
	[description] [nvarchar](200) NULL,
	[OS] [nvarchar](100) NULL,
	[screen] [nvarchar](200) NULL,
	[camera] [nvarchar](200) NULL,
	[CPU] [nvarchar](200) NULL,
	[RAM] [nvarchar](200) NULL,
	[PIN] [nvarchar](200) NULL,
	[SIM] [nvarchar](200) NULL,
	[innerMemory] [nvarchar](200) NULL,
	[manufacture] [nvarchar](200) NULL,
	[guarantee] [nvarchar](200) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (1, 1, N'Samsung', N'hot1.jpg', 1000, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (2, 1, N'Iphone', N'hot2.jpg', 200, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (3, 1, N'abc', N'hot3.jpg', 3456, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (4, 1, N'Zphone', N'hot4.jpg', 1542, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (5, 1, N'HOo', N'hot5.jpg', 465445, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (6, 1, N'Samsung', N'hot6.jpg', 321321, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (7, 1, N'Samsung', N'hot7.jpg', 13235, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (8, 1, N'Samsung', N'hot8.jpg', 65461, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (9, 1, N'Samsung', N'smartphones_mobile.jpg', 654654, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (10, 1, N'Samsung', N'smartphones_mobile.jpg', 64165, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (11, 1, N'Samsung', N'smartphones_mobile.jpg', 899465, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (12, 1, N'Samsung', N'smartphones_mobile.jpg', 9849465, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (13, 1, N'Samsung', N'laptop1.jpg', 984496, N'Laptop', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (14, 1, N'Samsung', N'laptop2.jpg', 98446, N'Laptop', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (15, 1, N'Samsung', N'laptop1.jpg', 465648, N'Laptop', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (16, 1, N'Samsung', N'laptop4.jpg', 645646, N'Laptop', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (17, 1, N'Samsung', N'laptop4.jpg', 48496, N'Laptop', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (18, 1, N'Samsung', N'laptop4.jpg', 98494, N'Laptop', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (19, 1, N'Samsung', N'laptop4.jpg', 649844, N'Laptop', N'This tutorial series demonstrates basic aspects of using model binding with', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (20, 1, N'Samsung', N'laptop4.jpg', 6498984, N'Laptop', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (21, 1, N'Samsung', N'smartphones_mobile.jpg', 466498, N'Laptop', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (22, 1, N'Samsung', N'smartphones_mobile.jpg', 645464, N'Laptop', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (23, 1, N'Samsung', N'smartphones_mobile.jpg', 645464, N'Laptop', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (24, 1, N'Samsung', N'smartphones_mobile.jpg', 645464, N'Laptop', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (25, 1, N'ALONSO', N'smartphones_mobile.jpg', 9849465, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (26, 1, N'Samsung', N'smartphones_mobile.jpg', 9849465, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (27, 1, N'Samsung', N'smartphones_mobile.jpg', 9849465, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (28, 1, N'Samsung', N'smartphones_mobile.jpg', 9849465, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (29, 1, N'Samsung', N'smartphones_mobile.jpg', 9849465, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (30, 1, N'NONO', N'smartphones_mobile.jpg', 9849465, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (31, 1, N'Samsung', N'smartphones_mobile.jpg', 9849465, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (32, 1, N'Samsung', N'smartphones_mobile.jpg', 9849465, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (33, 1, N'RONDALO', N'smartphones_mobile.jpg', 9849465, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (34, 1, N'Samsung', N'smartphones_mobile.jpg', 9849465, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (35, 1, N'Samsung', N'smartphones_mobile.jpg', 9849465, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (36, 1, N'Samsung', N'smartphones_mobile.jpg', 9849465, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
INSERT [dbo].[Product] ([productID], [shopID], [name], [image], [price], [productType], [description], [OS], [screen], [camera], [CPU], [RAM], [PIN], [SIM], [innerMemory], [manufacture], [guarantee], [status]) VALUES (37, 1, N'KOKO', N'smartphones_mobile.jpg', 9849465, N'SmartPhone', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima perferendis ipsum sit vitae atque ea minus, ab enim tenetur molestias perspiciatis', N'IBM Ed Iacobucci.', N'LED-backlit IPS LCD, 4.7", Retina HD', N'Camera HD Siêu Nét, Siêu Hồng Ngoại, Chính Hãng', N'Apple A9 2 nhân 64-bit', N'RAM Kingston 4.0GB DDR3 Bus', N'1715 mAh', N'1 Nano SIM, Hỗ trợ 4G', N'32 GB', N'SamSung', N'3 months', 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  Table [dbo].[News]    Script Date: 03/27/2019 11:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[postId] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[image] [nvarchar](255) NULL,
	[postContent] [text] NULL,
	[viewCount] [int] NULL,
	[commentCount] [int] NULL,
	[shareCount] [int] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[postId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[News] ON
INSERT [dbo].[News] ([postId], [title], [image], [postContent], [viewCount], [commentCount], [shareCount]) VALUES (1, N'ĐÃ 2018 RỒI, BẠN THÍCH ROM GỐC HAY ROM TÙY BIẾN HƠN?', N'hotnews1.jpg', N'ROM tu? bi?n muôn màu s?c cá nhân thú v?, cùng v?i dó là cái tên thân quen v?i dân công ngh? - ROM cook, t?ng m?t th?i là ngu?n c?m h?ng v?i ngu?i dùng Android. V?y hi?n t?i dã là 2018, anh em thích dùng Android g?c hay Android tu? bi?n hon? T?m gác ROM cook sang m?t bên, vì nó dòi h?i ngu?i dùng ph?i có ki?n th?c sâu hon trong vi?c v?c v?ch, up rom ... Mình s? ch? d? c?p d?n nh?ng thi?t b? chính hãng v?i ROM g?c và ROM tu? bi?n s?n có cho ngu?i dùng co b?n. Khi s? d?ng m?t chi?c di?n tho?i, chúng ta d?u mong mu?n thi?t b? c?a mình ph?i th?t khác bi?t so xung quanh và kh?ng d?nh ch?t tôi m?i khi ai dó mu?n chi?c máy c?a b?n. T? dó xu hu?ng kho theme phát tri?n trong m?i máy cung d?n ph? bi?n hon.Không ch? d?ng l?i ? vi?c "làm d?p" smartphone, ROM tu? bi?n còn dem d?n ngu?i dùng nh?ng tính nang vui v? và ti?n l?i hon khi s? d?ng. Ví d? nhu nhi?u giao di?n cho phép tu? ch?nh v? trí, s? lu?ng phím t?t b?t t?t dèn flash, ch? d? d?c sách, ... da d?ng hon nhi?u so v?i thanh phím t?t c?a Android g?c.Ho?c nhi?u ngu?i có thói quen hay xoá t?t c? da nhi?m khi không dùng d?n, nhi?u hãng dã thêm nút Clear All d? d? t?n công xoá t?ng app. Th? nhung Android g?c thì mãi t?n bây gi? v?n chua th?y.M?t di?m tu? bi?n khác d?n t? m?t ?ng d?ng mà ai cung dùng d?n h?ng ngày, chính là camera. Có th? nói nh? s? tu? bi?n, giao di?n camera trên các máy Android ngày nay m?i da d?ng và phong phú hon nhu ch?nh tay chuyên nghi?p, phoi sáng kép, ch? d? làm d?p, ... di?u mà ROM g?c không th? có du?c.Cùng nhìn l?i, s? lu?ng ngu?i dùng dón chào ROM tu? bi?n v?n r?t dông, l?y ví d? v? ông l?n Samsung. V?i nam 2017, Samsung dã d?n hình thành m?t Samsung Experince l?n d?u xu?t hi?n trên Galaxy S8 hay Galaxy J7 Pro, v?i icon cách di?u bo cong d?c trung, kho theme tu? bi?n d? s?, nhi?u tính nang nhu ch?y 2 tài kho?n hay ch?p màn hình cu?n trang, d?u là nh?ng th? ngu?i dùng vô tình c?n d?n trong cu?c s?ng.', 320, 540, 320)
INSERT [dbo].[News] ([postId], [title], [image], [postContent], [viewCount], [commentCount], [shareCount]) VALUES (2, N'Nokia 8 Pro dùng vi xử lý Snapdragon 845 sắp sửa trình làng', N'hotnews2.jpg', N'ROM tu? bi?n muôn màu s?c cá nhân thú v?, cùng v?i dó là cái tên thân quen v?i dân công ngh? - ROM cook, t?ng m?t th?i là ngu?n c?m h?ng v?i ngu?i dùng Android. V?y hi?n t?i dã là 2018, anh em thích dùng Android g?c hay Android tu? bi?n hon? T?m gác ROM cook sang m?t bên, vì nó dòi h?i ngu?i dùng ph?i có ki?n th?c sâu hon trong vi?c v?c v?ch, up rom ... Mình s? ch? d? c?p d?n nh?ng thi?t b? chính hãng v?i ROM g?c và ROM tu? bi?n s?n có cho ngu?i dùng co b?n. Khi s? d?ng m?t chi?c di?n tho?i, chúng ta d?u mong mu?n thi?t b? c?a mình ph?i th?t khác bi?t so xung quanh và kh?ng d?nh ch?t tôi m?i khi ai dó mu?n chi?c máy c?a b?n. T? dó xu hu?ng kho theme phát tri?n trong m?i máy cung d?n ph? bi?n hon.Không ch? d?ng l?i ? vi?c "làm d?p" smartphone, ROM tu? bi?n còn dem d?n ngu?i dùng nh?ng tính nang vui v? và ti?n l?i hon khi s? d?ng. Ví d? nhu nhi?u giao di?n cho phép tu? ch?nh v? trí, s? lu?ng phím t?t b?t t?t dèn flash, ch? d? d?c sách, ... da d?ng hon nhi?u so v?i thanh phím t?t c?a Android g?c.Ho?c nhi?u ngu?i có thói quen hay xoá t?t c? da nhi?m khi không dùng d?n, nhi?u hãng dã thêm nút Clear All d? d? t?n công xoá t?ng app. Th? nhung Android g?c thì mãi t?n bây gi? v?n chua th?y.M?t di?m tu? bi?n khác d?n t? m?t ?ng d?ng mà ai cung dùng d?n h?ng ngày, chính là camera. Có th? nói nh? s? tu? bi?n, giao di?n camera trên các máy Android ngày nay m?i da d?ng và phong phú hon nhu ch?nh tay chuyên nghi?p, phoi sáng kép, ch? d? làm d?p, ... di?u mà ROM g?c không th? có du?c.Cùng nhìn l?i, s? lu?ng ngu?i dùng dón chào ROM tu? bi?n v?n r?t dông, l?y ví d? v? ông l?n Samsung. V?i nam 2017, Samsung dã d?n hình thành m?t Samsung Experince l?n d?u xu?t hi?n trên Galaxy S8 hay Galaxy J7 Pro, v?i icon cách di?u bo cong d?c trung, kho theme tu? bi?n d? s?, nhi?u tính nang nhu ch?y 2 tài kho?n hay ch?p màn hình cu?n trang, d?u là nh?ng th? ngu?i dùng vô tình c?n d?n trong cu?c s?ng.', 320, 320, 320)
INSERT [dbo].[News] ([postId], [title], [image], [postContent], [viewCount], [commentCount], [shareCount]) VALUES (3, N'HMD sẽ tái sinh một dòng sản phẩm cao cấp bằng Nokia 8 Sirocco', N'hotnews3.jpg', N'ROM tu? bi?n muôn màu s?c cá nhân thú v?, cùng v?i dó là cái tên thân quen v?i dân công ngh? - ROM cook, t?ng m?t th?i là ngu?n c?m h?ng v?i ngu?i dùng Android. V?y hi?n t?i dã là 2018, anh em thích dùng Android g?c hay Android tu? bi?n hon? T?m gác ROM cook sang m?t bên, vì nó dòi h?i ngu?i dùng ph?i có ki?n th?c sâu hon trong vi?c v?c v?ch, up rom ... Mình s? ch? d? c?p d?n nh?ng thi?t b? chính hãng v?i ROM g?c và ROM tu? bi?n s?n có cho ngu?i dùng co b?n. Khi s? d?ng m?t chi?c di?n tho?i, chúng ta d?u mong mu?n thi?t b? c?a mình ph?i th?t khác bi?t so xung quanh và kh?ng d?nh ch?t tôi m?i khi ai dó mu?n chi?c máy c?a b?n. T? dó xu hu?ng kho theme phát tri?n trong m?i máy cung d?n ph? bi?n hon.Không ch? d?ng l?i ? vi?c "làm d?p" smartphone, ROM tu? bi?n còn dem d?n ngu?i dùng nh?ng tính nang vui v? và ti?n l?i hon khi s? d?ng. Ví d? nhu nhi?u giao di?n cho phép tu? ch?nh v? trí, s? lu?ng phím t?t b?t t?t dèn flash, ch? d? d?c sách, ... da d?ng hon nhi?u so v?i thanh phím t?t c?a Android g?c.Ho?c nhi?u ngu?i có thói quen hay xoá t?t c? da nhi?m khi không dùng d?n, nhi?u hãng dã thêm nút Clear All d? d? t?n công xoá t?ng app. Th? nhung Android g?c thì mãi t?n bây gi? v?n chua th?y.M?t di?m tu? bi?n khác d?n t? m?t ?ng d?ng mà ai cung dùng d?n h?ng ngày, chính là camera. Có th? nói nh? s? tu? bi?n, giao di?n camera trên các máy Android ngày nay m?i da d?ng và phong phú hon nhu ch?nh tay chuyên nghi?p, phoi sáng kép, ch? d? làm d?p, ... di?u mà ROM g?c không th? có du?c.Cùng nhìn l?i, s? lu?ng ngu?i dùng dón chào ROM tu? bi?n v?n r?t dông, l?y ví d? v? ông l?n Samsung. V?i nam 2017, Samsung dã d?n hình thành m?t Samsung Experince l?n d?u xu?t hi?n trên Galaxy S8 hay Galaxy J7 Pro, v?i icon cách di?u bo cong d?c trung, kho theme tu? bi?n d? s?, nhi?u tính nang nhu ch?y 2 tài kho?n hay ch?p màn hình cu?n trang, d?u là nh?ng th? ngu?i dùng vô tình c?n d?n trong cu?c s?ng.', 320, 320, 320)
INSERT [dbo].[News] ([postId], [title], [image], [postContent], [viewCount], [commentCount], [shareCount]) VALUES (4, N'Huawei HiAssistant là gì? Trợ lý ảo này mang đến lợi ích gì?', N'hotnews4.jpg', N'ROM tu? bi?n muôn màu s?c cá nhân thú v?, cùng v?i dó là cái tên thân quen v?i dân công ngh? - ROM cook, t?ng m?t th?i là ngu?n c?m h?ng v?i ngu?i dùng Android. V?y hi?n t?i dã là 2018, anh em thích dùng Android g?c hay Android tu? bi?n hon? T?m gác ROM cook sang m?t bên, vì nó dòi h?i ngu?i dùng ph?i có ki?n th?c sâu hon trong vi?c v?c v?ch, up rom ... Mình s? ch? d? c?p d?n nh?ng thi?t b? chính hãng v?i ROM g?c và ROM tu? bi?n s?n có cho ngu?i dùng co b?n. Khi s? d?ng m?t chi?c di?n tho?i, chúng ta d?u mong mu?n thi?t b? c?a mình ph?i th?t khác bi?t so xung quanh và kh?ng d?nh ch?t tôi m?i khi ai dó mu?n chi?c máy c?a b?n. T? dó xu hu?ng kho theme phát tri?n trong m?i máy cung d?n ph? bi?n hon.Không ch? d?ng l?i ? vi?c "làm d?p" smartphone, ROM tu? bi?n còn dem d?n ngu?i dùng nh?ng tính nang vui v? và ti?n l?i hon khi s? d?ng. Ví d? nhu nhi?u giao di?n cho phép tu? ch?nh v? trí, s? lu?ng phím t?t b?t t?t dèn flash, ch? d? d?c sách, ... da d?ng hon nhi?u so v?i thanh phím t?t c?a Android g?c.Ho?c nhi?u ngu?i có thói quen hay xoá t?t c? da nhi?m khi không dùng d?n, nhi?u hãng dã thêm nút Clear All d? d? t?n công xoá t?ng app. Th? nhung Android g?c thì mãi t?n bây gi? v?n chua th?y.M?t di?m tu? bi?n khác d?n t? m?t ?ng d?ng mà ai cung dùng d?n h?ng ngày, chính là camera. Có th? nói nh? s? tu? bi?n, giao di?n camera trên các máy Android ngày nay m?i da d?ng và phong phú hon nhu ch?nh tay chuyên nghi?p, phoi sáng kép, ch? d? làm d?p, ... di?u mà ROM g?c không th? có du?c.Cùng nhìn l?i, s? lu?ng ngu?i dùng dón chào ROM tu? bi?n v?n r?t dông, l?y ví d? v? ông l?n Samsung. V?i nam 2017, Samsung dã d?n hình thành m?t Samsung Experince l?n d?u xu?t hi?n trên Galaxy S8 hay Galaxy J7 Pro, v?i icon cách di?u bo cong d?c trung, kho theme tu? bi?n d? s?, nhi?u tính nang nhu ch?y 2 tài kho?n hay ch?p màn hình cu?n trang, d?u là nh?ng th? ngu?i dùng vô tình c?n d?n trong cu?c s?ng.', 320, 320, 320)
SET IDENTITY_INSERT [dbo].[News] OFF
/****** Object:  Table [dbo].[Information]    Script Date: 03/27/2019 11:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Information](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[address] [nvarchar](200) NOT NULL,
	[phoneNumber] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Information] ON
INSERT [dbo].[Information] ([userID], [name], [email], [address], [phoneNumber]) VALUES (1, N'Nguyen The Cong', N'cong@gmail.com', N'HaNoi', N'0135834562')
INSERT [dbo].[Information] ([userID], [name], [email], [address], [phoneNumber]) VALUES (2, N'Nguyen Ba Tan', N'adfasd@gmail.com', N'HaNoi', N'3425436564')
INSERT [dbo].[Information] ([userID], [name], [email], [address], [phoneNumber]) VALUES (3, N'Trong', N'vinhtrong97@gmail.co', N'FPT Software, Khu CN', N'327547926')
INSERT [dbo].[Information] ([userID], [name], [email], [address], [phoneNumber]) VALUES (4, N'Trong', N'vinhtrong97@gmail.co', N'FPT Software, Khu CN', N'327547926')
SET IDENTITY_INSERT [dbo].[Information] OFF
/****** Object:  Table [dbo].[Shop]    Script Date: 03/27/2019 11:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop](
	[shopID] [int] IDENTITY(1,1) NOT NULL,
	[shopname] [nvarchar](100) NOT NULL,
	[shopImageURL] [nvarchar](400) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[shopID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Shop] ON
INSERT [dbo].[Shop] ([shopID], [shopname], [shopImageURL]) VALUES (1, N'QTShop', N'')
SET IDENTITY_INSERT [dbo].[Shop] OFF
/****** Object:  StoredProcedure [dbo].[searchByName]    Script Date: 03/27/2019 11:17:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[searchByName]
@u int,
@v INT,
@w nvarchar(100)
as
begin
 SELECT * FROM ( 
  SELECT *, ROW_NUMBER() OVER (ORDER BY a.productID ASC) as row 
  FROM dbo.Product a
  WHERE a.name LIKE '%'+@w+'%'
 ) a WHERE a.row >= @u and a.row <= @v
END
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 03/27/2019 11:17:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[invoiceID] [int] IDENTITY(1,1) NOT NULL,
	[orderTIme] [date] NOT NULL,
	[userID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[invoiceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Invoice] ON
INSERT [dbo].[Invoice] ([invoiceID], [orderTIme], [userID]) VALUES (1, CAST(0x753F0B00 AS Date), 1)
INSERT [dbo].[Invoice] ([invoiceID], [orderTIme], [userID]) VALUES (2, CAST(0x753F0B00 AS Date), 2)
INSERT [dbo].[Invoice] ([invoiceID], [orderTIme], [userID]) VALUES (3, CAST(0x783F0B00 AS Date), 3)
INSERT [dbo].[Invoice] ([invoiceID], [orderTIme], [userID]) VALUES (4, CAST(0x783F0B00 AS Date), 4)
SET IDENTITY_INSERT [dbo].[Invoice] OFF
/****** Object:  StoredProcedure [dbo].[GetProductPaging]    Script Date: 03/27/2019 11:17:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetProductPaging]
@u int,
@v int
as
begin
 SELECT * FROM ( 
  SELECT *, ROW_NUMBER() OVER (ORDER BY a.productID ASC) as row 
  FROM dbo.Product a
 ) a WHERE a.row >= @u and a.row <= @v
END
GO
/****** Object:  StoredProcedure [dbo].[GetPhonePaging]    Script Date: 03/27/2019 11:17:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetPhonePaging]
@u int,
@v int
as
begin
 SELECT * FROM ( 
  SELECT *, ROW_NUMBER() OVER (ORDER BY a.productID ASC) as row 
  FROM dbo.Product a
  WHERE a.productType='SmartPhone'
 ) a WHERE a.row >= @u and a.row <= @v
END
GO
/****** Object:  StoredProcedure [dbo].[GetLapTopPaging]    Script Date: 03/27/2019 11:17:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetLapTopPaging]
@u int,
@v int
as
begin
 SELECT * FROM ( 
  SELECT *, ROW_NUMBER() OVER (ORDER BY a.productID ASC) as row 
  FROM dbo.Product a
  WHERE a.productType='Laptop'
 ) a WHERE a.row >= @u and a.row <= @v
END
GO
/****** Object:  Table [dbo].[InvoiceLine]    Script Date: 03/27/2019 11:17:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceLine](
	[invoiceID] [int] NOT NULL,
	[productID] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[unitPrice] [float] NOT NULL,
	[Note] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[invoiceID] ASC,
	[productID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[InvoiceLine] ([invoiceID], [productID], [quantity], [unitPrice], [Note]) VALUES (1, 2, 10, 1000, N'This tutorial series demonstrates basic aspects of using model ')
INSERT [dbo].[InvoiceLine] ([invoiceID], [productID], [quantity], [unitPrice], [Note]) VALUES (1, 4, 10, 1000, N'This tutorial series demonstrates basic aspects of using model ')
INSERT [dbo].[InvoiceLine] ([invoiceID], [productID], [quantity], [unitPrice], [Note]) VALUES (2, 2, 10, 1000, N'This tutorial series demonstrates basic aspects of using model ')
INSERT [dbo].[InvoiceLine] ([invoiceID], [productID], [quantity], [unitPrice], [Note]) VALUES (2, 4, 10, 1000, N'This tutorial series demonstrates basic aspects of using model ')
INSERT [dbo].[InvoiceLine] ([invoiceID], [productID], [quantity], [unitPrice], [Note]) VALUES (3, 2, 1, 200, N'Note')
INSERT [dbo].[InvoiceLine] ([invoiceID], [productID], [quantity], [unitPrice], [Note]) VALUES (3, 3, 1, 3456, N'Note')
INSERT [dbo].[InvoiceLine] ([invoiceID], [productID], [quantity], [unitPrice], [Note]) VALUES (3, 4, 1, 1542, N'Note')
INSERT [dbo].[InvoiceLine] ([invoiceID], [productID], [quantity], [unitPrice], [Note]) VALUES (4, 2, 1, 200, N'Note')
INSERT [dbo].[InvoiceLine] ([invoiceID], [productID], [quantity], [unitPrice], [Note]) VALUES (4, 3, 1, 3456, N'Note')
INSERT [dbo].[InvoiceLine] ([invoiceID], [productID], [quantity], [unitPrice], [Note]) VALUES (4, 4, 1, 1542, N'Note')
/****** Object:  ForeignKey [FK__Invoice__userID__108B795B]    Script Date: 03/27/2019 11:17:24 ******/
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[Information] ([userID])
GO
/****** Object:  ForeignKey [FK__Invoice__userID__1ED998B2]    Script Date: 03/27/2019 11:17:24 ******/
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[Information] ([userID])
GO
/****** Object:  ForeignKey [fk_profil_receiver_id]    Script Date: 03/27/2019 11:17:24 ******/
ALTER TABLE [dbo].[InvoiceLine]  WITH CHECK ADD  CONSTRAINT [fk_profil_receiver_id] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[InvoiceLine] CHECK CONSTRAINT [fk_profil_receiver_id]
GO
/****** Object:  ForeignKey [fk_profile_sender_id]    Script Date: 03/27/2019 11:17:24 ******/
ALTER TABLE [dbo].[InvoiceLine]  WITH CHECK ADD  CONSTRAINT [fk_profile_sender_id] FOREIGN KEY([invoiceID])
REFERENCES [dbo].[Invoice] ([invoiceID])
GO
ALTER TABLE [dbo].[InvoiceLine] CHECK CONSTRAINT [fk_profile_sender_id]
GO
