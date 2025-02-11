CREATE DATABASE [DemoLRA_Cmt]

USE [DemoLRA_Cmt]
GO
/****** Object:  Table [dbo].[CommentType]    Script Date: 06/07/2015 18:10:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CommentType] ON
INSERT [dbo].[CommentType] ([Id], [Name]) VALUES (1, N'Pros')
INSERT [dbo].[CommentType] ([Id], [Name]) VALUES (2, N'Cons')
INSERT [dbo].[CommentType] ([Id], [Name]) VALUES (3, N'Neutral')
INSERT [dbo].[CommentType] ([Id], [Name]) VALUES (4, N'Unidentified')
SET IDENTITY_INSERT [dbo].[CommentType] OFF
/****** Object:  Table [dbo].[CommentNew]    Script Date: 06/07/2015 18:10:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentNew](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[CmtTypeId] [int] NULL,
	[ProductId] [int] NULL,
	[IsApproved] [bit] NULL,
	[CmtDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 06/07/2015 18:10:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brand] ON
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (1, N'Apple')
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (2, N'Asus')
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (3, N'Samsung')
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (4, N'Lenovo')
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (5, N'Toshiba')
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (6, N'HP')
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (7, N'MSI')
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (8, N'Maingear')
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (9, N'Acer')
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (10, N'Dell')
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (11, N'Sony')
INSERT [dbo].[Brand] ([Id], [Name]) VALUES (12, N'Another')
SET IDENTITY_INSERT [dbo].[Brand] OFF
/****** Object:  Table [dbo].[WordType]    Script Date: 06/07/2015 18:10:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WordType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[WordType] ON
INSERT [dbo].[WordType] ([Id], [Name]) VALUES (1, N'Pros')
INSERT [dbo].[WordType] ([Id], [Name]) VALUES (2, N'Cons')
INSERT [dbo].[WordType] ([Id], [Name]) VALUES (3, N'Neutral')
INSERT [dbo].[WordType] ([Id], [Name]) VALUES (4, N'Negative')
INSERT [dbo].[WordType] ([Id], [Name]) VALUES (5, N'Totally Pros')
SET IDENTITY_INSERT [dbo].[WordType] OFF
/****** Object:  Table [dbo].[WordClass]    Script Date: 06/07/2015 18:10:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WordClass](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[WordClass] ON
INSERT [dbo].[WordClass] ([Id], [Name]) VALUES (1, N'Adj.')
INSERT [dbo].[WordClass] ([Id], [Name]) VALUES (2, N'Adv.')
INSERT [dbo].[WordClass] ([Id], [Name]) VALUES (3, N'Verb')
INSERT [dbo].[WordClass] ([Id], [Name]) VALUES (4, N'Noun')
INSERT [dbo].[WordClass] ([Id], [Name]) VALUES (5, N'Other')
SET IDENTITY_INSERT [dbo].[WordClass] OFF
/****** Object:  Table [dbo].[Source]    Script Date: 06/07/2015 18:10:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Source](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Source] ON
INSERT [dbo].[Source] ([Id], [Url], [IsActive]) VALUES (1, N'http://www.engadget.com', 1)
INSERT [dbo].[Source] ([Id], [Url], [IsActive]) VALUES (2, N'http://reviews.bestbuy.com/', 1)
SET IDENTITY_INSERT [dbo].[Source] OFF
/****** Object:  Table [dbo].[Product]    Script Date: 06/07/2015 18:10:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [float] NULL,
	[Url] [nvarchar](max) NULL,
	[BrandId] [int] NULL,
	[SourceId] [int] NULL,
	[IsMain] [bit] NOT NULL,
	[GeneralId] [int] NULL,
	[IsApproved] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK__Product__3214EC077F60ED59] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (1, N'MacBook Pro 15-inch with Retina Display (late 2013)', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Midsize</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>15 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>2880 x 1800</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Mac OS (Mavericks [10.9])</span>
                  </li>
              <li>
          <label>CPU family</label>
                      <span>Core i7</span>
                  </li>
              <li>
          <label>Processor speed</label>
                      <span>2 GHz</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>8 GB</span>
                  </li>
              <li>
          <label>Hard drive(s)</label>
                      <span>256 GB&#160;(total)<br>SSD</span>
                  </li>
              <li>
          <label>Maximum battery life</label>
                      <span>Up to 8 hours</span>
                  </li>
              <li>
          <label>Released</label>
                      <span>October 22, 2013</span>
                  </li>
          </ul>', 1849, N'http://www.engadget.com/products/apple/macbook-pro/15-inch-with-retina-display/late-2013/', 1, 1, 1, 1, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (2, N'MacBook Pro 13-inch with Retina Display (late 2013)', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Midsize</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>13 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>2560 x 1600</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Mac OS (Mavericks [10.9])</span>
                  </li>
              <li>
          <label>Processor speed</label>
                      <span>2.4 GHz</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>4 GB</span>
                  </li>
              <li>
          <label>Maximum battery life</label>
                      <span>Up to 9 hours</span>
                  </li>
              <li>
          <label>Dimensions</label>
                      <span>0.71 x 12.35 x 8.62 in</span>
                  </li>
              <li>
          <label>Weight</label>
                      <span>3.46 lb</span>
                  </li>
              <li>
          <label>Announced</label>
                      <span>October 22, 2013</span>
                  </li>
          </ul>', 949, N'http://www.engadget.com/products/apple/macbook-pro/13-inch-with-retina-display/late-2013/', 1, 1, 1, 2, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (3, N'XPS 13 (2015)', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Midsize</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>13 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>3200 x 1800</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Windows</span>
                  </li>
              <li>
          <label>Pointing device</label>
                      <span>Trackpad</span>
                  </li>
              <li>
          <label>Video outputs</label>
                      <span>DisplayPort</span>
                  </li>
              <li>
          <label>Announced</label>
                      <span>January 6, 2015</span>
                  </li>
          </ul>', 899, N'http://www.engadget.com/products/dell/xps/13/2015/', 10, 1, 1, 3, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (4, N'MacBook Pro 13-inch (early 2015)', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Midsize</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>13.3 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>2560 x 1600</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Mac OS (Yosemite [10.10])</span>
                  </li>
              <li>
          <label>Processor speed</label>
                      <span>2.7 GHz</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>8 GB</span>
                  </li>
              <li>
          <label>Maximum battery life</label>
                      <span>Up to 12 hours</span>
                  </li>
              <li>
          <label>Dimensions</label>
                      <span>0.71 x 12.35 x 8.62 in</span>
                  </li>
              <li>
          <label>Weight</label>
                      <span>3.48 lb</span>
                  </li>
              <li>
          <label>Released</label>
                      <span>March 9, 2015</span>
                  </li>
          </ul>', NULL, N'http://www.engadget.com/products/apple/macbook/pro/13-inch-early-2015/', 1, 1, 1, 4, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (5, N'MacBook Air 13-inch (mid 2013)', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Ultraportable</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>13.3 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>1440 x 900</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Mac OS (Mavericks [10.9])</span>
                  </li>
              <li>
          <label>Processor speed</label>
                      <span>1.3 GHz</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>4 GB</span>
                  </li>
              <li>
          <label>Maximum battery life</label>
                      <span>Up to 12 hours</span>
                  </li>
              <li>
          <label>Dimensions</label>
                      <span>0.68 x 12.8 x 8.94 in</span>
                  </li>
              <li>
          <label>Weight</label>
                      <span>2.96 lb</span>
                  </li>
              <li>
          <label>Released</label>
                      <span>June 10, 2013</span>
                  </li>
          </ul>', NULL, N'http://www.engadget.com/products/apple/macbook/air/13-inch/mid-2013/', 1, 1, 1, 5, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (6, N'MacBook Pro 15-inch with Retina display (mid 2012)', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Midsize</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>15.4 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>2880 x 1800</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Mac OS (Lion [10.7])</span>
                  </li>
              <li>
          <label>Processor speed</label>
                      <span>2.3 GHz</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>8 GB</span>
                  </li>
              <li>
          <label>Maximum battery life</label>
                      <span>Up to 7 hours</span>
                  </li>
              <li>
          <label>Dimensions</label>
                      <span>0.71 x 14.13 x 9.73 in</span>
                  </li>
              <li>
          <label>Weight</label>
                      <span>4.46 lb</span>
                  </li>
              <li>
          <label>Released</label>
                      <span>June 11, 2012</span>
                  </li>
          </ul>', NULL, N'http://www.engadget.com/products/apple/macbook-pro/15-inch-with-retina-display/mid-2012/', 1, 1, 1, 6, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (7, N'Zenbook UX31', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Ultraportable</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>13.3 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>1600 x 900</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Windows (7)</span>
                  </li>
              <li>
          <label>CPU family</label>
                      <span>Core i5</span>
                  </li>
              <li>
          <label>Processor speed</label>
                      <span>1.7 GHz</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>4 GB</span>
                  </li>
              <li>
          <label>Dimensions</label>
                      <span>0.12 x 12.8 x 8.78 in</span>
                  </li>
              <li>
          <label>Weight</label>
                      <span>2.9 lb</span>
                  </li>
              <li>
          <label>Released</label>
                      <span>October 12, 2011</span>
                  </li>
          </ul>', NULL, N'http://www.engadget.com/products/asus/zenbook/ux31/', 2, 1, 1, 7, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (8, N'Spectre x360', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Ultraportable</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>13.3 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>1920 x 1080</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Windows (8)</span>
                  </li>
              <li>
          <label>CPU family</label>
                      <span>Core i5</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>4 GB</span>
                  </li>
              <li>
          <label>Hard drive(s)</label>
                      <span>SSD (128 GB)</span>
                  </li>
              <li>
          <label>Maximum battery life</label>
                      <span>Up to 12.5 hours</span>
                  </li>
              <li>
          <label>Weight</label>
                      <span>3.26 lb</span>
                  </li>
              <li>
          <label>Announced</label>
                      <span>March 1, 2015</span>
                  </li>
          </ul>', 1149, N'http://www.engadget.com/products/hp/spectre/x360/', 6, 1, 1, 8, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (9, N'MacBook Air 11-inch (mid 2013)', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Ultraportable</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>11.6 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>1366 x 768</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Mac OS (Mountain Lion [10.8])</span>
                  </li>
              <li>
          <label>Processor speed</label>
                      <span>1.3 GHz</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>4 GB</span>
                  </li>
              <li>
          <label>Maximum battery life</label>
                      <span>Up to 9 hours</span>
                  </li>
              <li>
          <label>Dimensions</label>
                      <span>0.68 x 11.8 x 7.56 in</span>
                  </li>
              <li>
          <label>Weight</label>
                      <span>2.38 lb</span>
                  </li>
              <li>
          <label>Released</label>
                      <span>June 10, 2013</span>
                  </li>
          </ul>', 1399, N'http://www.engadget.com/products/apple/macbook/air/11-inch/mid-2013/', 1, 1, 1, 9, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (10, N'Aspire S7-392', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Ultraportable</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>13.3 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>1920 x 1080</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Windows (8)</span>
                  </li>
              <li>
          <label>CPU family</label>
                      <span>Core i5</span>
                  </li>
              <li>
          <label>Processor speed</label>
                      <span>1.6 GHz</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>8 GB</span>
                  </li>
              <li>
          <label>Maximum battery life</label>
                      <span>Up to 7 hours</span>
                  </li>
              <li>
          <label>Weight</label>
                      <span>2.87 lb</span>
                  </li>
              <li>
          <label>Released</label>
                      <span>July, 2013</span>
                  </li>
          </ul>', 1099, N'http://www.engadget.com/products/acer/aspire/s7-392/', 9, 1, 1, 10, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (11, N'mini NB205', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Netbook</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>10.1 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>1024 x 600</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Windows (XP)</span>
                  </li>
              <li>
          <label>Processor speed</label>
                      <span>1.66 GHz</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>1 GB</span>
                  </li>
              <li>
          <label>Maximum battery life</label>
                      <span>Up to 9 hours</span>
                  </li>
              <li>
          <label>Dimensions</label>
                      <span>1.3 x 10.4 x 7.6 in</span>
                  </li>
              <li>
          <label>Weight</label>
                      <span>2.9 lb</span>
                  </li>
              <li>
          <label>Announced</label>
                      <span>June 1, 2009</span>
                  </li>
          </ul>', NULL, N'http://www.engadget.com/products/toshiba/mini/nb205/', 5, 1, 1, 11, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (12, N'Blade 4th-gen', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Gaming</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>14 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>3200 x 1800</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Windows (8)</span>
                  </li>
              <li>
          <label>CPU family</label>
                      <span>Core i7</span>
                  </li>
              <li>
          <label>Processor speed</label>
                      <span>2.2 GHz</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>8 GB</span>
                  </li>
              <li>
          <label>Hard drive(s)</label>
                      <span>256 GB&#160;(total)<br>SSD</span>
                  </li>
              <li>
          <label>Pointing device</label>
                      <span>Trackpad (Multi-touch)</span>
                  </li>
              <li>
          <label>Announced</label>
                      <span>March 12, 2014</span>
                  </li>
          </ul>', 1499, N'http://www.engadget.com/products/razer/blade/4th-gen/', 12, 1, 1, 12, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (13, N'M17x', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Gaming</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>17 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>1920 x 1080</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Windows (7)</span>
                  </li>
              <li>
          <label>CPU family</label>
                      <span>Core i7</span>
                  </li>
              <li>
          <label>Processor speed</label>
                      <span>2.2</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>8 GB</span>
                  </li>
              <li>
          <label>Hard drive(s)</label>
                      <span>1 TB&#160;(total)<br>SSD, Platter</span>
                  </li>
              <li>
          <label>Pointing device</label>
                      <span>Trackpad (Multi-touch)</span>
                  </li>
              <li>
          <label>Video outputs</label>
                      <span>DisplayPort, HDMI, VGA</span>
                  </li>
          </ul>', 2399, N'http://www.engadget.com/products/alienware/m17x/', 12, 1, 1, 13, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (14, N'VAIO Z Series', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Ultraportable</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>13.1 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>1920 x 1080</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Windows (7)</span>
                  </li>
              <li>
          <label>CPU family</label>
                      <span>Core i7</span>
                  </li>
              <li>
          <label>Processor speed</label>
                      <span>2.8 GHz</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>8 GB</span>
                  </li>
              <li>
          <label>Maximum battery life</label>
                      <span>Up to 7 hours</span>
                  </li>
              <li>
          <label>Dimensions</label>
                      <span>1.3 x 12.4 x 8.3 in</span>
                  </li>
              <li>
          <label>Weight</label>
                      <span>3.04 lb</span>
                  </li>
          </ul>', NULL, N'http://www.engadget.com/products/sony/vaio/z/series/', 11, 1, 1, 14, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (15, N'Blade 3rd-gen', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Gaming</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>14 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>1600 x 900</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Windows</span>
                  </li>
              <li>
          <label>CPU family</label>
                      <span>Core i7</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>8 GB</span>
                  </li>
              <li>
          <label>Maximum battery life</label>
                      <span>Up to 6 hours</span>
                  </li>
              <li>
          <label>Dimensions</label>
                      <span>0.66 x 13.6 x 9.3 in</span>
                  </li>
              <li>
          <label>Weight</label>
                      <span>4.14 lb</span>
                  </li>
              <li>
          <label>Announced</label>
                      <span>May 30, 2013</span>
                  </li>
          </ul>', NULL, N'http://www.engadget.com/products/razer/blade/3rd-gen/', 12, 1, 1, 15, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (16, N'GT72 Dominator', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Gaming</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>17 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>1920 x 1080</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Windows</span>
                  </li>
              <li>
          <label>Pointing device</label>
                      <span>Trackpad</span>
                  </li>
              <li>
          <label>Video outputs</label>
                      <span>DisplayPort (Mini connector), HDMI</span>
                  </li>
              <li>
          <label>Announced</label>
                      <span>July 10, 2014</span>
                  </li>
          </ul>', NULL, N'http://www.engadget.com/products/msi/gt72/dominator/', 7, 1, 1, 16, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (17, N'ROG G751', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Gaming</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>17.3 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>1920 x 1080</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Windows (8.1)</span>
                  </li>
              <li>
          <label>CPU family</label>
                      <span>Core i7</span>
                  </li>
              <li>
          <label>Processor speed</label>
                      <span>2.5 GHz</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>24 GB</span>
                  </li>
              <li>
          <label>Hard drive(s)</label>
                      <span>1.26 TB&#160;(total)<br>SSD,...</span>
                  </li>
              <li>
          <label>Dimensions</label>
                      <span>1.7 x 16.4 x 12.5 in</span>
                  </li>
              <li>
          <label>Weight</label>
                      <span>8.4 lb</span>
                  </li>
          </ul>', 2499, N'http://www.engadget.com/products/asus/rog/g751/', 2, 1, 1, 17, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (18, N'MacBook Air 13-inch (mid 2012)', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Ultraportable</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>13.3 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>1440 x 900</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Mac OS (Lion [10.7])</span>
                  </li>
              <li>
          <label>Processor speed</label>
                      <span>1.8 GHz</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>4 GB</span>
                  </li>
              <li>
          <label>Maximum battery life</label>
                      <span>Up to 7 hours</span>
                  </li>
              <li>
          <label>Dimensions</label>
                      <span>0.68 x 12.8 x 8.94 in</span>
                  </li>
              <li>
          <label>Weight</label>
                      <span>2.96 lb</span>
                  </li>
              <li>
          <label>Released</label>
                      <span>June 11, 2012</span>
                  </li>
          </ul>', NULL, N'http://www.engadget.com/products/apple/macbook/air/13-inch/mid-2012/', 1, 1, 1, 18, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (19, N'MacBook Pro 15-inch (mid 2012)', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Midsize</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>15.4 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>1440 x 900</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Mac OS (Lion [10.7])</span>
                  </li>
              <li>
          <label>Processor speed</label>
                      <span>2.3 GHz</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>4 GB</span>
                  </li>
              <li>
          <label>Maximum battery life</label>
                      <span>Up to 7 hours</span>
                  </li>
              <li>
          <label>Dimensions</label>
                      <span>0.95 x 14.35 x 9.82 in</span>
                  </li>
              <li>
          <label>Weight</label>
                      <span>5.6 lb</span>
                  </li>
              <li>
          <label>Released</label>
                      <span>June 11, 2012</span>
                  </li>
          </ul>', NULL, N'http://www.engadget.com/products/apple/macbook-pro/15-inch/mid-2012/', 1, 1, 1, 19, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (20, N'Series 9 NP900X1A', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Ultraportable</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>11.6 inches</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Windows (7)</span>
                  </li>
              <li>
          <label>CPU family</label>
                      <span>Core i3</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>2 GB</span>
                  </li>
              <li>
          <label>Hard drive(s)</label>
                      <span>64 GB&#160;(total)<br>SSD</span>
                  </li>
              <li>
          <label>Pointing device</label>
                      <span>Trackpad (Multi-touch)</span>
                  </li>
              <li>
          <label>Dimensions</label>
                      <span>11.7 x 7.8 x 0.62 in</span>
                  </li>
              <li>
          <label>Weight</label>
                      <span>2.31 lb</span>
                  </li>
              <li>
          <label>Released</label>
                      <span>March 27, 2011</span>
                  </li>
          </ul>', NULL, N'http://www.engadget.com/products/samsung/series-9/np900x1a/', 3, 1, 1, 20, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (21, N'ThinkPad X200t', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Tablet</span>
                  </li>
              <li>
          <label>Form factor</label>
                      <span>Convertible</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Windows</span>
                  </li>
              <li>
          <label>CPU family</label>
                      <span>Core2 Duo (mobile)</span>
                  </li>
          </ul>', NULL, N'http://www.engadget.com/products/lenovo/thinkpad/x200t/', 4, 1, 1, 21, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (22, N'Portege R830', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Midsize</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>13.3 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>1366 x 768</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Windows (7)</span>
                  </li>
              <li>
          <label>Processor speed</label>
                      <span>2.5 GHz</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>6 GB</span>
                  </li>
              <li>
          <label>Maximum battery life</label>
                      <span>Up to 9 hours</span>
                  </li>
              <li>
          <label>Dimensions</label>
                      <span>1.05 x 12.44 x 8.94 in</span>
                  </li>
              <li>
          <label>Weight</label>
                      <span>3.2 lb</span>
                  </li>
              <li>
          <label>Released</label>
                      <span>March 20, 2012</span>
                  </li>
          </ul>', 1465, N'http://www.engadget.com/products/toshiba/portege/r830/', 5, 1, 1, 22, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (23, N'Folio 13 1000', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Ultraportable</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>13.3 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>1366 x 768</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Windows (7)</span>
                  </li>
              <li>
          <label>Processor speed</label>
                      <span>1.6 GHz</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>4 GB</span>
                  </li>
              <li>
          <label>Maximum battery life</label>
                      <span>Up to 9 hours</span>
                  </li>
              <li>
          <label>Dimensions</label>
                      <span>0.7 x 12.54 x 8.67 in</span>
                  </li>
              <li>
          <label>Weight</label>
                      <span>3.3 lb</span>
                  </li>
              <li>
          <label>Released</label>
                      <span>December 7, 2011</span>
                  </li>
          </ul>', NULL, N'http://www.engadget.com/products/hp/folio/13/1000/', 6, 1, 1, 23, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (24, N'Qosmio X870', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Gaming</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>17.3 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>1920 x 1080</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Windows (7)</span>
                  </li>
              <li>
          <label>Pointing device</label>
                      <span>Trackpad (Multi-touch)</span>
                  </li>
              <li>
          <label>Video outputs</label>
                      <span>HDMI, VGA</span>
                  </li>
              <li>
          <label>Announced</label>
                      <span>March 7, 2012</span>
                  </li>
          </ul>', NULL, N'http://www.engadget.com/products/toshiba/qosmio/x870/', 5, 1, 1, 24, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (25, N'Yoga 3 Pro', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Tablet</span>
                  </li>
              <li>
          <label>Form factor</label>
                      <span>Convertible</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>3200 x 1800</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Windows (8.1)</span>
                  </li>
              <li>
          <label>CPU family</label>
                      <span>Other</span>
                  </li>
              <li>
          <label>Processor speed</label>
                      <span>1.1 GHz</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>8 GB</span>
                  </li>
              <li>
          <label>Hard drive(s)</label>
                      <span>512 GB&#160;(total)<br>SSD</span>
                  </li>
              <li>
          <label>Pointing device</label>
                      <span>Trackpad</span>
                  </li>
              <li>
          <label>Announced</label>
                      <span>October 9, 2014</span>
                  </li>
          </ul>', 948, N'http://www.engadget.com/products/lenovo/yoga/3-pro/', 4, 1, 1, 25, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (26, N'MacBook Air 13-inch (mid 2014)', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Ultraportable</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>13 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>1440 x 900</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Mac OS (Mavericks [10.9])</span>
                  </li>
              <li>
          <label>Processor speed</label>
                      <span>1.4 GHz</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>4 GB</span>
                  </li>
              <li>
          <label>Maximum battery life</label>
                      <span>Up to 12 hours</span>
                  </li>
              <li>
          <label>Dimensions</label>
                      <span>0.68 x 12.8 x 8.94 in</span>
                  </li>
              <li>
          <label>Weight</label>
                      <span>2.96 lb</span>
                  </li>
              <li>
          <label>Released</label>
                      <span>April 29, 2014</span>
                  </li>
          </ul>', 1058, N'http://www.engadget.com/products/apple/macbook/air/13-inch-mid-2014/', 1, 1, 1, 26, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (27, N'Pulse 17', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Gaming</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>17.3 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>1920 x 1080</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Windows (8)</span>
                  </li>
              <li>
          <label>CPU family</label>
                      <span>Core i7</span>
                  </li>
              <li>
          <label>Processor speed</label>
                      <span>2.4 GHz</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>16 GB</span>
                  </li>
              <li>
          <label>Hard drive(s)</label>
                      <span>1 TB&#160;(total)<br>Platter</span>
                  </li>
              <li>
          <label>Dimensions</label>
                      <span>0.85 x 16.47 x 11.29 in</span>
                  </li>
              <li>
          <label>Released</label>
                      <span>November 4, 2013</span>
                  </li>
          </ul>', NULL, N'http://www.engadget.com/products/maingear/pulse/17/', 8, 1, 1, 27, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (28, N'ATIV Book 9 Plus', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Ultraportable</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>13.3 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>3200 x 1800</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Windows (8)</span>
                  </li>
              <li>
          <label>Processor speed</label>
                      <span>1.6 GHz</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>4 GB</span>
                  </li>
              <li>
          <label>Maximum battery life</label>
                      <span>Up to 12 hours</span>
                  </li>
              <li>
          <label>Dimensions</label>
                      <span>0.5 x 12.5 x 8.7 in</span>
                  </li>
              <li>
          <label>Weight</label>
                      <span>2.56 lb</span>
                  </li>
              <li>
          <label>Released</label>
                      <span>August 20, 2013</span>
                  </li>
          </ul>', 1034, N'http://www.engadget.com/products/samsung/ativ/book-9/plus/', 3, 1, 1, 28, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (29, N'Series 7 Chronos (2013) (770Z5E)', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Midsize</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>15.6 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>1920 x 1080</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Windows (8)</span>
                  </li>
              <li>
          <label>CPU family</label>
                      <span>Core i7</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>4 GB</span>
                  </li>
              <li>
          <label>Maximum battery life</label>
                      <span>Up to 11 hours</span>
                  </li>
              <li>
          <label>Dimensions</label>
                      <span>0.82 x 14.8 x 9.84 in</span>
                  </li>
              <li>
          <label>Weight</label>
                      <span>5.18 lb</span>
                  </li>
              <li>
          <label>Released</label>
                      <span>February, 2013</span>
                  </li>
          </ul>', NULL, N'http://www.engadget.com/products/samsung/series-7/chronos/2013/', 3, 1, 1, 29, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (30, N'GT60', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Gaming</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>15.6 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>1920 x 1080</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Windows (8)</span>
                  </li>
              <li>
          <label>Pointing device</label>
                      <span>Trackpad</span>
                  </li>
              <li>
          <label>Video outputs</label>
                      <span>HDMI, VGA</span>
                  </li>
              <li>
          <label>Dimensions</label>
                      <span>1.77 x 10.24 x 14.97 in</span>
                  </li>
              <li>
          <label>Weight</label>
                      <span>7.72 lb</span>
                  </li>
              <li>
          <label>Announced</label>
                      <span>March 6, 2012</span>
                  </li>
          </ul>', NULL, N'http://www.engadget.com/products/msi/gt60/', 7, 1, 1, 30, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (31, N'ThinkPad T530', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Midsize</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>15 inches</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Windows</span>
                  </li>
              <li>
          <label>Pointing device</label>
                      <span>Trackpad, Pointing stick</span>
                  </li>
              <li>
          <label>Announced</label>
                      <span>May 15, 2012</span>
                  </li>
          </ul>', NULL, N'http://www.engadget.com/products/lenovo/thinkpad/t530/', 4, 1, 1, 31, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (32, N'Apple - MacBook Air (Latest Model) - 11.6'' Display - Intel Core i5 - 4GB Memory - 256GB Flash Storage - Silver', N'MacBook Air features fourth-generation Intel Core processors with stunning graphics, all-day battery life*, ultrafast flash storage, and great built-in apps. It''s thin, light and durable enough to take everywhere you go — and powerful enough to do everything once you get there.', NULL, N'http://reviews.bestbuy.com/3545/1581803/apple-macbook-air-latest-model-11-6-display-intel-core-i5-4gb-memory-256gb-flash-storage-silver-reviews/reviews.htm', 1, 2, 1, 32, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (33, N'MSI - Stealth-280 17.3'' Laptop - Intel Core i7 - 16GB Memory - 1TB Hard Drive + 128GB Solid State Drive - Black', N'Take your gaming to another level with this MSI GS70 Stealth-280 GS70STEALTH-280 laptop, which features Matrix display technology, so you can connect to up to 4 external displays (not included) for extreme gaming. Sound Blaster Cinema provides quality audio. Learn more about the New Windows', NULL, N'http://reviews.bestbuy.com/3545/3472309/msi-stealth-280-17-3-laptop-intel-core-i7-16gb-memory-1tb-hard-drive-128gb-solid-state-drive-black-reviews/reviews.htm', 7, 2, 1, 33, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (34, N'Dell - Inspiron 17.3'' Laptop - Intel Core i5 - 8GB Memory - 1TB Hard Drive - Silver', N'This Dell Inspiron I57491322SLV laptop features a 1TB hard drive for plenty of space to store personal files, music and more, and 8GB of memory for smooth performance. Bluetooth 4.0 technology links easily with other Bluetooth-enabled devices.', NULL, N'http://reviews.bestbuy.com/3545/3343805/dell-inspiron-17-3-laptop-intel-core-i5-8gb-memory-1tb-hard-drive-silver-reviews/reviews.htm', 10, 2, 1, 34, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (35, N'HP - Business Notebook 6910p 14.1'' Notebook - Intel Core 2 Duo T7300 Dual-core (2 Core) 2 GHz - Silver', N'Refurbished HP Compaq 6910p installed with Windows 7 Home Premium. Intel Core 2 Duo 2.0GHZ with 2GB DDR2 RAM. Laptop comes with an 80GB hard drive and DVD+CDRW drive. It includes a 14.1&quot; WXGA display, AC Adapter, Charger, and battery. The 6910p also includes 802/11g wireless WiFi, SD Card Slot reader, Three USB ports, VGA out, S-Video out, speaker and headphone, PCMCIA slot, firewire, and 10/100/1000 ethernet.', NULL, N'http://reviews.bestbuy.com/3545/1308916178/hp-business-notebook-6910p-14-1-notebook-intel-core-2-duo-t7300-dual-core-2-core-2-ghz-silver-reviews/reviews.htm', 6, 2, 1, 35, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (36, N'HP - Pavilion 17.3'' Laptop - Intel Pentium - 4GB Memory - 750GB Hard Drive - Natural Silver', N'This HP Pavilion 17-f230nr laptop''s Bluetooth interface allows pairing with select devices. An Intel® Pentium® processor elevates multitasking capabilities, boosts productivity and enhances your entertainment and Internet browsing experiences. Learn more about the New Windows', NULL, N'http://reviews.bestbuy.com/3545/2848045/hp-pavilion-17-3-laptop-intel-pentium-4gb-memory-750gb-hard-drive-natural-silver-reviews/reviews.htm', 6, 2, 1, 36, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (37, N'Dell - Inspiron 2-in-1 13.3'' Touch-Screen Laptop - Intel Core i5 - 8GB Memory - 500GB Hard Drive - Silver', N'Boost your on-the-go productivity with this Dell Inspiron I73477550SLV 2-in-1 laptop, which features built-in Wi-Fi for easy wireless Web access. The 13.3&quot; touch screen with IPS technology enables easy operation and showcases media in striking detail. Learn more about the New Windows', NULL, N'http://reviews.bestbuy.com/3545/1312021394/dell-inspiron-2-in-1-13-3-touch-screen-laptop-intel-core-i5-8gb-memory-500gb-hard-drive-silver-reviews/reviews.htm', 10, 2, 1, 37, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (38, N'CybertronPC - Matrix 17.3'' Laptop - Intel Core i7 - 16GB Memory - 1TB Hard Drive - Black/Silver', N'Learn more about the New Windows This CybertronPC Matrix TNB2174A laptop utilizes NVIDIA GeForce GTX 860M graphics with 2GB dedicated video memory to present gaming visuals in sharp clarity on its 17.3&quot; LED-backlit high-definition widescreen display.', NULL, N'http://reviews.bestbuy.com/3545/6947099/cybertronpc-matrix-17-3-laptop-intel-core-i7-16gb-memory-1tb-hard-drive-black-silver-reviews/reviews.htm', 12, 2, 1, 38, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (39, N'Toshiba - 13.3'' Chromebook - Intel Celeron - 2GB Memory - 16GB Solid State Drive - Silver', N'This Toshiba CB35B3330 Chromebook''s 13.3&quot; LED-backlit TFT display offers native support for 720p content to ensure clear media viewing. The Intel® Celeron® processor delivers reliability for everyday mobile computing.', NULL, N'http://reviews.bestbuy.com/3545/1169043/toshiba-13-3-chromebook-intel-celeron-2gb-memory-16gb-solid-state-drive-silver-reviews/reviews.htm', 5, 2, 1, 39, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (40, N'Dell - Inspiron 15.6'' Touch-Screen Laptop - AMD A10-Series - 8GB Memory - 1TB Hard Drive - Silver', N'With a 15.6&quot; high-definition touch screen, this Dell Inspiron I55453750SLV laptop allows you to easily navigate through your favorite applications and watch movies, view photos and complete daily tasks. Bluetooth technology facilitates wireless pairing. Learn more about the New Windows', NULL, N'http://reviews.bestbuy.com/3545/9463453/dell-inspiron-15-6-touch-screen-laptop-amd-a10-series-8gb-memory-1tb-hard-drive-silver-reviews/reviews.htm', 10, 2, 1, 40, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (41, N'Apple - MacBook Pro 13.3'' LED Notebook - Intel Core i5 Dual-core (2 Core) 2.50 GHz - Silver', N'The inside story. And the outside story, too.With its durable unibody enclosure, LED-backlit display, and Multi-Touch trackpad, MacBook Pro looks beautiful. And works beautifully.Strength. Lightness. Beauty. Seamlessly integrated.MacBook Pro is machined from a single piece of aluminum, an engineering breakthrough that replaced many parts with just one. It''s called the unibody. And the first time you pick up a MacBook Pro you''ll notice the difference it makes. The entire enclosure is thinner and lighter than other notebooks. It looks polished and refined. And it feels strong and durable - perfect for life inside (and outside) your briefcase or backpack.', NULL, N'http://reviews.bestbuy.com/3545/1306516066/apple-macbook-pro-13-3-led-notebook-intel-core-i5-dual-core-2-core-2-50-ghz-silver-reviews/reviews.htm', 1, 2, 1, 41, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (42, N'Apple - MacBook Air Core i5-2557M Dual-Core 1.7GHz 4GB 128GB SSD 13.3'' LED Notebook AirPort OS X w/cam &amp; BT - Silver', N'Affordable and stylish Apple MacBook Air! Powered by an Intel Core i5-2557M 1.7 GHz dual-core processor and 4 GB of DDR3 RAM, this Apple MacBook Air delivers fast performance for all your computer applications. The 128 GB SSD (Solid State Drive) provides enough storage for your music, photos and movies. Plus, Mac OS X version 10.7 is pre-installed! With the MC965LL/A, you can watch movies and multi-task on the glossy 13.3-inch widescreen LCD LED backlit display. Get connected via its AirPort Extreme 802.11n Wireless card and Bluetooth 4.0! Transfer pictures, video clips and music files to the MacBook Air using its Secure Digital card reader. The built-in FaceTime camera is perfect for video instant messaging! This Apple MacBook Air MC965LL/A notebook does not have an optical drive, but with two high-speed USB 2.0 ports you can add an external USB DVD drive to load files and watch movies. Headphone jack and Thunderbolt port are also provided. Order today!', NULL, N'http://reviews.bestbuy.com/3545/1307140819/apple-macbook-air-core-i5-2557m-dual-core-1-7ghz-4gb-128gb-ssd-13-3-led-notebook-airport-os-x-w-cam-bt-silver-reviews/reviews.htm', 1, 2, 1, 42, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (43, N'Asus - Republic of Gamers (ROG) - 17.3'' Laptop - 16GB Memory - 1TB Hard Drive + 256GB Solid State Drive - Black', N'Learn more about Windows 8 Store plenty of music, movies, games and other media on this Asus ROG G750JX-DB71 laptop, which features a 1TB hard drive and 256GB solid state drive to accommodate your data. The NVIDIA GeForce GTX 770M dedicated graphics deliver stunning images.', NULL, N'http://reviews.bestbuy.com/3545/1307523117/asus-republic-of-gamers-rog-17-3-laptop-16gb-memory-1tb-hard-drive-256gb-solid-state-drive-black-reviews/reviews.htm', 2, 2, 1, 43, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (44, N'MSI - GE60 Apache 15.6'' Laptop - Intel Core i7 - 8GB Memory - 1TB Hard Drive - Aluminum Black', N'Game on with this MSI GE60 Apache GE60APACHEPRO867 laptop, which offers 2GB of dedicated graphics for smooth video and gaming performance. An HDMI output lets you connect the laptop to your HDTV for an immersive experience. Learn more about the New Windows', NULL, N'http://reviews.bestbuy.com/3545/4880015/msi-ge60-apache-15-6-laptop-intel-core-i7-8gb-memory-1tb-hard-drive-aluminum-black-reviews/reviews.htm', 7, 2, 1, 44, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (45, N'Asus - 11.6'' Chromebook - Intel Celeron - 2GB Memory - 16GB Flash (eMMC) Memory - Black', N'Enjoy on-the-go Web access with this Asus C200MADS01 Chromebook, which features a built-in wireless LAN, so you can surf the Web, stream online content and more. The Intel® Celeron® processor delivers reliability for everyday mobile computing.', NULL, N'http://reviews.bestbuy.com/3545/7513036/asus-11-6-chromebook-intel-celeron-2gb-memory-16gb-flash-emmc-memory-black-reviews/reviews.htm', 2, 2, 1, 45, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (46, N'HP - 15.6'' Laptop - AMD A6-Series - 4GB Memory - 500GB Hard Drive - Pearl White', N'Surf the Web with ease using this HP 15-g274nr 15.6&quot; laptop, which features Wi-Fi networking for wireless connection to the Internet. The 500GB hard drive provides space for you to store your favorite music, photos and other digital files. Learn more about the New Windows', NULL, N'http://reviews.bestbuy.com/3545/2783337/hp-15-6-laptop-amd-a6-series-4gb-memory-500gb-hard-drive-pearl-white-reviews/reviews.htm', 6, 2, 1, 46, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (47, N'Dell - Inspiron 15R 15.6'' Touchscreen LED (TrueLife) Notebook - Intel Core i7 i7-4500U Dual-core (2 Core) 1.80 GHz - Moon Silver', N'Make a stylish impression.A sleek laptop that''s 17% thinner than previous generations. Powered with up to 4th Gen Intel® Core™ processors and Windows 8, featuring a 15.6&quot; display. Available with optional touch screen.', NULL, N'http://reviews.bestbuy.com/3545/1312056150/dell-inspiron-15r-15-6-touchscreen-led-truelife-notebook-intel-core-i7-i7-4500u-dual-core-2-core-1-80-ghz-moon-silver-reviews/reviews.htm', 10, 2, 1, 47, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (48, N'Lenovo - Edge 2-in-1 15.6'' Touch-Screen Laptop - Intel Core i7 - 8GB Memory - 1TB Hard Drive - Black', N'Utilizing NVIDIA GeForce GT 840M graphics with 2GB video memory, this Lenovo Edge 15 - 80K90001US laptop presents visuals in realistic detail on its 15.6&quot; LED-backlit 10-point multitouch display. Learn more about the New Windows', NULL, N'http://reviews.bestbuy.com/3545/2628028/lenovo-edge-2-in-1-15-6-touch-screen-laptop-intel-core-i7-8gb-memory-1tb-hard-drive-black-reviews/reviews.htm', 4, 2, 1, 48, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (49, N'Asus - 15.6'' (In-plane Switching (IPS) Technology) Notebook - Intel Core i7 i7-4720HQ Quad-core (4 Core) 2.60 GHz - Matte Black', N'The All-around DominatorThe ASUS Republic of Gamers (ROG) G Series delivers powerful performance thanks to Intel® Core™ i7 processors and gaming-grade NVIDIA® GTX series graphics. Be immersed in gaming worlds through its Full HD IPS panel with 178-degree viewing angles, complemented by ASUS SonicMaster and ROG AudioWizard enhanced audio. Its efficient thermal management system works silently in the background to give you uninterrupted marathon gaming sessions.G Series- A true force of gaming nature Like its stealth fighter-inspired beginnings, G Series laptops bring an understated design that does much more besides looking cool. The accented iconic red and black colors pay tribute to gaming''s dark-lit LAN party origins in a modern style that prepares you for gaming''s future. Precision-crafted with a brushed aluminum finish The ROG G Series is crafted with bold, modern lines and a brushed aluminum lid. Finished in matte black, the G Series bears a red illuminated ROG logo, reflecting its gaming heritage. Backlit chiclet keyboard with specially marked WASD keys The G Series sports a red-backlit chiclet keyboard with specially marked WASD gaming keys. The keys provide a solid typing feedback for an increased feel. You can adjust the backlight accordingly to suit dimmer gaming environments. Full HD displays for spectacular images The GL551JW features an optional Full HD IPS display with an anti-glare coating that has a 178-degree wide viewing angles on both horizontal and vertical planes. This gives you high definition gaming visuals with stunning detail and accurate colors for a truly immersive gaming experience. 4K/UHD-ready output with Trinity Display The G Series is also 4K/UHD-ready thanks to Trinity Display. The G Series provides 4K/UHD output and supports up to three external displays through HDMI 1.4 and Mini DisplayPort for gaming, movies, or multitasking. Fast, smooth gaming performance and superior visuals Armed with a 4th Gen Intel® Core™ i7 processor and the latest gamer-grade NVIDIA® GTX series graphics, the G Series is hardwired for gaming - giving you smooth, fast performance and superior visuals. The G Series is geared for marathon gaming sessions, with a silent and powerful thermal solution that ensures system stability in the heat of battle.Powerful gaming performance The 4th-generation Intel® Core™ i7 processor delivers powerful, energy-efficient performance to give you the horsepower you need to run today''s games, providing stable, reliable performance even during marathon gaming sessions. And when you''re done having fun, it''s even powerful enough to handle the most demanding of tasks. Gamer-grade NVIDIA GTX series graphics for outstanding visuals Get advanced desktop gaming performance everywhere with NVIDIA® GeForce® GTX 960M dedicated graphics that lets you play your favorite PC games anywhere, at 1080p, with no compromise. With a single click, the NVIDIA GeForce Experience software optimizes games for the best performance and image quality possible. The result is a smooth frame rate with zero lag. Stable performance with a silent cooling system The G Series has been designed to withstand marathon gaming sessions, with a powerful thermal solution that ensures system stability in the heat of the action. It''s silent too, so it won''t distract you from your game. Fast data transfers with USB 3.0 USB 3.0 gives you 10x the data transfer speed of earlier USB standards. It also ensures your mobile devices get charged faster too.', NULL, N'http://reviews.bestbuy.com/3545/1312416015/asus-15-6-in-plane-switching-ips-technology-notebook-intel-core-i7-i7-4720hq-quad-core-4-core-2-60-ghz-matte-black-reviews/reviews.htm', 2, 2, 1, 49, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (50, N'Acer - Aspire 13.3'' Touchscreen LED Inplane Switching Notebook-Intel Core i5 i5-5200U 2 Core 2.20GHz - Multi', N'The Ezel™ hinge The Ezel™ hinge works just right: it provides low resistance for converting the Aspire R7 into four modes with just one hand, and higher resistance so the touchscreen stays steady when you use it. Work with the Aspire R7 at your desk as a notebook, flick it into display mode for sharing, or use it as a pad for drawing.Ezel™ mode Ezel™ mode brings the touch display closer to you, so you don''t have to reach across your desk to use it. Just pull the display up and out, where it can float over the keyboard. Having the display that much closer makes switching between touch control and typing that much easier.', NULL, N'http://reviews.bestbuy.com/3545/1312361360/acer-aspire-13-3-touchscreen-led-inplane-switching-notebook-intel-core-i5-i5-5200u-2-core-2-20ghz-multi-reviews/reviews.htm', 9, 2, 1, 50, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (51, N'Acer - 15.6'' Aspire Notebook - 8 GB Memory - 1 TB Hard Drive and 8 GB Solid State Drive', N'Do moreWith the Aspire E Series, everyday activities like web browsing, communicating and playing videos are effortless with Intel® or AMD processing. NVIDIA® or AMD graphics deliver fine visual detail. Plenty of memory means you can launch applications quickly, and a large hard drive provides more space for your media.All the essentialsGet the power and useful features you value with the Aspire E Series. Solid performance, handy multimedia tools and convenient connectivity make daily computing an easy-going pleasure. This notebook''s practical yet stylish design comes in 14.0&quot; and 15.6&quot; screen sizes -- pick the model that''s just right for you.', NULL, N'http://reviews.bestbuy.com/3545/1311599184/acer-15-6-aspire-notebook-8-gb-memory-1-tb-hard-drive-and-8-gb-solid-state-drive-reviews/reviews.htm', 9, 2, 1, 51, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (52, N'HP - ProBook 450 G2 15.6'' LED Notebook - Intel Core i7 i7-4510U Dual-core (2 Core) 2 GHz - Multi', N'ProBookThe ProBook offers our best mix of features and design for business, at a price that won''t hurt your bottom line.', NULL, N'http://reviews.bestbuy.com/3545/1311407014/hp-probook-450-g2-15-6-led-notebook-intel-core-i7-i7-4510u-dual-core-2-core-2-ghz-multi-reviews/reviews.htm', 6, 2, 1, 52, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (53, N'Toshiba - 15.6'' Touch-Screen Laptop - AMD A8-Series - 6GB Memory - 750GB Hard Drive - Jet Black', N'Take your media collection on the go with this 15.6&quot; Toshiba C55DTB5153 touch-screen laptop, which features a 750GB hard drive that offers ample space to store pictures, videos, music and more. An HDMI output lets you connect to an external display. Learn more about the New Windows', NULL, N'http://reviews.bestbuy.com/3545/3953816/toshiba-15-6-touch-screen-laptop-amd-a8-series-6gb-memory-750gb-hard-drive-jet-black-reviews/reviews.htm', 5, 2, 1, 53, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (54, N'MSI - GP60 Leopard 15.6'' Laptop - Intel Core i5 - 8GB Memory - 1TB Hard Drive - Black', N'This MSI GP60 Leopard GP60LEOPARD836 laptop offers 2GB dedicated graphics and 8GB of memory for lush images and lag-free gaming. Intensify your gaming experience by connecting the laptop to your HDTV or other compatible display using the HDMI port. Learn more about the New Windows', NULL, N'http://reviews.bestbuy.com/3545/4879034/msi-gp60-leopard-15-6-laptop-intel-core-i5-8gb-memory-1tb-hard-drive-black-reviews/reviews.htm', 7, 2, 1, 54, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (55, N'Lenovo - 15.6'' Laptop - Intel Core i5 - 6GB Memory - 1TB Hard Drive - Black', N'This Lenovo G50 - 80E501B4US laptop measures just 0.98&quot; thin and features a 15.6&quot; high-definition display for detailed images. The 1TB hard drive provides spacious storage. Learn more about the New Windows', NULL, N'http://reviews.bestbuy.com/3545/3558138/lenovo-15-6-laptop-intel-core-i5-6gb-memory-1tb-hard-drive-black-reviews/reviews.htm', 4, 2, 1, 55, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (56, N'Asus - 15.6'' Touchscreen LED Inplane Switching Notebook-Intel Core i7 i7-4710HQ 4 Core 2.50GHz - Dark Gray', N'Incredible SoundSonicMaster Premium with quad-speaker array ASUS SonicMaster audio technology, incorporating ICEpower®, Bang &amp; Olufsen technology, brings you the best-ever laptop sound. New N Series laptops are the first with a quad-speaker array. This generates spacious and cinematic-quality surround. And for deep bass, you get the bundled external SonicMaster subwoofer, which pumps out thumping low notes. For flexible user-controlled and automatic sound tuning, ASUS includes MaxxAudio sound processing tools and the AudioWizard utility. Easily change sound settings or choose one of several presets based on personal preference: the N Series makes sure everything sounds better.', NULL, N'http://reviews.bestbuy.com/3545/1311709576/asus-15-6-touchscreen-led-inplane-switching-notebook-intel-core-i7-i7-4710hq-4-core-2-50ghz-dark-gray-reviews/reviews.htm', 2, 2, 1, 56, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (57, N'Asus - ROG (Republic of Gamers) G Series 17.3'' Laptop - Intel Core i7 - 8GB Memory - 1TB Hard Drive - Aluminum Black', N'Dominate the competition with this Asus ROG (Republic of Gamers) G Series G771JW-BSI7N04 laptop''s 17.3&quot; high-definition display and NVIDIA GTX 960M graphics, which deliver eye-popping visuals with intense clarity and rich detail. Learn more about the New Windows', NULL, N'http://reviews.bestbuy.com/3545/3953798/asus-rog-republic-of-gamers-g-series-17-3-laptop-intel-core-i7-8gb-memory-1tb-hard-drive-aluminum-black-reviews/reviews.htm', 2, 2, 1, 57, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (58, N'MSI - 18.4'' Laptop - Intel Core i7 - 16GB Memory - 1TB Hard Drive + 128GB Solid State Drive + 128GB Solid State Drive - Aluminum Black', N'Experience your favorite games in brilliant clarity with this MSI GT80 Titan GT80-TITAN-SLI-001 laptop, which features an antireflective 18.4&quot; display and dual NVIDIA GeForce GTX 980M SLI graphics with 16GB video memory for lifelike detail. Learn more about the New Windows', NULL, N'http://reviews.bestbuy.com/3545/1312219302/msi-18-4-laptop-intel-core-i7-16gb-memory-1tb-hard-drive-128gb-solid-state-drive-128gb-solid-state-drive-aluminum-black-reviews/reviews.htm', 7, 2, 1, 58, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (59, N'HP - Pavilion 15.6'' Touch-Screen Laptop - Intel Core i5 - 6GB Memory - 750GB Hard Drive - Natural Silver', N'This HP Pavilion 15-p220nr laptop features a 15.6&quot; WLED-backlit touch screen that simplifies navigation and presents visuals in realistic detail. An HDMI output allows you to connect the laptop to an external display. Learn more about the New Windows', NULL, N'http://reviews.bestbuy.com/3545/2848036/hp-pavilion-15-6-touch-screen-laptop-intel-core-i5-6gb-memory-750gb-hard-drive-natural-silver-reviews/reviews.htm', 6, 2, 1, 59, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (60, N'Dell - Inspiron 15.6'' Laptop - Intel Pentium - 4GB Memory - 500GB Hard Drive - Black', N'This Dell Inspiron I35512600BLK laptop features a 500GB hard drive to store movies and more. An Intel® Pentium® processor elevates multitasking capabilities, boosts productivity and enhances your entertainment and Internet browsing experiences. Learn more about the New Windows', NULL, N'http://reviews.bestbuy.com/3545/3510954/dell-inspiron-15-6-laptop-intel-pentium-4gb-memory-500gb-hard-drive-black-reviews/reviews.htm', 10, 2, 1, 60, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (61, N'Lenovo - 17.3'' Laptop - Intel Core i7 - 16GB Memory - 1TB+8GB Hybrid Hard Drive - Black', N'Immerse yourself in entertainment with this Lenovo Z70 - 80FG0037US laptop, which features a 17.3&quot; display and NVIDIA GeForce GT 840M graphics with 2GB dedicated video memory for lush, lifelike visuals and JBL stereo speakers for rich, detailed audio. Learn more about the New Windows', NULL, N'http://reviews.bestbuy.com/3545/3793237/lenovo-17-3-laptop-intel-core-i7-16gb-memory-1tb-8gb-hybrid-hard-drive-black-reviews/reviews.htm', 4, 2, 1, 61, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (62, N'Chromebook 2 13-inch', N'<ul class="key-specs">
              <li>
          <label>Type</label>
                      <span>Ultraportable</span>
                  </li>
              <li>
          <label>Screen size</label>
                      <span>13.3 inches</span>
                  </li>
              <li>
          <label>Screen resolution</label>
                      <span>1920 x 1080</span>
                  </li>
              <li>
          <label>Bundled OS</label>
                      <span>Linux (Chrome OS)</span>
                  </li>
              <li>
          <label>Processor speed</label>
                      <span>2.1 GHz</span>
                  </li>
              <li>
          <label>System RAM</label>
                      <span>4 GB</span>
                  </li>
              <li>
          <label>Maximum battery life</label>
                      <span>Up to 8.5 hours</span>
                  </li>
              <li>
          <label>Dimensions</label>
                      <span>0.65 x 12.72 x 8.8 in</span>
                  </li>
              <li>
          <label>Weight</label>
                      <span>3.09 lb</span>
                  </li>
              <li>
          <label>Released</label>
                      <span>April, 2014</span>
                  </li>
          </ul>', 426, N'http://www.engadget.com/products/samsung/chromebook/2-13-inch/', 3, 1, 1, 62, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (63, N'Lenovo - ThinkPad T60 14.1'' Notebook - Intel Core Duo Dual-core (2 Core) 1.83 GHz - Black', N'IBM Lenovo T60 installed with Windows 7 Home Premium. Intel Core Duo 1.83GHZ with 2GB DDR2 RAM. Laptop comes with an 80GB hard drive and DVD+CDRW drive. It includes a 14.1&quot; display, AC Adapter, Charger, and battery. The T60 also includes 802.11g wireless WiFi, Three USB ports, VGA out, speaker and headphone ports, PCMCIA slot, 10/100/1000 ethernet, and 30 day warranty.', NULL, N'http://reviews.bestbuy.com/3545/1311025157/lenovo-thinkpad-t60-14-1-notebook-intel-core-duo-dual-core-2-core-1-83-ghz-black-reviews/reviews.htm', 4, 2, 1, 63, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (64, N'Dell - Latitude 15.5'' Notebook - Intel Core 2 Duo Dual-core (2 Core) 2.26 GHz - Gray', N'Dell Latitude E6500 Refurbished Notebook PC with Windows 7 Home Premium and ONE YEAR Warranty. Ideal for consumers and businesses looking to save money and help the environment.', NULL, N'http://reviews.bestbuy.com/3545/1305283372/dell-latitude-15-5-notebook-intel-core-2-duo-dual-core-2-core-2-26-ghz-gray-reviews/reviews.htm', 10, 2, 0, 1, 0, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Url], [BrandId], [SourceId], [IsMain], [GeneralId], [IsApproved], [IsActive]) VALUES (65, N'HP - Refurbished - 14.1'' Business Notebook Notebook - 2 GB Memory - 60 GB Hard Drive - Gray', N'HP 6910p laptop installed with Windows 7 Home Premium 64bit. Intel Core 2 Duo 2.0GHZ with 2GB DDR2 RAM. Laptop comes with a 60GB hard drive and DVD+CDRW drive. It includes a 14.1&quot; display, AC Adapter, Charger, and battery. The 6910p also includes 802.11g wireless WiFi, Three USB 2.0 ports, VGA out, S-Video out, speaker and headphone jack, PC Card slot, Smart Card slot, SD Card Reader, Firewire, and 10/100/1000 ethernet, and 30 day warranty.', NULL, N'http://reviews.bestbuy.com/3545/1311784429/hp-refurbished-14-1-business-notebook-notebook-2-gb-memory-60-gb-hard-drive-gray-reviews/reviews.htm', 6, 2, 1, 65, 0, 1)
/****** Object:  Table [dbo].[Dictionary]    Script Date: 06/07/2015 18:10:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dictionary](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Word] [nvarchar](max) NULL,
	[WordTypeId] [int] NULL,
	[WordClassId] [int] NULL,
 CONSTRAINT [PK__Dictiona__3214EC07164452B1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dictionary] ON
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2588, N'amazing', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2589, N'unbelievable', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2590, N'fascinating', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2591, N'surprising', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2592, N'incredible', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2593, N'awesome', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2594, N'marvelous', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2595, N'stunning', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2596, N'wonderful', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2597, N'prodigious', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2598, N'shocking', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2599, N'believable', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2600, N'credible', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2601, N'plausible', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2602, N'insignificant', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2603, N'bad', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2604, N'poor', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2605, N'ordinary', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2606, N'unamazing', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2607, N'appreciable', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2608, N'observable', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2609, N'discernible', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2610, N'noticeable', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2611, N'perceptible', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2612, N'definite', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2613, N'measurable', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2614, N'marked', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2615, N'sizable', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2616, N'substantial', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2617, N'significant', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2618, N'detectable', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2619, N'apparent', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2620, N'clear-cut', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2621, N'estimable', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2622, N'evident', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2623, N'healthy', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2624, N'large', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2625, N'manifest', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2626, N'material', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2627, N'obvious', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2628, N'perceivable', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2629, N'plain', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2630, N'pronounced', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2631, N'sensible', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2632, N'tangible', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2633, N'visible', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2634, N'distinguishable', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2635, N'goodly', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2636, N'ascertainable', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2637, N'good-sized', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2638, N'recognizable', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2639, N'imperceptible', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2640, N'unrecognizable', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2641, N'indistinct', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2642, N'invisible', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2643, N'ambiguous', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2644, N'vague', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2645, N'minor', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2646, N'unimportant', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2647, N'inconsiderable', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2648, N'negligible', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2649, N'unnoticed', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2650, N'unnoticeable', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2651, N'obscure', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2652, N'little', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2653, N'small', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2654, N'unappreciable', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2655, N'astoundingly', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2656, N'astonishingly', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2657, N'ostending', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2658, N'unstintingly', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2659, N'outstandingly', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2660, N'un stintingly', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2661, N'un-stintingly', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2662, N'attractive', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2663, N'beautiful', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2664, N'alluring', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2665, N'glamorous', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2666, N'lovely', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2667, N'inviting', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2668, N'fair', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2669, N'enticing', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2670, N'interesting', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2671, N'charming', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2672, N'pleasant', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2673, N'good-looking', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2674, N'tempting', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2675, N'gorgeous', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2676, N'engaging', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2677, N'pleasing', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2678, N'handsome', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2679, N'adorable', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2680, N'agreeable', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2681, N'comely', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2682, N'enchanting', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2683, N'fetching', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2684, N'magnetic', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2685, N'prepossessing', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2686, N'pretty', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2687, N'provocative', 1, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2688, N'seductive', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2689, N'teasing', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2690, N'winning', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2691, N'winsome', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2692, N'bewitching', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2693, N'enthralling', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2694, N'looker', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2695, N'luring', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2696, N'taking', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2697, N'tantalizing', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2698, N'beckoning', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2699, N'captivating', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2700, N'hunky', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2701, N'mesmeric', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2702, N'disgusting', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2703, N'repulsive', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2704, N'unattractive', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2705, N'boring', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2706, N'undesirable', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2707, N'unappealing', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2708, N'homely', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2709, N'offensive', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2710, N'ugly', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2711, N'dull', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2712, N'disagreeable', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2713, N'disenchanting', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2714, N'repellent', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2715, N'awful', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2716, N'depressing', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2717, N'dreadful', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2718, N'atrocious', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2719, N'horrific', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2720, N'distressing', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2721, N'tough', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2722, N'harrowing', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2723, N'horrible', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2724, N'appalling', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2725, N'frightful', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2726, N'unpleasant', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2727, N'ghastly', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2728, N'dire', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2729, N'horrendous', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2730, N'gruesome', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2731, N'nasty', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2732, N'hideous', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2733, N'abominable', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2734, N'alarming', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2735, N'deplorable', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2736, N'fearful', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2737, N'gross', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2738, N'grungy', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2739, N'raunchy', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2740, N'stinking', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2741, N'synthetic', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2742, N'unsightly', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2743, N'horrifying', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2744, N'grody', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2745, N'encouraging', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2746, N'inoffensive', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2747, N'comforting', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2748, N'kind', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2749, N'calming', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2750, N'delightful', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2751, N'OK', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2752, N'happy', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2753, N'delicate', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2754, N'gentle', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2755, N'nice', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2756, N'good', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2757, N'safe', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2758, N'great', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2759, N'blurry', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2760, N'fuzzy', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2761, N'cloudy', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2762, N'bleary', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2763, N'filmy', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2764, N'foggy', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2765, N'blurred', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2766, N'clear', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2767, N'broken', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2768, N'injured', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2769, N'damaged', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2770, N'defective', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2771, N'crippled', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2772, N'mutilated', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2773, N'smashed', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2774, N'cracked', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2775, N'separated', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2776, N'burst', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2777, N'hurt', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2778, N'split', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2779, N'rent', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2780, N'fragmentary', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2781, N'shattered', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2782, N'crumbled', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2783, N'fragmented', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2784, N'collapsed', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2785, N'mangled', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2786, N'crushed', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2787, N'busted', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2788, N'fractured', 2, 1)
GO
print 'Processed 200 total records'
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2789, N'demolished', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2790, N'ruptured', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2791, N'severed', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2792, N'shivered', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2793, N'slivered', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2794, N'disintegrated', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2795, N'shredded', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2796, N'riven', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2797, N'dismembered', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2798, N'pulverized', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2799, N'in pieces', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2800, N'disturbed', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2801, N'interrupted', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2802, N'disconnected', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2803, N'erratic', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2804, N'incomplete', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2805, N'intermittent', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2806, N'irregular', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2807, N'spasmodic', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2808, N'spastic', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2809, N'beaten', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2810, N'subdued', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2811, N'depressed', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2812, N'oppressed', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2813, N'defeated', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2814, N'demoralized', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2815, N'discouraged', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2816, N'heartsick', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2817, N'tamed', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2818, N'humbled', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2819, N'overpowered', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2820, N'browbeaten', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2821, N'disheartened', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2822, N'vanquished', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2823, N'wrecked', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2824, N'faulty', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2825, N'ruined', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2826, N'gone', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2827, N'shot', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2828, N'exhausted', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2829, N'spent', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2830, N'disabled', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2831, N'down', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2832, N'out', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2833, N'feeble', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2834, N'haywire', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2835, N'imperfect', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2836, N'kaput', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2837, N'on the blink', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2838, N'on the fritz', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2839, N'out of commission', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2840, N'out of order', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2841, N'run-down', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2842, N'unsatisfactory', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2843, N'weak', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2844, N'wracked', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2845, N'coming unglued', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2846, N'coming unstuck', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2847, N'fallen apart', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2848, N'gone to pieces', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2849, N'gone to pot', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2850, N'in disrepair', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2851, N'in need of repair', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2852, N'in the shop', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2853, N'inoperable', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2854, N'not functioning', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2855, N'on the shelf', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2856, N'out of kilter', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2857, N'out of whack', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2858, N'screwed up', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2859, N'isolated', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2860, N'abandoned', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2861, N'ignored', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2862, N'transgressed', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2863, N'infringed', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2864, N'violated', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2865, N'disobeyed', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2866, N'disregarded', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2867, N'dishonored', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2868, N'retracted', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2869, N'traduced', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2870, N'stammering', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2871, N'hesitating', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2872, N'halting', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2873, N'disjointed', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2874, N'hesitant', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2875, N'incoherent', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2876, N'unintelligible', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2877, N'muttered', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2878, N'mumbled', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2879, N'connected', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2880, N'continuous', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2881, N'satisfied', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2882, N'working', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2883, N'flowing', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2884, N'perfect', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2885, N'unbroken', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2886, N'complete', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2887, N'fixed', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2888, N'whole', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2889, N'uplifted', 1, 1)
GO
print 'Processed 300 total records'
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2890, N'kept', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2891, N'encouraged', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2892, N'repaired', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2893, N'saved', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2894, N'huge', 3, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2895, N'very', 3, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2896, N'long', 3, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2897, N'charging', 3, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2898, N'but', 4, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2899, N'can''t', 4, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2900, N'didn''t', 4, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2901, N'doesn''t', 4, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2902, N'productive', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2903, N'profitable', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2904, N'beneficial', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2905, N'useful', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2906, N'effective', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2907, N'prolific', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2908, N'dynamic', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2909, N'valuable', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2910, N'constructive', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2911, N'gratifying', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2912, N'rewarding', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2913, N'fertile', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2914, N'advantageous', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2915, N'vigorous', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2916, N'energetic', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2917, N'worthwhile', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2918, N'fecund', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2919, N'gainful', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2920, N'inventive', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2921, N'plentiful', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2922, N'producing', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2923, N'rich', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2924, N'teeming', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2925, N'generative', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2926, N'disadvantageous', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2927, N'useless', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2928, N'worthless', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2929, N'fruitless', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2930, N'impotent', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2931, N'unproductive', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2932, N'inactive', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2933, N'valueless', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2934, N'idle', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2935, N'lethargic', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2936, N'hurting', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2937, N'unhelpful', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2938, N'barren', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2939, N'unfruitful', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2940, N'responsive', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2941, N'sympathetic', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2942, N'conscious', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2943, N'susceptible', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2944, N'receptive', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2945, N'compassionate', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2946, N'aware', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2947, N'sensitive', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2948, N'active', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2949, N'alive', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2950, N'awake', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2951, N'forthcoming', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2952, N'impressionable', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2953, N'kindhearted', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2954, N'open', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2955, N'passionate', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2956, N'perceptive', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2957, N'persuadable', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2958, N'sentient', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2959, N'sharp', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2960, N'softhearted', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2961, N'tender', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2962, N'warm', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2963, N'warmhearted', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2964, N'respondent', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2965, N'susceptive', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2966, N'reactive', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2967, N'acknowledging', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2968, N'answering', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2969, N'influenceable', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2970, N'replying', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2971, N'sensile', 1, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2972, N'merciless', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2973, N'unfeeling', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2974, N'unfriendly', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2975, N'senseless', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2976, N'ignorant', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2977, N'impassive', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2978, N'indifferent', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2979, N'unaware', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2980, N'unresponsive', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2981, N'unconscious', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2982, N'unsusceptible', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2983, N'insensitive', 2, 1)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2984, N'like', 5, 3)
INSERT [dbo].[Dictionary] ([Id], [Word], [WordTypeId], [WordClassId]) VALUES (2985, N'love', 5, 3)
SET IDENTITY_INSERT [dbo].[Dictionary] OFF
/****** Object:  Table [dbo].[Comment]    Script Date: 06/07/2015 18:10:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[CmtTypeId] [int] NULL,
	[ProductId] [int] NULL,
	[IsApproved] [bit] NULL,
	[CmtDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Comment] ON
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4358, N'Obviously, the more space you require, the smaller things are, but luckily there is an easy to use scale that will help you to get the resolution that''s right for you.', 3, 1, 0, CAST(0x0000A26500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4359, N'Failing that, you can download apps to customise the resolution.', 4, 1, 0, CAST(0x0000A26500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4360, N'This Mac is fast, and combined with Mavericks I am now getting some great battery life.', 1, 1, 0, CAST(0x0000A26500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4361, N'The first cycle wasn''t great and I thought it might actually be a problem, but a few more cycles and it has really started to give me close to, if not exceeding, the suggested battery life.', 2, 1, 0, CAST(0x0000A26500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4362, N'It''s so much quiter than previous MacBooks, much of this is surely down to the SSD and the CPU.', 4, 1, 0, CAST(0x0000A26500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4363, N'It can and does get hot, but it''s not been uncomfortable yet.', 4, 1, 0, CAST(0x0000A26500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4364, N'Maybe that''s because it''s been pretty cold and I have yet to wear shorts while using it.', 4, 1, 0, CAST(0x0000A26500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4365, N'For anyone who needs a powerful machine, this is for you.', 1, 1, 0, CAST(0x0000A26500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4366, N'If you''re just going to surf the web, it''s overpriced, but text does look great on the screen.', 2, 1, 0, CAST(0x0000A26500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4367, N'Great laptop, i still wish they would stick the 15 inch''s internals inside the 13 inch model but at this point it''s becoming exceedingly clear that''s never going to happen.', 1, 1, 0, CAST(0x0000A26C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4368, N'It''s super fast with the i7 and flash storage.', 1, 1, 0, CAST(0x0000A36200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4369, N'Using one is like being in a prison due to Apple''s restrictions.', 4, 1, 0, CAST(0x0000A32600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4370, N'I''m using the high-end version 15'' Macbook Pro.', 4, 1, 0, CAST(0x0000A2CE00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4371, N'Couldn''t be much happier with this laptop.', 1, 1, 0, CAST(0x0000A35A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4372, N'It can game, it can last for hours and it can do just about everything.', 4, 1, 0, CAST(0x0000A26B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4373, N'All what matters for me is the retina display, battery life, elegant look and portability.', 1, 2, 0, CAST(0x0000A28000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4374, N'OSX is another reason that makes this machine wonderful.', 1, 2, 0, CAST(0x0000A31300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4375, N'It makes the machine more portable and productive in its own stand.', 1, 2, 0, CAST(0x0000A31300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4376, N'However, the CPU is not as good as I expect for a machine in such price level.', 2, 2, 0, CAST(0x0000A31300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4377, N'Compare to Sony VAIO Z13, one with extreme portability yet also with extremely powerful CPU, I am not very satisfied with the computing power for all MBPr 13" models.', 1, 2, 0, CAST(0x0000A31300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4378, N'Have both an MBP 15" (non Retina) and a MBA 13".', 4, 2, 0, CAST(0x0000A29F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4379, N'Needed to replace the 15" but wasn''t certain if going down a size would be a wise decision (the MBP is mostly used in a stationary manner and is attached to an external display).', 4, 2, 0, CAST(0x0000A29F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4380, N'It turns out that the MBP 13" Retina is the perfect size.', 1, 2, 0, CAST(0x0000A29F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4381, N'I''d like it to be lighter but it feels great in hand when I do move it around the house.', 3, 2, 0, CAST(0x0000A29F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4382, N'Lastly, I "up-sized" to i7 2.', 4, 2, 0, CAST(0x0000A29F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4383, N'8GHz and 16GB Ram and this thing flies.', 4, 2, 0, CAST(0x0000A29F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4384, N'I''m very inclined to replace the MBA with the same setup to use for work.', 4, 2, 0, CAST(0x0000A29F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4385, N'I''ve owned the 15in rMBP since February when they were speed bumped.', 4, 2, 0, CAST(0x0000A26100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4386, N'I have since decided I needed more portability, but I was waiting for the Haswell update for better battery life, better integrated graphics, and 802.', 3, 2, 0, CAST(0x0000A26100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4387, N'Overall this is a great little machine, and I expect to get some mileage out of it.', 1, 2, 0, CAST(0x0000A26100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4388, N'You get what you pay for.', 4, 2, 0, CAST(0x0000A28100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4389, N'A great mid range laptop with a super high resolution display, incredible response and speed with PCIe SSD storage, thin and light for it''s power, and great battery life make this machine one of the best laptops you can buy.', 1, 2, 0, CAST(0x0000A29600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4390, N'Trying to develop on OSX was more trouble than it was worth.', 1, 2, 0, CAST(0x0000A28200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4391, N'I spent the years since then using Linux on various laptops.', 4, 2, 0, CAST(0x0000A28200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4392, N'Fast forward to now, development tools have advanced and laptops are powerful enough to easily run Virtual Machines to ease my development challenges.', 1, 2, 0, CAST(0x0000A28200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4393, N'I''m very pleased to see how far OSX and other applications I use daily have come since 2007.', 4, 2, 0, CAST(0x0000A28200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4394, N'The best laptop I ever used, and I believe the best on the market.', 1, 2, 0, CAST(0x0000A28C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4395, N'I was in a toss up between getting a MacBook Air and 13-in Retina for my personal laptop.', 4, 2, 0, CAST(0x0000A36A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4396, N'Having used an Air and a 15-inch Retina, I understood the benefits of each one which made deciding on one really difficult.', 2, 2, 0, CAST(0x0000A36A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4397, N'With the Air only offering 1440, I knew I would be really limited in screen real-state.', 2, 2, 0, CAST(0x0000A36A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4398, N'I don''t need these now, but this was a long term purchase and if I ever reconfigure my home office it will be nice to know I''ll have the spare ports available to me.', 2, 2, 0, CAST(0x0000A36A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4399, N'I have never owned any macs in the past, then I have decided to get one this year.', 4, 2, 0, CAST(0x0000A35000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4400, N'And it just blown me away.', 4, 2, 0, CAST(0x0000A35000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4401, N'Super fast, great battery, premium built and quality and OS is the BEST.', 1, 2, 0, CAST(0x0000A35000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4402, N'Nothing less to expect from Apple.', 4, 2, 0, CAST(0x0000A35000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4403, N'Now I regret why I didn''t get this machine before.', 4, 2, 0, CAST(0x0000A35000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4404, N'The best computer I''ve ever owned.', 1, 2, 0, CAST(0x0000A28200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4405, N'Just gonna say this: i LOVE this machine,.', 1, 2, 0, CAST(0x0000A29A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4406, N'but thought the 8G ram was sluggish.', 1, 2, 0, CAST(0x0000A29A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4407, N'Finally sucked it up and ordered the new chip and 16g ram right from the factory.', 1, 2, 0, CAST(0x0000A29A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4408, N'DAMN seems to make a huge huge difference.', 4, 2, 0, CAST(0x0000A29A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4409, N'The best thing of the MBP 13 Retina is a perfect combination of a good screen, battery life and a software that communicates seamlessly with the trackpad.', 1, 2, 0, CAST(0x0000A43A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4410, N'The hand gestures and swipes you can do makes the use very smooth and easy.', 1, 2, 0, CAST(0x0000A43A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4411, N'This is absolutely the best laptop I''ve ever owned.', 1, 2, 0, CAST(0x0000A32100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4412, N'Hands down the best laptop I''ve ever owned.', 1, 2, 0, CAST(0x0000A2F500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4413, N'Battery is better than any laptop I''ve owned before but I can see room for improvement.', 1, 3, 0, CAST(0x0000A44B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4414, N'Looking forward to Windows 10 because 8.', 4, 3, 0, CAST(0x0000A44B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4415, N'The higher res touch screen was worth it with current windows.', 1, 3, 0, CAST(0x0000A44B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4416, N'The only potential issue going forward is hardware upgradeability.', 4, 4, 0, CAST(0x0000A45C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4417, N'At least users can take comfort in the best trackpad in the industry.', 1, 4, 0, CAST(0x0000A45C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4418, N'And whilst it may not have all the features of other ultrabooks (a.', 4, 5, 0, CAST(0x0000A1DD00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4419, N'I can still say all around, this is the Ultrabook to pick up out of the lot.', 4, 5, 0, CAST(0x0000A1DD00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4420, N'Plus you get Mac OS X.', 4, 5, 0, CAST(0x0000A1DD00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4421, N'i bought the 13" configuration with an i7, 8GB of RAM, and the 256GB SSD (also bought an AirPort Time Capsule for extra storage as I don''t really need terribly much on the move, just at home).', 4, 5, 0, CAST(0x0000A23F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4422, N'It truly is an incredible machine.', 1, 5, 0, CAST(0x0000A23F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4423, N'It''s fast, it''s responsive, it''s thin, and it really does last all day.', 4, 5, 0, CAST(0x0000A23F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4424, N'I''ve always been a PC person (despite writing about Apple news for the last four years) and I reckon I''ll remain that way on the desktop, but the MacBook Air makes me rely on my desktop a lot less.', 4, 5, 0, CAST(0x0000A23F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4425, N'I now do all my web browsing, IM-ing, emailing,.', 4, 5, 0, CAST(0x0000A23F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4426, N'everything web-based, I now do on the Air because at the lift of a lid, it''s instantly ready to go both in whatever I want to achieve online, and can literally be picked up and moved around.', 4, 5, 0, CAST(0x0000A23F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4427, N'Because I still use my old iPod touch as my main music/podcast device, convenience dictates that I have to use iTunes as my ''music program'' on Windows.', 1, 5, 0, CAST(0x0000A23F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4428, N'Now that I have a Mac, my music experience will be a whole lot better (it doesn''t take a stopwatch to notice that iTunes simply runs faster on OS X than Windows).', 3, 5, 0, CAST(0x0000A23F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4429, N'Literally all I use my desktop PC for now is the odd multiplayer PC game (I get scared that the Air will melt when I run games on it), being my Media Center for TV and Movies, and the odd heavy-duty video rendering task.', 4, 5, 0, CAST(0x0000A23F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4430, N'It used to be on 24/7 - now it''s far from it.', 4, 5, 0, CAST(0x0000A23F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4431, N'Not only is Apple aiding the environment in their usual eco-friendly manufacturing and packaging, their helping it through proxy by deterring me from using a power-hungry desktop.', 4, 5, 0, CAST(0x0000A23F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4432, N'The trackpad on the Air however is the most usable I''ve ever experienced.', 1, 5, 0, CAST(0x0000A23F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4433, N'I do wish I had bought a Magic Mouse as it would be useful to whip out a mouse for some tasks (and the PC mice I have aren''t as portable), but it''s a more than bearable situation.', 4, 5, 0, CAST(0x0000A23F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4434, N'Another thing I always disliked about laptops was how cramped the screens seem (I like to think I have ''digital claustrophobia'' and have always needed at least two monitors for my desktop PC so that I have breathing space.', 4, 5, 0, CAST(0x0000A23F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4435, N'While I can''t imagine I could cope with a display as small as the 11" one, 13" on this is ample.', 1, 5, 0, CAST(0x0000A23F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4436, N'I imagine that when I buy an Apple TV and Mavericks is released I''ll be using a display wirelessly a lot, but the need to use a bigger screen hasn''t yet outweighed the (minimal) effort to connect it to one.', 4, 5, 0, CAST(0x0000A23F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4437, N'I''ve only ever owned a few other laptops, and certainly not had one that actually qualifies as a portable device in today''s standards.', 2, 5, 0, CAST(0x0000A23F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4438, N'For somebody coming from a new-ish Dell or HP to this, it may not be as magical, but to me the Air is revolutionizing my computing.', 2, 5, 0, CAST(0x0000A23F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4439, N'I''m more productive and more mobile thanks to it.', 1, 5, 0, CAST(0x0000A23F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4440, N'If you have intensive read-write programs running, for sure get 256 or 512 gb, since they are produced by Samsung (whilst 128gb is by ScanDisk), i.', 4, 5, 0, CAST(0x0000A25000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4441, N'I also got Pipetto case for it, which makes the whole setup look exciting every time I see it.', 4, 5, 0, CAST(0x0000A25000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4442, N'It''s definitely the most beautiful computer in the world, and everyone should have one.', 1, 5, 0, CAST(0x0000A25200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4443, N'I upgraded from a 2009 13 inch Macbook Pro.', 4, 5, 0, CAST(0x0000A21E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4444, N'The first difference I noticed was the display.', 4, 5, 0, CAST(0x0000A21E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4445, N'It''s the same size, but a much higher resolution.', 2, 5, 0, CAST(0x0000A21E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4446, N'The second impressive difference is the battery life.', 1, 5, 0, CAST(0x0000A21E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4447, N'While this may be an "Air" and not a "Pro" I don''t think you''ll ever notice the difference unless you''re doing some seriously processor pushing projects like converting video, rendering effects, or playing a beefy game.', 4, 5, 0, CAST(0x0000A21E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4448, N'I plan on giving this thing a challenge with some more video editing and amateurish VFX work soon, and I''ll report back with how well it handles it.', 1, 5, 0, CAST(0x0000A21E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4449, N'Trading up from a 6 year old MacBook, this thing is amazing.', 1, 5, 0, CAST(0x0000A1E100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4450, N'I have an iMac, so I know the performance that OSx is capable of.', 4, 5, 0, CAST(0x0000A1E100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4451, N'With day to day tasks the new 13 inch air is faster than my iMac.', 1, 5, 0, CAST(0x0000A1E100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4452, N'It is certainly because of the new PCI-e ssd.', 4, 5, 0, CAST(0x0000A1E100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4453, N'The stock i5 and the 4GB of RAM the 13 inch comes with is more than enough for laptop tasks.', 4, 5, 0, CAST(0x0000A1E100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4454, N'The Macbook Air (mid 2013) is an amazing computer in its own right.', 1, 5, 0, CAST(0x0000A2B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4455, N'It boasts rock-solid specs in a thoughtfully designed and sturdy aluminum body.', 1, 5, 0, CAST(0x0000A2B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4456, N'The battery life is phenomenal and the noise is nil.', 3, 5, 0, CAST(0x0000A2B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4457, N'This machine is easily more powerful than my older laptop; faster SSD, faster RAM, and a significant increase in battery life.', 1, 5, 0, CAST(0x0000A1E300000000 AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4458, N'iCloud and Time Machine backups work flawlessly.', 1, 5, 0, CAST(0x0000A1E300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4459, N'This is the best business laptop I''ve ever had, and I''ve had quite a few dating back to the IBM 5150 Portable, which was a suitcase with a keyboard.', 1, 5, 0, CAST(0x0000A3C700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4460, N'Overall, Macbook Air 13" mid 2013 is a good laptop.', 1, 5, 0, CAST(0x0000A2B800000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4461, N'I am recent convert from the Windows world, at least for my personal devices.', 4, 5, 0, CAST(0x0000A31D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4462, N'And I couldn''t be happier with my new MBA.', 1, 5, 0, CAST(0x0000A31D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4463, N'There may technically be some laptops out there that are a teeny bit thinner or lighter, but they all strive towards the standard that Apple introduced with the MBA.', 1, 5, 0, CAST(0x0000A31D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4464, N'The only improvement that I would hope to see in a future release, is a higher resolution display or maybe a IPS panel for improved viewing angles.', 1, 5, 0, CAST(0x0000A31D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4465, N'But in real world use, those fancy specs aren''t the end-all-be-all.', 4, 5, 0, CAST(0x0000A31D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4466, N'The 1400x900 is perfectly usable on this device.', 1, 5, 0, CAST(0x0000A31D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4467, N'A very nice laptop for the average user.', 1, 5, 0, CAST(0x0000A31D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4468, N'And by that I mean most everyone who isn''t a developer needing to run multiple VMs.', 4, 5, 0, CAST(0x0000A31D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4469, N'Compared to previous MACBOOKS I have owned this one has to be one of my favorites.', 4, 5, 0, CAST(0x0000A23700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4470, N'The overall screen quality is excellent, videos and pics at 1080p res.', 4, 5, 0, CAST(0x0000A23700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4471, N'The Macbook Air doesn’t feature the same edge-to-edge glass design as the Macbook Pros do, which in some cases, is a good thing.', 1, 5, 0, CAST(0x0000A23700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4472, N'The glare on the all glass designs can get horrible in the correct lighting, while the aluminum bezel around the Air greatly helps reduce that problem.', 2, 5, 0, CAST(0x0000A23700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4473, N'Glare is obviously still there, but it’s nowhere near as bad as on the Macbook Pro.', 1, 5, 0, CAST(0x0000A23700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4474, N'Apple has a truly wonderful computer in the 2013 Macbook Air.', 1, 5, 0, CAST(0x0000A23700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4475, N'We have never seen a Mac laptop get over 12 hours of battery life; it’s just unheard of.', 4, 5, 0, CAST(0x0000A23700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4476, N'I was given this by my company as a work laptop and I must say that I am loving it.', 4, 5, 0, CAST(0x0000A29000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4477, N'It is perfect as it is very light to carry around and has a really long battery life.', 1, 5, 0, CAST(0x0000A29000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4478, N'The screen is actually better than my MacBook Pro 13 (2011).', 1, 5, 0, CAST(0x0000A29000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4479, N'The best bit of course is the SSD which makes coding and compilation quite fast.', 1, 5, 0, CAST(0x0000A29000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4480, N'Once you start using it, you''ll never go back to magnetic drives.', 4, 5, 0, CAST(0x0000A29000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4481, N'While the display is colorful, offers deep blacks, plenty of contrast and goes very bright, the resolution is too low at this price point.', 2, 5, 0, CAST(0x0000A2FF00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4482, N'Regarding battery life, this thing is a joke.', 4, 5, 0, CAST(0x0000A2FF00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4483, N'I''ve managed 15 hours on one charge, and I wasn''t even being stingy with brightness (set at 70%) albeit I was only doing word processing.', 1, 5, 0, CAST(0x0000A2FF00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4484, N'Simply blown away by the battery life, and not once have I had to take my charger in my bag anywhere apart from on a long holiday.', 4, 5, 0, CAST(0x0000A2FF00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4485, N'Just the durability and processor performance in sunlight conditions are poor.', 2, 5, 0, CAST(0x0000A31100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4486, N'Great laptop here but really had to fork over some change to get this piece.', 1, 6, 0, CAST(0x0000A06F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4487, N'It''s very fast and the screen is great with an overall great design but paying just over $3000.', 1, 6, 0, CAST(0x0000A06F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4488, N'not sure if it will happen again.', 4, 6, 0, CAST(0x0000A06F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4489, N'I will be running windows on this piece anyway.', 4, 6, 0, CAST(0x0000A06F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4490, N'The price is what lowers my overall rating.', 4, 6, 0, CAST(0x0000A06F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4491, N'If this MacBook were $1700, it would be fantastic and comparable to a PC.', 1, 6, 0, CAST(0x0000A06F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4492, N'Speakers were not as good as claimed, I think the non-retina model''s are better.', 3, 6, 0, CAST(0x0000A07000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4493, N'Size is nice, but not that much different than non-retina model, Lack of Optical Drive, Non-proprietary applications appeared blurry and scaling issues.', 1, 6, 0, CAST(0x0000A07000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4494, N'I returned mine after one day and purchased the Non-Retina MacBook Pro.', 4, 6, 0, CAST(0x0000A07000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4495, N'6 Processor, 768gig HD, 8gig RAM for the same price as the base retina MacBook.', 4, 6, 0, CAST(0x0000A07000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4496, N'For me, it was the right choice.', 1, 6, 0, CAST(0x0000A07000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4497, N'Even the Macbook Air offers a better keyboard.', 1, 6, 0, CAST(0x0000A06F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4498, N'Small "Enter/Return" and not enough feedback.', 2, 6, 0, CAST(0x0000A06F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4499, N'So I bought this to replace my aging early 2008 MacBook Pro.', 4, 6, 0, CAST(0x0000A07000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4500, N'I had to go for the 16GB RAM/512GB SSD option, mostly because I wanted the ultimate display and partly because I wanted something faster than I already have.', 1, 6, 0, CAST(0x0000A07000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4501, N'When programs are retina-enabled, they look gorgeous.', 1, 6, 0, CAST(0x0000A07000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4502, N'When the "resolution" slider is set to 1680x1050, non-retina programs are actually not all that bad looking; at 1440x900, you can tell what''s retina-enabled and what''s not.', 1, 6, 0, CAST(0x0000A07000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4503, N'Colors are extremely vibrant, contrast is amazing, and video playback is very smooth.', 1, 6, 0, CAST(0x0000A07000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4504, N'Portal 2''s realism is enhanced further by this screen.', 4, 6, 0, CAST(0x0000A07000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4505, N'Being that both ports are on separate controllers, you can saturate the R6''s bandwidth and still have full performance from the ports on a TB display.', 4, 6, 0, CAST(0x0000A07000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4506, N'Handbrake (which is CPU-only on Mac) seems to encode about 3 times faster on this processor than it did on my early 2008 MBP with a Core 2 Duo.', 1, 6, 0, CAST(0x0000A07000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4507, N'I''m going to install developer tools to see what 2 core performance is like.', 4, 6, 0, CAST(0x0000A07000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4508, N'What I don''t like about it -1) The GPU.', 4, 6, 0, CAST(0x0000A07000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4509, N'GT650 graphics are a little slow for this monster of a screen; I would have went with an HD7950 or a GT670 instead, because gaming does seem to get a little slow at the higher resolutions with additional features turned on.', 2, 6, 0, CAST(0x0000A07000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4510, N'Or one of several expensive docking solutions, like the one from Belkin.', 4, 6, 0, CAST(0x0000A07000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4511, N'4) The HD4000 IGP isn''t useful beyond web surfing.', 2, 6, 0, CAST(0x0000A07000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4512, N'If you try to do anything serious with the IGP, your head will probably explode.', 4, 6, 0, CAST(0x0000A07000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4513, N'Having said this, the pros definitely outweigh the cons for me, mostly because of the video editing and graphics work I do.', 4, 6, 0, CAST(0x0000A07000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4514, N'I''m going to preface my review by saying that the last computer I bought was the mid-2007 MacBook Pro (non-unibody, Santa Rosa, base 15-inch, for those who care for specifics.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4515, N'), so 5 years worth changes is definitely a nice step up for me.', 1, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4516, N'Speedwise, I don''t really have anything complain about.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4517, N'I did a quick Handbrake test, and for me it is plenty quick with its 8-thread/4-core i7 CPU.', 1, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4518, N'In everyday use, it is very responsive.', 1, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4519, N'I know people have complained about a noticeable lag in transitions and animations, and it definitely does exist, but I think it''s very negligible in my opinion.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4520, N'I appreciate the bump up to USB 3.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4521, N'0, as I just bought a 3TB external HD for all my media.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4522, N'I''ll miss my old FireWire external HD, but USB 3.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4523, N'0 should be enough to at least match FireWire in most cases.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4524, N'I don''t really have any Thunderbolt accessories yet, but I do plan on picking up the Thunderbolt to GigE adapter (you never know when Ethernet comes in handy).', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4525, N'Adapters have always been part of the deal with MacBook Pros, from Mini-Displayport, DVI, etc, and this really is just an evolution of Apple''s externalizing older functions.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4526, N'I never really liked the older unibody MacBook Pros: they were both heavier and slightly larger than my older non-unibody, and I had issues with the cover glass being overly reflective.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4527, N'This update has addressed my concerns with the previous generations.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4528, N'It is much thinner and has about the same footprint as my old MBP.', 1, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4529, N'Not a bad thing, just different.', 1, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4530, N'I haven''t put Steam onto this computer yet, so I don''t have any heavy games on here.', 1, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4531, N'So far, I haven''t had any problems with Mountain Lion''s supposed battery life problems.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4532, N'I got a Samsung panel (versus the LG panel that some people get).', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4533, N'I''d hazard a guess that they''re going to wait until the next major release of Office sometime next year to bring it up to date.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4534, N'In terms of build quality, the machine should be able to last me for several years.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4535, N'My friend did drop my old MBP while it was in its sleeve onto the ground a year ago, and though the zipper dented the body, there were no issues with actual performance.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4536, N'The only that worries me the lack of the cover glass over the display.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4537, N'Only time will tell how the Retina display holds up to years of wear and tear.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4538, N'So, moral of the story, watch out for cosmetic issues: outside of throwing your computer, this machine and its internals should be fine.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4539, N'Apple is pushing for more "appliance"-like manufacturing.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4540, N'This really is a personal decision: If you think that you''re not going to tinker with the internals too much, then the new design shouldn''t be a problem.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4541, N'There are always other manufacturers that are really starting to show their design muscle.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4542, N'Obviously, I decided that it wasn''t that important to me in the long run.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4543, N'I remember thinking my old MBP was quiet when I first bought it 5 years ago, but this is basically inaudible unless you put your ear right up to the body.', 2, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4544, N'The fan noise is definitely different from the old MBPs (non-unibody and unibody): I don''t really know how to describe it, but at full bore, it''s definitely still noticeable.', 2, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4545, N'On the speaker front, the speakers are noticeably more powerful.', 1, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4546, N'I''m not audio expert, but there seems like the sound is coming from a bigger space.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4547, N'So portability from my perspective is much improved.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4548, N'For others coming from a 13-inch or smaller, the increase in size is something to think about, especially if your bag is smaller.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4549, N'That really is what makes this computer special for me.', 4, 6, 0, CAST(0x0000A0B400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4550, N'While many new things abound with the 15" Retina Macbook Pro, it''s also a case of Deja Vu in a couple of key respects of a notebook.', 4, 6, 0, CAST(0x0000A0FB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4551, N'You sort of feel like you''ve gone back to 2006-ish, due to two things - the battery life, and the screen.', 4, 6, 0, CAST(0x0000A0FB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4552, N'The battery life is easy enough to explain: 5 hours in ekeing and 3 when winding up the machine slightly more is just not enough for any machine in this day and age if it doesn''t have a removable battery.', 1, 6, 0, CAST(0x0000A0FB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4553, N'The display - bear with me here.', 4, 6, 0, CAST(0x0000A0FB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4554, N'The Retina panel has a resolution of 2880x1800, which is crazily high for a 15" notebook and of course is the tentpole feature of this machine.', 4, 6, 0, CAST(0x0000A0FB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4555, N'The thing is, in Retina mode you''re actually looking at a 1440 x 900 screen.', 4, 6, 0, CAST(0x0000A0FB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4556, N'That''s because to get Retina, they''re scaling the panel at 2:1 - or the same as a 2006/7-era 15-inch Macbook Pro, and that was already low in the market for a machine aimed at the sort of user it was.', 2, 6, 0, CAST(0x0000A0FB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4557, N'Now, thankfully you might note, the screen can be scaled to look like a 1680 x 1050 or a 1920 x 1200 screen - more contemporary productive resolutions in a 15" form factor.', 1, 6, 0, CAST(0x0000A0FB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4558, N'") - yet I find it pretty fatiguing to look at the Retina panel in OS X in anything other than the crisp-but-unproductive Retina mode for any length of time, or when scaling the display in Windows in a similar manner.', 4, 6, 0, CAST(0x0000A0FB00000000 AS DateTime))
GO
print 'Processed 200 total records'
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4559, N'Which means in terms of OS X productivity, what I can get without unusual levels of fatigue is basically just an Air screen without jaggies if I stick my face right up to it.', 2, 6, 0, CAST(0x0000A0FB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4560, N'For Apple circlejerkers and the above two demographic, maybe.', 4, 6, 0, CAST(0x0000A0FB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4561, N'--------------------------------------------------Which may leave you wondering, why the hell did I buy a small bunch of these after showing my 2011 17"s the door.', 2, 6, 0, CAST(0x0000A0FB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4562, N'2Kg vs 3kg for a 17" is a major reduction, even if it comes with the attendant compromises.', 4, 6, 0, CAST(0x0000A0FB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4563, N'I also have plans to streamline my OS X notebooks into one type, again even with the compromises involved - as my OS X use is winding down.', 4, 6, 0, CAST(0x0000A0FB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4564, N'The rMBP allows me to field a single class of reasonably all-purpose mobile machine without needing to carry a total boat anchor.', 1, 6, 0, CAST(0x0000A0FB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4565, N'This then allows me to dump the Air''s over time.', 4, 6, 0, CAST(0x0000A0FB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4566, N'The improvements are small - no-one with any sense is going to call this a real stand-in for the likes of the price-comparable mobile workstations on the Windows side yet - but still an improvement.', 3, 6, 0, CAST(0x0000A0FB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4567, N'Oh yes, talking about Windows, Boot Camp drivers on the rMBP for Windows 7 seem to be the least stable among even the apparently inherently less stable implementations across the board for Windows on all Apple hardware.', 4, 6, 0, CAST(0x0000A0FB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4568, N'I have had quite a lot of BSOD''s - comparatively speaking, with a ''real'' Windows machine these days you shouldn''t see one at all unless you have hardware issues or installed bad / conflicting drivers - so far.', 1, 6, 0, CAST(0x0000A0FB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4569, N'--------------------------------------------------All right, let''s end with some relatively positive notes.', 4, 6, 0, CAST(0x0000A0FB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4570, N'The systems balance of power, portability, and expandability is I think well implemented.', 1, 6, 0, CAST(0x0000A0FB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4571, N'You definitely feel like you''re getting what you paid for, and the new internals does actually make this a little more the case in reality as well than previous machines.', 1, 6, 0, CAST(0x0000A0FB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4572, N'But in some key, potentially deal-breaking respects - if you''re not committed to worshipping at the Church Of Apple - a potentially rather pointless rewind to 2007.', 4, 6, 0, CAST(0x0000A0FB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4573, N'With an updated, even-thinner unibody design, gorgeous Retina display and stellar performance, it''s hard not to fall for Apple''s latest MacBook Pro.', 1, 6, 0, CAST(0x0000A07300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4574, N'Even then, it''s not sharp and garish pixelation but sort of soft, fuzzy and blur, the kind of experience you might have on an older monitor; it doesn''t really offend the eye.', 4, 6, 0, CAST(0x0000A07300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4575, N'We''ve been conditioned, by the last two revisions, to expect to make it through a whole workday on a Macbook Pro without having to lug around a power adapter.', 4, 6, 0, CAST(0x0000A07300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4576, N'I get between 5 and a half to 6 hours with just web browsing, email and music.', 4, 6, 0, CAST(0x0000A07300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4577, N'If I play a video or open up photoshop, office or final cut, I get 3 to 4.', 4, 6, 0, CAST(0x0000A07300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4578, N'It is comparable to the battery performance on my 3rd generation Macbook Air.', 4, 6, 0, CAST(0x0000A07300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4579, N'The MBP''s power brick is much larger and heavier though, and if you''re spending a solid day in back to back meetings, having to lug it around with this 15 incher isn''t a treat.', 1, 6, 0, CAST(0x0000A07300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4580, N'The lack of expandability was a small issue for me, considering how much above market rate Apple charges for SSD storage and RAM.', 2, 6, 0, CAST(0x0000A07300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4581, N'But the tradeoff is of course that sleek, beautiful design and the MBP''s fuss free performance.', 2, 6, 0, CAST(0x0000A07300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4582, N'There is so much depth of thought put into each design touch that I don''t at all feel shallow for appreciating this book because of its cover.', 4, 6, 0, CAST(0x0000A07300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4583, N'I recommend you seriously consider it as an option but go in with both eyes open and be sure its features and specs cover your needs.', 4, 6, 0, CAST(0x0000A07300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4584, N'It won''t make everyone happy, but it definitely pleases this Mac user.', 4, 6, 0, CAST(0x0000A07300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4585, N'UPDATE July 18, 2012: Battery life has improved with recent software updates.', 4, 6, 0, CAST(0x0000A07300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4586, N'The MB Pro R would have been a near perfect "Pro" machine if Apple had simply added the Retina display, USB3 and extra Thunderbolt port the the previous model.', 1, 6, 0, CAST(0x0000A18500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4587, N'The sacrifices made to strip a few mm off the thickness, take the gloss off what would otherwise have been an excellent Pro portable.', 1, 6, 0, CAST(0x0000A18500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4588, N'Whoever decided that no user would want a security slot to secure their $3k+ portable computer should be beaten severely about the head.', 2, 6, 0, CAST(0x0000A18500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4589, N'"Find my Mac" is a poor substitute for preventing it walking in the first place.', 2, 6, 0, CAST(0x0000A18500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4590, N'You''ll be amused when you see Windows on the high res 15" display through a virtual machine.', 4, 6, 0, CAST(0x0000A18500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4591, N'Speed is good, but largely due to the SSD.', 4, 6, 0, CAST(0x0000A18500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4592, N'There is no RJ45, only one 3.', 4, 6, 0, CAST(0x0000A18500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4593, N'With RAM soldered to the motherboard and HDD glued to the chassis, don''t forget your Apple Care.', 4, 6, 0, CAST(0x0000A18500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4594, N'Apple has put form ahead of function in the design of this laptop.', 4, 6, 0, CAST(0x0000A18500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4595, N'Be prepared to buy a large bag to carry all the drives and adaptors required to replace those omitted from your thin, light laptop.', 1, 6, 0, CAST(0x0000A18500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4596, N'I like my 15" MB R Pro, but wish I could have purchased a 2012 17" MB Pro, with SSD, two or three Thunderbolt ports, four USB 3 ports and a RAM upgrade.', 4, 6, 0, CAST(0x0000A18500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4597, N'Fast, light, powerful with a great display.', 1, 6, 0, CAST(0x0000A19000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4598, N'The highest quality, fastest computer I''ve owned to date.', 1, 6, 0, CAST(0x0000A26500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4599, N'The major drawback is the price.', 4, 6, 0, CAST(0x0000A26500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4600, N'If money is no object, this is the computer to get.', 4, 6, 0, CAST(0x0000A26500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4601, N'The only issue you will come across with this screen is that not many things are optimized for it quite yet but this should be a temporary issue.', 2, 6, 0, CAST(0x0000A07100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4602, N'Everything that is optimized is mind blowing.', 4, 6, 0, CAST(0x0000A07100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4603, N'This is also the fastest Macbook pro ever made by far.', 1, 6, 0, CAST(0x0000A07100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4604, N'I went from the first gen unibody 15" to this and the difference is unbelievable.', 4, 6, 0, CAST(0x0000A07100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4605, N'When I take it out of my laptop bag it turns on instantly like an iPad.', 4, 6, 0, CAST(0x0000A07100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4606, N'The downside to all this is your choices for hardware specs when you make this pricey purchase will stay with you for as long as you have it.', 4, 6, 0, CAST(0x0000A07100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4607, N'There is no upgrade down the line and there are no changes to be made here.', 4, 6, 0, CAST(0x0000A07100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4608, N'What you buy is what you stay with so choose wisely.', 4, 6, 0, CAST(0x0000A07100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4609, N'Overall anyone who gets this machine will likely know exactly what you are getting into and believe me you won''t be dissappointed.', 4, 6, 0, CAST(0x0000A07100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4610, N'They often say you shouldn''t buy the first generation of any apple product, and in this case I think that''s probably some good advice.', 2, 6, 0, CAST(0x0000A15700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4611, N'The retina macbook pro is a beautiful machine and still miles ahead of anything else available on the market but I''ve experienced two major issues with it.', 1, 6, 0, CAST(0x0000A15700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4612, N'Some screens manufactured by LG suffer from ghosting.', 4, 6, 0, CAST(0x0000A15700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4613, N'you can still see ghosts of images left on the screen after you close the image.', 4, 6, 0, CAST(0x0000A15700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4614, N'I really only noticed this when I started using an external monitor for desktop work and I''ve leave my email open on the laptop screen.', 4, 6, 0, CAST(0x0000A15700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4615, N'Overall this laptop is very good, but quite flawed.', 2, 6, 0, CAST(0x0000A15700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4616, N'Amazing screen, thin and light, great battery life, and super fast.', 1, 6, 0, CAST(0x0000A07200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4617, N'I have been using this machine for two months.', 4, 6, 0, CAST(0x0000A12F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4618, N'Although the price is high but it''s worth every penny.', 2, 6, 0, CAST(0x0000A12F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4619, N'Speed is amazing, I installed Boot Camp, played big games such as Assassin''s Creed III, Battlefield 3 without any problems.', 4, 6, 0, CAST(0x0000A12F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4620, N'Overall, this is a must have gadget.', 4, 6, 0, CAST(0x0000A12F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4621, N'The screen is by far the most noticeable thing.', 4, 6, 0, CAST(0x0000A07200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4622, N'Everything is crisp and you forget that glare was really even a problem.', 4, 6, 0, CAST(0x0000A07200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4623, N'Having used it now for just on two weeks it is a joy too use.', 4, 6, 0, CAST(0x0000A27900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4624, N'The speed and responsiveness is silky smooth and even running a lot of pro apps like Aperture and Final Cut and Logic has no dramatic effect on that speed.', 1, 6, 0, CAST(0x0000A27900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4625, N'Now I have no trouble moving from Retina screens to non-Retina screens (my iPad 2) but on the Retina screen I can read longer without my eyes getting tired.', 4, 6, 0, CAST(0x0000A27900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4626, N'The one thing I do wish it had was an extra USB port, now I know I can just get a USB hub but it would just be nice not to have an extra dongle when you want to charge an iPhone and an iPad.', 2, 6, 0, CAST(0x0000A27900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4627, N'But that is just a small thing.', 1, 6, 0, CAST(0x0000A27900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4628, N'Overall this is one fabulous machine to work with makes working on a mac a lot of fun again.', 4, 6, 0, CAST(0x0000A27900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4629, N'Areas I want to see improved for the next generation is battery life, one more USB 3 port, and improved speaks as the internal one''s are a step down from my old 17" at least to mine and a few friends ears.', 4, 6, 0, CAST(0x0000A0F300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4630, N'Intel will fix my other issues with this computer when Haswell is released next year.', 4, 6, 0, CAST(0x0000A0F300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4631, N'That is the integrated graphics is a bit slow to drive this high of a resolution display.', 2, 6, 0, CAST(0x0000A0F300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4632, N'It''s not bad but it does slow sometimes, especially when using three monitors.', 1, 6, 0, CAST(0x0000A0F300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4633, N'If only NVIDIA could still make chipsets for Intel.', 4, 6, 0, CAST(0x0000A0F300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4634, N'I cannot really compare it to anything in its league as it was an upgrade from a dell xps m1530 that was on its last leg, but I can say it is the greatest laptop i have ever owned and it was a great investment.', 2, 6, 0, CAST(0x0000A09200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4635, N'The retina display is everything it was hyped up to be and more.', 4, 6, 0, CAST(0x0000A09200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4636, N'The thinness of this laptop is mind boggling.', 4, 6, 0, CAST(0x0000A09200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4637, N'Living with it and owning it for a week now, I can say it is an amazing all around package.', 1, 6, 0, CAST(0x0000A09200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4638, N'It is extremely light and portable for how big it is; it is very zippy (14 sec boot time.', 1, 6, 0, CAST(0x0000A09200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4639, N'O) and handles everyday tasks like a race car handles trips to the grocery store: begging you to let it do what it was made to do.', 4, 6, 0, CAST(0x0000A09200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4640, N'I purchased this computer and let me tell you.', 4, 6, 0, CAST(0x0000A12400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4641, N'I am the basic laptop user, browsing, emailing and working with iphoto.', 4, 6, 0, CAST(0x0000A12400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4642, N'I just bought it couple of months ago and I already want to go get if fixed.', 4, 6, 0, CAST(0x0000A12400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4643, N'who wants to fix a computer after buying it immediately.', 4, 6, 0, CAST(0x0000A12400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4644, N'It is annoying because it pops up all the time.', 4, 6, 0, CAST(0x0000A12400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4645, N'I did not expect to be disappointed from something that expensive.', 1, 6, 0, CAST(0x0000A12400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4646, N'In terms of processing power and performance this is dynamite.', 4, 6, 0, CAST(0x0000A1EE00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4647, N'I look forward to getting into it more.', 4, 6, 0, CAST(0x0000A1EE00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4648, N'The screen is incredible and makes everything have that extra ''pop''.', 1, 6, 0, CAST(0x0000A1EE00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4649, N'The Retina display definitely does make a difference.', 4, 6, 0, CAST(0x0000A1EE00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4650, N'The only sore point is that you can''t upgrade RAM.', 4, 6, 0, CAST(0x0000A1EE00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4651, N'At the time of purchase you need to purchase the ram and SSD it comes with.', 4, 6, 0, CAST(0x0000A1EE00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4652, N'Interestingly though OWC offers a SSD upgrade though.', 4, 6, 0, CAST(0x0000A1EE00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4653, N'That''s why, in my view, it''s not a total wash in terms of upgradability.', 4, 6, 0, CAST(0x0000A1EE00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4654, N'It''s not the most elegant solution for every situation, but yes, it does provide a measure of expandability and oddly enough something that gets overlooked.', 2, 6, 0, CAST(0x0000A1EE00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4655, N'You can buy whole enclosures if you want to really keep adding things to this computer.', 4, 6, 0, CAST(0x0000A1EE00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4656, N'Overall this is the best computer I have owned.', 1, 6, 0, CAST(0x0000A1EE00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4657, N'Overall, it''s an unbelievable laptop, with unbelievable performance.', 4, 6, 0, CAST(0x0000A09300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4658, N'But it will leave your wallet empty.', 4, 6, 0, CAST(0x0000A09300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4659, N'Also, once again, the display is absolutely gorgeous.', 1, 6, 0, CAST(0x0000A09300000000 AS DateTime))
GO
print 'Processed 300 total records'
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4660, N'This is my first Apple laptop.', 4, 6, 0, CAST(0x0000A12500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4661, N'I have a work background in IT and found that the Apple OS and hardware packages available suited my needs perfectly for a home computer.', 1, 6, 0, CAST(0x0000A12500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4662, N'After using it for a few months now I feel I made the right choice buying this.', 1, 6, 0, CAST(0x0000A12500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4663, N'This is the best screen I have ever seen on a laptop.', 1, 6, 0, CAST(0x0000A08A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4664, N'The price doesn''t matter do me, but I can see why it''s a lot.', 4, 6, 0, CAST(0x0000A0D300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4665, N'There are a few glitches with blurry apps and lag but I''m sure they will be resolved soon.', 2, 6, 0, CAST(0x0000A07400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4666, N'Spending just a bit more on RAM and SSD customisation will give this new Mac a longer lifetime.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4667, N'The display is truly revolutionary and is just absolutely stunning.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4668, N'You''ll love it when you use one.', 1, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4669, N'If you need a great laptop/ workstation, this is it.', 1, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4670, N'16gigs of ram and solid state cpus.', 1, 6, 0, CAST(0x0000A2C700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4671, N'If you have the money the choice is clear.', 4, 6, 0, CAST(0x0000A2C700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4672, N'I just got my 15-inch MacBook Pro with Retina Display delivered to my door.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4673, N'This is my first ever Apple computer as I’ve always been the “PC” guy, but I must say I was a bit excited (but I didn’t want to show it too much to my wife).', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4674, N'But, as I followed the live blog of Apple’s Keynote speech, I became convinced the MacBook Pro with Retina Display was what I was looking for as “my next PC.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4675, N'No more aching backs for me while carrying this around in my backpack.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4676, N'The speaker grills are nicely placed on either side of the keyboard.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4677, N'I can even adjust the brightness of the keys’ backlight.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4678, N'And all the multi-touch gestures that can be done is just icing on the cake.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4679, N'The only thing I complained about at first is why it didn’t register my taps as clicks.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4680, N'I thought having to click the trackpad all the time would be a pain.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4681, N'But luckily, all I had to do was to enable Tap to Click on the System Preferences.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4682, N'The only thing I worry about is that this doesn’t have an optical drive.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4683, N'Most software installations can now be done just by downloading and running the executables.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4684, N'Sharing files has also become convenient through the use of USB Flash sticks and the cloud.', 1, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4685, N'Now let’s talk about what makes this machine cool.', 1, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4686, N'And honestly, since I booted this, I haven’t heard the internal fans go off and haven’t felt a warm breeze coming out of the vents, like it is with the usual PC laptops I’ve used.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4687, N'However, the underside gets warm, so I don’t advise placing it on top of bare laps for too long.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4688, N'Booting this up is such a breeze, taking maybe a second, and you’re on your way to productivity.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4689, N'It is currently running Mac OS X Lion (version 10.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4690, N'4) but I was promised of a free upgrade to Mountain Lion once it is released.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4691, N'Apple keeps on touting its Retina Displays, but I honestly haven’t noticed it.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4692, N'I haven’t tested the battery life yet, but if Apple stays true to what they say, then I should be able to expect 7 hours of unplugged computing with WiFi on.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4693, N'It got me convinced to finally appreciate a Mac.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4694, N'If you’re looking for a professional-grade “ultrabook,” I think this should be your top choice.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4695, N'Then I won’t have to pretend I’m not excited about it.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4696, N'This review was first published on PinoyTechBlog.', 4, 6, 0, CAST(0x0000A09000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4697, N'the lack of FireWire is detrimental for pre-amp 8x8 but for usb midi, it''s great.', 2, 6, 0, CAST(0x0000A0A200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4698, N') so that should fix my problem, making this Beast the best of the best.', 1, 6, 0, CAST(0x0000A0A200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4699, N'I wonder why Apple missed the July shipping date on the FireWire adapter and why it couldn''t be release on the day of announcement like the Ethernet adapter.', 4, 6, 0, CAST(0x0000A0A200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4700, N'As many will tell you, display is the killer feature.', 4, 6, 0, CAST(0x0000A0A200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4701, N'The lack of third party app (like twitter) is a pain to look at it with this screen but for all apple apps (I use Logic 9 with my music) it is gorgeous.', 2, 6, 0, CAST(0x0000A0A200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4702, N'My only true complaint about this laptop is the keyboard.', 4, 7, 0, CAST(0x0000A01B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4703, N'The keys just don''t always recognize your presses.', 4, 7, 0, CAST(0x0000A01B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4704, N'In all other respects this laptop has been basically exactly what I need from a laptop.', 4, 7, 0, CAST(0x0000A01B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4705, N'That said, I have a pretty specced out desktop PC I use to do basically everything more intensive than light gaming and word processing.', 1, 7, 0, CAST(0x0000A01B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4706, N'and hopefully by then the keyboard will have improved.', 4, 7, 0, CAST(0x0000A01B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4707, N'Just received the unit 2 days ago.', 4, 7, 0, CAST(0x00009F9000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4708, N'Loved it from the get go.', 4, 7, 0, CAST(0x00009F9000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4709, N'System purchased is UX31E with 4G RAM and 256 SSD.', 4, 7, 0, CAST(0x00009F9000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4710, N'External HDMI and VGA connectivity also flawless.', 4, 7, 0, CAST(0x00009F9000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4711, N'Used in a meeting yesterday with HDMI out and Bluetooth presentation "clicker".', 4, 7, 0, CAST(0x00009F9000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4712, N'Only one thing I would change.', 4, 7, 0, CAST(0x00009F9000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4713, N'The delete key on the keyboard is right next to the power key, I''d move it somewhere else.', 1, 7, 0, CAST(0x00009F9000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4714, N'Best ultrabook as of now (Early 2012).', 1, 7, 0, CAST(0x0000A02E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4715, N'One of my best choices I made for a computer ever.', 1, 7, 0, CAST(0x0000A04100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4716, N'Especailly since I got it with a Core i7 processor.', 4, 7, 0, CAST(0x0000A04100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4717, N'The only drawback is the graphics card could be more powerful and you can''t open up the computer for expanding the graphics card or memory.', 1, 7, 0, CAST(0x0000A04100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4718, N'From an HTML5/CSS3 Web Designer in NY.', 4, 7, 0, CAST(0x0000A04100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4719, N'Some others: the keyboard is very good.', 1, 7, 0, CAST(0x0000A0E800000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4720, N'Not good, but not that bad.', 1, 7, 0, CAST(0x0000A0E800000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4721, N'But the lid collects fingerprints very easily - it''s a nice touch they gave a screen cleaning little something with it that removes them in seconds.', 2, 7, 0, CAST(0x0000A0E800000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4722, N'I mean the usual multiplayer games are running OK.', 4, 7, 0, CAST(0x0000A0E800000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4723, N'I bought a UX31 for me and a UX21 for my girlfriend and love both of these so much.', 1, 7, 0, CAST(0x0000A03500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4724, N'The value is incredible, they run extremely fast and smooth, and the design is stunning.', 1, 7, 0, CAST(0x0000A03500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4725, N'I would highly recommend the ZenBook line of Ultrabooks.', 4, 7, 0, CAST(0x0000A03500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4726, N'Got it home and was impressed with how the laptop was packed, etc.', 4, 8, 0, CAST(0x0000A49600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4727, N'However, as soon as I opened the laptop I noticed that the aluminum case appeared to have been punctured during manufacturing and there was a sharp piece sticking up beside the keyboard.', 4, 8, 0, CAST(0x0000A49600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4728, N'I still wanted one, so I planned to simply just exchange it for a non-defective unit.', 4, 8, 0, CAST(0x0000A49600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4729, N'Of course, BestBuy was now out and only had one at a store about 26 miles away.', 4, 8, 0, CAST(0x0000A49600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4730, N'And then I turned it on.', 4, 8, 0, CAST(0x0000A49600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4731, N'After about 5 minutes of use the screen freezes and then slowly fades to white.', 4, 8, 0, CAST(0x0000A49600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4732, N'But, after updating drivers, flashing the BIOS, re-installing the OS, the behavior has not stopped and it appears to be some type of hardware failure.', 4, 8, 0, CAST(0x0000A49600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4733, N'Given the above, I will be returning the laptop and will most likely not try a third time.', 4, 8, 0, CAST(0x0000A49600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4734, N'Quite unfortunate as the laptop looks great and is the perfect form factor.', 1, 8, 0, CAST(0x0000A49600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4735, N'I have had the "Full HD" Core i7 version of this laptop for a month or so.', 4, 8, 0, CAST(0x0000A47300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4736, N'I bought it to use with Windows 10 when it comes out.', 4, 8, 0, CAST(0x0000A47300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4737, N'but also because Apple''s new MacBook is not what I was waiting for.', 4, 8, 0, CAST(0x0000A47300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4738, N'I am exceptionally pleased with this machine.', 4, 8, 0, CAST(0x0000A47300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4739, N'First, it''s just a gorgeous piece of machinery.', 1, 8, 0, CAST(0x0000A47300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4740, N'Second, I find the 360 ability of the screen allows me to use it in a variety of settings.', 4, 8, 0, CAST(0x0000A47300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4741, N'including as a tablet on my lap, where it sits very comfortably.', 4, 8, 0, CAST(0x0000A47300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4742, N'I did not get the QHD because I''ve had super-res screens before and scaling is always an issue.', 4, 8, 0, CAST(0x0000A47300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4743, N'but then there are the ports available because of this.', 4, 8, 0, CAST(0x0000A47300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4744, N'Also, I will not be buying any machine with Core M processor any time soon.', 4, 8, 0, CAST(0x0000A47300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4745, N'I want elegance, speed, and power.', 4, 8, 0, CAST(0x0000A47300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4746, N'there really isn''t much to say about this machine.', 4, 9, 0, CAST(0x0000A21900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4747, N'Its really just a spec bump from last years model.', 4, 9, 0, CAST(0x0000A21900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4748, N'Yes they upgraded the processor and got every last second of battery life they could out of this machine as well as the faster SSD and those are the high points.', 1, 9, 0, CAST(0x0000A21900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4749, N'no expandability after your buy it.', 4, 9, 0, CAST(0x0000A21900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4750, N'If you are buying the 11 inch Air it is because of the size and the speed.', 4, 9, 0, CAST(0x0000A21900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4751, N'this is a perfect second machine.', 1, 9, 0, CAST(0x0000A21900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4752, N'and a step up from the iPad at least to me.', 4, 9, 0, CAST(0x0000A21900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4753, N'i love the weight, performance and flexibility of a fully powered PC compared to the iPad.', 1, 9, 0, CAST(0x0000A21900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4754, N'is the best portable computer i`ve ever owned, love the design and the battery life, also it charges super fast, the bad thing is the expandability.', 1, 9, 0, CAST(0x0000A20B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4755, N'display need urgent upgrade as well as battery needs to be better even on the 11" movies playing is excellent move than 9 hours.', 1, 9, 0, CAST(0x0000A37C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4756, N'great keyboard and excellent everyday portable laptop.', 1, 9, 0, CAST(0x0000A37C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4757, N'The CPU is only marginally faster, but the SSD is twice as fast and the battery lasts nearly twice as long compared to the 2012 MacBook AIR.', 2, 9, 0, CAST(0x0000A22400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4758, N'A solid upgrade to one of the best laptops on the market.', 1, 9, 0, CAST(0x0000A22400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4759, N'Would love to see apple make a 12 incher in the same form factor as this 11.', 1, 9, 0, CAST(0x0000A2A800000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4760, N'Too big for a true laptop).', 4, 9, 0, CAST(0x0000A2A800000000 AS DateTime))
GO
print 'Processed 400 total records'
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4761, N'I bought the refurbished version of this, returned one whose battery was not connected properly but since then have not been happier.', 2, 10, 0, CAST(0x0000A2C300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4762, N'The features all speak for themselves, but the build feel is also really impressive.', 2, 10, 0, CAST(0x0000A2C300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4763, N'A simple slight bump of the power cord will cause it to completely fall out and stop charging.', 4, 10, 0, CAST(0x0000A37F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4764, N'Also the size of the power cord is slightly smaller than the connector on the computer which allows for you to jiggle the power cord inside the connector causing it to go in and out of charging.', 4, 10, 0, CAST(0x0000A37F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4765, N'This may not sound like a big issue, but I promise if you try and use it while charging for more than five minutes you will understand my frustrations.', 4, 10, 0, CAST(0x0000A37F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4766, N'I highly suggest not buying this and looking for a same priced alternative.', 4, 10, 0, CAST(0x0000A37F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4767, N'I was looking for a mobile, small, usable netbook to take notes with in class.', 1, 11, 0, CAST(0x00009C6200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4768, N'I was primarily looking for a good battery life and secondarily for a decent keyboard.', 1, 11, 0, CAST(0x00009C6200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4769, N'After searching I found the toshiba NB205, which not only has an incredible battery life of 7-8hrs but it also has a very nice island Keyboard and a decent trackpad.', 2, 11, 0, CAST(0x00009C6200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4770, N'Overall it performs as well as a netbook should.', 1, 11, 0, CAST(0x00009C6200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4771, N'Most netbooks have very similar specs, so purchasing decisions often come down to form factor.', 4, 11, 0, CAST(0x00009D0900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4772, N'While most netbooks are similar even in this regard, some do stand out from the others.', 4, 11, 0, CAST(0x00009D0900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4773, N'The NB205-311 does have a glossy screen, so you may run into trouble if you use it outdoors.', 2, 11, 0, CAST(0x00009D0900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4774, N'I did upgrade to 2 GB or RAM, and browsing in Chrome is snappy enough for my liking.', 4, 11, 0, CAST(0x00009D0900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4775, N'Firefox does feel a bit slower.', 2, 11, 0, CAST(0x00009D0900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4776, N'All in all, check out the NB205-311 if you want an elegant, and professional looking netbook, that also is a solid performer in the netbook class.', 1, 11, 0, CAST(0x00009D0900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4777, N'There isn''t anything new I can say about the Blade that isn''t already said or commented about.', 4, 12, 0, CAST(0x0000A37900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4778, N'The screen has an ungodly resolution and if you set it for 1:1, the font is so damn small.', 2, 12, 0, CAST(0x0000A37900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4779, N'But that''s not a minus or gripe, it''s just the resolution capabilities.', 1, 12, 0, CAST(0x0000A37900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4780, N'Games run very well at native resolution and with all games on Max/Ultra.', 1, 12, 0, CAST(0x0000A37900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4781, N'The only things I''ve had issues with is the heat.', 4, 12, 0, CAST(0x0000A37900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4782, N'I turn down a lot of the settings only because at that resolution, I can''t tell if AA is on.', 4, 12, 0, CAST(0x0000A37900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4783, N'sure, it looks good, but it looks good even with medium settings.', 2, 12, 0, CAST(0x0000A37900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4784, N'For all who like MacBook quality but enjoy using windows and windows apps.', 4, 12, 0, CAST(0x0000A33900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4785, N'High price but there is no equal product, so this is for those who demand the best.', 2, 12, 0, CAST(0x0000A33900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4786, N'I''m so used to high Rez that any less resolution on a laptop feels like I''m using a VGA screen, and I love the razer keyboard.', 1, 12, 0, CAST(0x0000A33900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4787, N'Got this laptop because I wanted power in a reasonably-sized package and I don''t regret it.', 1, 12, 0, CAST(0x0000A37500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4788, N'It is premium in every way.', 4, 12, 0, CAST(0x0000A37500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4789, N'I do IT work so it is important that my computer be quick, powerful, and reliable - this one really shines in all of those areas.', 1, 12, 0, CAST(0x0000A37500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4790, N'But I think was because they really hit a sweet spot with this one.', 4, 12, 0, CAST(0x0000A37500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4791, N'Users like me are tired of cheap and want a Windows machine that does not feel like every corner was cut to keep costs low and increase profit margins.', 3, 12, 0, CAST(0x0000A37500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4792, N'This one came clean of any junk programs and promotional garbage as well.', 1, 12, 0, CAST(0x0000A37500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4793, N'To me, this laptop is an excellent example of a Windows machine done right.', 1, 12, 0, CAST(0x0000A37500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4794, N'The notebook can incorporate a quality hardware in a beautiful and very thin aluminum case.', 1, 12, 0, CAST(0x0000A47B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4795, N'The screen has good colors and a very high resolution.', 1, 12, 0, CAST(0x0000A47B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4796, N'The notebook has all of the best quality, only the fans that sin at high speeds make much noise.', 3, 12, 0, CAST(0x0000A47B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4797, N'The only thing I can possibly complain about is the price, other than that, it is the best gaming laptop I have ever seen considering the portability and performance.', 1, 12, 0, CAST(0x0000A32D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4798, N'Razer Blade 2014 is probably the most powerful 14" laptop in the market right now.', 1, 12, 0, CAST(0x0000A32D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4799, N'People often complain about the noise and heat problem, but I find it pretty quiet and not as hot as I expected, it is actually cooler than my 15" MBPr.', 2, 12, 0, CAST(0x0000A32D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4800, N'if you are a gamer or a photo editor who travels a lot, this is a perfect laptop for you.', 1, 12, 0, CAST(0x0000A32D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4801, N'The Alienware MX17 offers no compromises on speed, expandability and the latest graphics available in a laptop form factor, and offers no apologies for battery life and weight.', 4, 13, 0, CAST(0x00009EE400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4802, N'If you are into jet planes, lamborginis and gaming this is the best design for a laptop.', 1, 13, 0, CAST(0x0000A01700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4803, N'with its bold grills and lighting and soft touch finish.', 4, 13, 0, CAST(0x0000A01700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4804, N'with upto 2GB of Nvidia gtx580 graphics card.', 4, 13, 0, CAST(0x0000A01700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4805, N'Battery life on High performance with 3D switched on will give you only 2 hours.', 4, 13, 0, CAST(0x0000A01700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4806, N'But if you are on Balanced without 3D it gives you about 6 to 7 hours.', 4, 13, 0, CAST(0x0000A01700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4807, N'Changing the HD drive and Ram are quite simple.', 1, 13, 0, CAST(0x0000A01700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4808, N'A powerhouse that every gamer should have.', 4, 13, 0, CAST(0x0000A1D100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4809, N'Of course, as with everything, there''s always room for improvement.', 4, 13, 0, CAST(0x0000A1D100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4810, N'But if you need raw power and speed, then go for it.', 4, 13, 0, CAST(0x0000A1D100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4811, N'The next step up if you''re even more hardcore than this might be an Origin Eon17S (http://bit.', 4, 13, 0, CAST(0x0000A1D100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4812, N'I ordered this and paid well over 4000 and man do I regret it.', 1, 13, 0, CAST(0x00009F2300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4813, N'I''d avoid this company at all costs.', 4, 13, 0, CAST(0x00009F2300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4814, N'Best Laptop I Have ever owned.', 1, 13, 0, CAST(0x0000A17F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4815, N'I''m very happy with this purchase.', 4, 13, 0, CAST(0x00009F2400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4816, N'I also like the warranty options that Dell offers.', 4, 13, 0, CAST(0x00009F2400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4817, N'Far better than I''ve seen from the other gaming laptop boutiques.', 1, 13, 0, CAST(0x00009F2400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4818, N'I''m willing to pay for that.', 4, 13, 0, CAST(0x00009F2400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4819, N'It''s not the cheapest gamer out there, but I don''t want to deal with weeks of turnaround by shipping my laptop off to the manufacturer.', 4, 13, 0, CAST(0x00009F2400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4820, N'Video card options need to be improved.', 4, 13, 0, CAST(0x00009F2400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4821, N'More Nvidia options are pretty much required.', 4, 13, 0, CAST(0x00009F2400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4822, N'3D is not something that interested me, but I don''t trust ATI drivers and from reports online, they''re still flaky on this beast with some modern games.', 4, 13, 0, CAST(0x00009F2400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4823, N'I''m not one to buy bleeding edge tech or games, and I expect this to last me a happy, solid three years, by which time I''ll move on to my next laptop.', 2, 13, 0, CAST(0x00009F2400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4824, N'Not cheap, but quality pays big time in this case.', 4, 14, 0, CAST(0x0000A0E100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4825, N'Best Windows 8 laptop I''ve used.', 1, 15, 0, CAST(0x0000A20B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4826, N'A really good compromise between Mac''s quality and Windows laptops power (and games.', 1, 15, 0, CAST(0x0000A20B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4827, N'It looks and feels like a black Macbook.', 4, 15, 0, CAST(0x0000A2C900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4828, N'1) It gets super how around the exhaust vets.', 4, 15, 0, CAST(0x0000A2C900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4829, N'The vents are at the top top of the keyboard built into the hing.', 4, 15, 0, CAST(0x0000A2C900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4830, N'when gaming the metal frame near the hinge can get painful to the touch.', 4, 15, 0, CAST(0x0000A2C900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4831, N'I work at a small tech company and go to school as a CS major.', 2, 15, 0, CAST(0x0000A2C900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4832, N'kinda expected more from a laptop advertising 6 hours and a hanswell chip.', 4, 15, 0, CAST(0x0000A2C900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4833, N'If your also looking for a machine that you can work on the go for a couple hours take your 2 grand else where.', 4, 15, 0, CAST(0x0000A2C900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4834, N'Was very surprised at the speed and responsiveness of Windows 8 on this machine.', 4, 15, 0, CAST(0x0000A21300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4835, N'When gaming, the Blade heats up like a furnace so not great for actually using on your lap.', 2, 15, 0, CAST(0x0000A21300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4836, N'From a design perspective, this rivals even the latest Macbook Pro.', 4, 15, 0, CAST(0x0000A21300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4837, N'Only the cheap display is holding it back imo.', 2, 15, 0, CAST(0x0000A21300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4838, N'The nicest laptop I''ve ever owned.', 4, 18, 0, CAST(0x0000A08500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4839, N'Simply beautiful, and the fantastic service I got from the Apple Store (they just upgraded my 2011 model which was 17 days old with no questions asked) is the icing on an already rather tasty cake.', 1, 18, 0, CAST(0x0000A08500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4840, N'I know some ultrabooks are cheaper or have more ports or more storage, but I am so blown away by this machine that I have no desire to use another laptop again.', 4, 18, 0, CAST(0x0000A0A300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4841, N'In addition to the notes I wrote above, I just want to mention that the speakers are incredible - much better sound quality than the speakers on my 2-year old Vaio Y (which I used to think was thin, but now.', 1, 18, 0, CAST(0x0000A0A300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4842, N'I am new to OSX, but I am happy with most of what OSX offers so far.', 4, 18, 0, CAST(0x0000A0A300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4843, N'WIth 8GB of RAM, it also runs both a WIndows 7 virtual machine very well and Ubuntu 12.', 1, 18, 0, CAST(0x0000A0A300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4844, N'04 machine pretty well in Parallels.', 1, 18, 0, CAST(0x0000A0A300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4845, N'Contrary to my expectation the Macbook Air is doing really good as a dev machine too.', 1, 18, 0, CAST(0x0000A09900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4846, N'It''s however worth noting that 4GB of RAM is too less in today''s scenario.', 1, 18, 0, CAST(0x0000A09900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4847, N'The OS (without any app running) takes closer to a GB.', 4, 18, 0, CAST(0x0000A09900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4848, N'And firefox (sucker) takes 1+ GB of RAM with just a few tabs open.', 4, 18, 0, CAST(0x0000A09900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4849, N'But in general, 4GB is so out of date in today''s hardware scenario.', 4, 18, 0, CAST(0x0000A09900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4850, N'I usually have adobe photoshop &amp; illustrator open, with mail, pages, and a browser with 15+ tabs and this macbook air doesn''t miss a beat.', 4, 18, 0, CAST(0x0000A0E500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4851, N'I do not miss my 15in Macbook Pro.', 4, 18, 0, CAST(0x0000A0E500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4852, N'Battery life is good, I can get about 5-6 hours.', 4, 18, 0, CAST(0x0000A0E500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4853, N'But of course you can hear fan noises when you play game but not that noisy as MacBook Pro.', 4, 18, 0, CAST(0x0000A0DB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4854, N'By the way it has mag-safe 2 connector.', 4, 18, 0, CAST(0x0000A0DB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4855, N'You will need to buy separate connector to use it with previous   mac-safe 1 connector.', 4, 18, 0, CAST(0x0000A0DB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4856, N'Let me know if you have any question about this machine.', 4, 18, 0, CAST(0x0000A0DB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4857, N'When I first started shopping for a laptop I knew exactly what I needed just not what laptop would fit my needs; great battery life, backlit keyboard, usb 3.', 2, 18, 0, CAST(0x0000A14900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4858, N'At first I was looking at the retina MacBook Pro but as this was only an out-and-about laptop, I found I couldn''t justify the cost.', 4, 18, 0, CAST(0x0000A14900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4859, N'The MacBook Air became the obvious choice.', 4, 18, 0, CAST(0x0000A14900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4860, N'It was inexpensive (after seriously considering the rMBP), and it fit all my criteria except the HD display, but the pixel density is the sam as a 15" 1080p.', 4, 18, 0, CAST(0x0000A14900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4861, N'After using this laptop for two months now I am convinced that this laptop was the right choice.', 1, 18, 0, CAST(0x0000A14900000000 AS DateTime))
GO
print 'Processed 500 total records'
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4862, N'But when I first got it it was getting 7+ on lion.', 4, 18, 0, CAST(0x0000A14900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4863, N'Hopefully and update in the future will fix/improve this.', 4, 18, 0, CAST(0x0000A14900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4864, N'Charger - Power Brick - AC Adapter - Its extremely small, easy to fit in a bag, the cable wrapping clips are very useful but make sure to leave a good loop at the top so it does not fray (the loop is good to cary it by as well).', 2, 18, 0, CAST(0x0000A14900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4865, N'Performance - no complaints here, I haven''t noticed any lag whatsoever (opening applications is snappy and moving in-between is smooth).', 4, 18, 0, CAST(0x0000A14900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4866, N'Graphics - Intel 4000 - These graphics built in and the performance is astounding can run all modern games on low which is more than I expected from an air.', 2, 18, 0, CAST(0x0000A14900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4867, N'Then screen doesn''t show as much glare as usual glare-screens do.', 4, 18, 0, CAST(0x0000A14900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4868, N'This killed me, I wanted the piece of mind of not having little bits of dust and hair going in between the lip and screen and travelling in (and not to mention it makes it harder to clean).', 4, 18, 0, CAST(0x0000A14900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4869, N'Getting used to the size took some time but once using apps in full screen and switching panes with a swipe of the fingers alleviated these complaints.', 4, 18, 0, CAST(0x0000A14900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4870, N'Keyboard - it takes a little to adjust too, at first the short travel distance is bearable and after awhile goes unnoticed.', 4, 18, 0, CAST(0x0000A14900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4871, N'All-in-all they were more than expected.', 4, 18, 0, CAST(0x0000A14900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4872, N'IO Ports - 2 USB 3.', 4, 18, 0, CAST(0x0000A14900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4873, N'Both were a huge plus since I bought this laptop expecting neither.', 4, 18, 0, CAST(0x0000A14900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4874, N'Not because this was difficult (actually it is quite easy, just open an applications context menus and you see a list of commands with their corresponding hot-keys), but because their are so many.', 1, 18, 0, CAST(0x0000A14900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4875, N'This is a great solution for average users on the go.', 1, 18, 0, CAST(0x0000A1C100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4876, N'But I would never recommend this laptop for anyone else.', 4, 18, 0, CAST(0x0000A1C100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4877, N'Using IOS device since 4 years.', 4, 18, 0, CAST(0x0000A15B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4878, N'I originally purchased a retina Macbook Pro 15" but returned it because of the image retention problems everyone was facing.', 4, 18, 0, CAST(0x0000A15B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4879, N'Decided to get a Macbook Air 13.', 4, 18, 0, CAST(0x0000A15B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4880, N'Took me 2 week to get used back to a non-retina screen.', 4, 18, 0, CAST(0x0000A15B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4881, N'But after 3 months, I truly feel this Macbook Book Air 13" is an awesome computer.', 2, 18, 0, CAST(0x0000A15B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4882, N'For me, saving more than 1000$ for a stable product (Macbook Air) was a better choice.', 1, 18, 0, CAST(0x0000A15B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4883, N'I was mainly fearing the non retina and smaller 13.', 4, 18, 0, CAST(0x0000A15B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4884, N'It still amaze me, how responsive and fun the macbook air is.', 1, 18, 0, CAST(0x0000A15B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4885, N'I use it mainly at home and for university.', 4, 18, 0, CAST(0x0000A15B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4886, N'I never felt the CPU was slow.', 1, 18, 0, CAST(0x0000A15B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4887, N'It really feel snappy mainly thanks to the SSD.', 4, 18, 0, CAST(0x0000A15B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4888, N'I do strongly recommend an upgrade to 8 Gig of ram.', 4, 18, 0, CAST(0x0000A15B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4889, N'I noticed way too often 4 gig of memory usage only doing Xcode and Safari browsing.', 4, 18, 0, CAST(0x0000A15B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4890, N'Don''t even hesitate, get 8 Gig and the Macbook Air will be a satisfying computer for the next couple of years and will have a much better resale value if needed.', 2, 18, 0, CAST(0x0000A15B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4891, N'At that point operating system will make the difference.', 4, 18, 0, CAST(0x0000A15B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4892, N'For me I was curious about OSX and running Windows in a VM was a good trade out.', 1, 18, 0, CAST(0x0000A15B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4893, N'Now enjoying both OSX and Windows.', 4, 18, 0, CAST(0x0000A15B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4894, N'I bought my 13" MacBook Air when my 2008 MacBook Pro 15" died this summer.', 4, 18, 0, CAST(0x0000A0EB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4895, N'I ordered it with the i7 processor and 8GB''s of memory.', 4, 18, 0, CAST(0x0000A0EB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4896, N'It has the 256GB SSD drive.', 4, 18, 0, CAST(0x0000A0EB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4897, N'It is so lightweight and portable.', 1, 18, 0, CAST(0x0000A0EB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4898, N'I didn''t try any video or photo editing but I guess it will work ok if you are giving it simple tasks such as cropping videos using iMovie or Windows Movie Maker.', 4, 18, 0, CAST(0x0000A07400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4899, N'I think the upgrade is not worth it ($400 for a bit more storage).', 2, 18, 0, CAST(0x0000A07400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4900, N'My roommate wishes that he did purchase the 256GB.', 4, 18, 0, CAST(0x0000A07400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4901, N'The keyboard flexes sometimesNo corner glass displayOS X.', 4, 18, 0, CAST(0x0000A07400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4902, N'lacks a better screen for today standards.', 1, 18, 0, CAST(0x0000A2FA00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4903, N'Great ultrabook, probably the best avaivable on market today.', 1, 18, 0, CAST(0x0000A0A800000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4904, N'The only way to have 2 external monitors is using the expensive apple displays.', 4, 18, 0, CAST(0x0000A0A800000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4905, N'8 on the other hand is dated and somewhat out of touch these days.', 4, 18, 0, CAST(0x0000A1B000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4906, N'One example is where sub application windows vanish, don''t appear in expose &amp; can only be found from the "window" menu of the app in question.', 4, 18, 0, CAST(0x0000A1B000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4907, N'Decision to exclude integrated HDMI output is still baffling, understand it would add a little bit of bulk, but then they could fit a GB interface.', 4, 18, 0, CAST(0x0000A1B000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4908, N'I''m extremely happy with this unit.', 4, 18, 0, CAST(0x0000A09600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4909, N'Almost all my gripes are to do with OS X Lion and not the unit itself.', 4, 18, 0, CAST(0x0000A09600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4910, N'Being able to have something so thin and light as my all-day every-day computer and still being able to drive two 27" displays is amazing.', 1, 18, 0, CAST(0x0000A09600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4911, N'The 8 GB of RAM was a fairly important upgrade for me, but the processor (which I thought would be a really significant bottleneck) never really causes me any grief at all.', 2, 18, 0, CAST(0x0000A09600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4912, N'My old unibody 17" MacBook Pro was a beast of a machine but the weight difference is ridiculous for a negligible performance degradation.', 4, 18, 0, CAST(0x0000A09600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4913, N'I upgraded from a 2010 HP Envy 14 to the 13" MacBook Pro about 3 weeks ago.', 4, 18, 0, CAST(0x0000A09700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4914, N'So, I had an upgraded MBP 13" I was very proud of.', 4, 18, 0, CAST(0x0000A09700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4915, N'Over the next week, I came to realize I should probably return the SSD, RAM, and MBP for a BTO MacBook Air with 8 GB of RAM.', 4, 18, 0, CAST(0x0000A09700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4916, N'This was based on the following:1) Lighter Weight: I carry my laptop everywhere I go, often making 3 or more trips with the laptop in my bag.', 1, 18, 0, CAST(0x0000A09700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4917, N'from the MacBook Pro makes a difference to me, and I''m not a small guy at all.', 1, 18, 0, CAST(0x0000A09700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4918, N'2) Better resolution: The MBP 13" resolution maxes out at 1280x800.', 1, 18, 0, CAST(0x0000A09700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4919, N'The 1440x900 on the MBA is more functional and allows better detail useful for work.', 1, 18, 0, CAST(0x0000A09700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4920, N'Buyers should be aware that the MacBook Pro 13" has a better color gamut though - intensive Photoshop work requiring color accuracy might be better on the MBP.', 1, 18, 0, CAST(0x0000A09700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4921, N'Getting 8GB of RAM would put me in the clear, meaning I would never need or use the maximum of 16GB allowed by the MacBook Pro.', 4, 18, 0, CAST(0x0000A09700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4922, N'4) Comparable performance: The lower clockspeed and voltage of the i5 on the MBA had me concerned at first, but most benchmarks show the MBP i5 outperforming the MBA''s i5 by only about 5-10%.', 4, 18, 0, CAST(0x0000A09700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4923, N'Since I did nothing that required that additional speed and the MBP i5 seemed plenty zippy to me, I decided that the MBA''s i5 wouldn''t be a noticeable downgrade in performance.', 4, 18, 0, CAST(0x0000A09700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4924, N'5) Sufficient disk space: 128GB is plenty for me.', 4, 18, 0, CAST(0x0000A09700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4925, N'Basically, I came to the conclusion that buying the MacBook Air upgraded to 8GB for $100 was a better bang for the buck, with sufficient future proofing, when compared to buying a stock 13" MacBook Pro with user-upgraded SSD and RAM.', 1, 18, 0, CAST(0x0000A09700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4926, N'I got my MacBook Air in the mail last week and returned my MacBook Pro.', 4, 18, 0, CAST(0x0000A09700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4927, N'I don''t often need a laptop as my iPad is my primary mobile device, but sometimes I do.', 2, 18, 0, CAST(0x0000A12D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4928, N'My needs are fairly typical business needs plus technical networking and server work.', 4, 18, 0, CAST(0x0000A12D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4929, N'This machine covers both of those really well.', 1, 18, 0, CAST(0x0000A12D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4930, N'One of the best quality laptop money can buy, been holding to buy it for months, finally pressed the go button and no looking back for it.', 1, 18, 0, CAST(0x0000A0F200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4931, N'i will miss windows, especially windows 8 coming soon, but doesnt matterUpdate (24th March 2013)Should brought the 256GB version if possible, anyway it doesn''t matter, for those who get 128 GB, you will need external storage.', 4, 18, 0, CAST(0x0000A0F200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4932, N'Added a 20GB Windows 7 Bootcamp partitionI added a keyboard protector, a Macbook Sleeve, a Logitech Wireless mouse, a Belkin USB 4-Port Travel Hub, a WD 500GB external HDD.', 4, 18, 0, CAST(0x0000A0F200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4933, N'5 month till now, 60 battery load cycle, 96% max.', 4, 18, 0, CAST(0x0000A0F200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4934, N'So this is my second MBA.', 4, 18, 0, CAST(0x0000A12E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4935, N'I needed absolute portability in my computing device of choice, so the 2010 MBA 11.', 4, 18, 0, CAST(0x0000A12E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4936, N'Now in 2012, my mobile platform of choice is a Nexus 7 with an Apple wireless keyboard for fast typing and the arguments for keeping the MBA 11.', 1, 18, 0, CAST(0x0000A12E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4937, N'That plus I was straining my eyes too much with it.', 4, 18, 0, CAST(0x0000A12E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4938, N'So when I found Apple selling their refurb i7 2.', 4, 18, 0, CAST(0x0000A12E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4939, N'0ghz, 8gb, 256gb SSD Macbook Air mid 2012 model on the Apple store for about $250 less than normal list price, I dived in and bought it.', 4, 18, 0, CAST(0x0000A12E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4940, N'I love almost everything about this device, with two exceptions.', 1, 18, 0, CAST(0x0000A12E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4941, N'The keyboard is nicely lit up (my first), but there''s sacrifice in the keyboard''s feel.', 4, 18, 0, CAST(0x0000A12E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4942, N'On both an Apple wireless keyboard and my 2010 MBA 11.', 4, 18, 0, CAST(0x0000A12E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4943, N'6", the keyboard''s action was exceptional for a chicklet style keyboard - it was solid, I liked the travel and resistance.', 4, 18, 0, CAST(0x0000A12E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4944, N'Just seems more plasticky and flimsy and "soft".', 2, 18, 0, CAST(0x0000A12E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4945, N'Second beef, which prevented me from buying a Macbook Pro Retina, but wasn''t as much of a concern with the MBA is how everything is sealed and non-replaceable.', 4, 18, 0, CAST(0x0000A12E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4946, N'I can accept that on an ultralight I can''t replace the battery or the memory or the hard drive (SSD), but on a normal light notebook, those are unacceptable options for me.', 2, 18, 0, CAST(0x0000A12E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4947, N'Other than these two beefs, everything is roses with this computer.', 4, 18, 0, CAST(0x0000A12E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4948, N'The weight is awesome, the build overall fantastic, and while very expensive in today''s sense compared to other tech out there, getting it $250 off list helped a bit and tipped my "buying" scale to buy it.', 4, 18, 0, CAST(0x0000A12E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4949, N'The 2012 15 inch MacBook Pro without Retina Display is in my opinion, Apple''s best laptop yet.', 2, 19, 0, CAST(0x0000A07100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4950, N'6 Quad Core Ivy Bridge processor, 8 GIG of RAM, up to a 750 GIG Hard Drive (standard hard drive or you can even upgrade to Flash Storage) and all new NVIDIA GeForce graphics.', 4, 19, 0, CAST(0x0000A07100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4951, N'According to GeekBench, it scores upwards of 12000 on 32bit benchmarking.', 4, 19, 0, CAST(0x0000A07100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4952, N'The speakers are loud and include a subwoofer.', 4, 19, 0, CAST(0x0000A07100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4953, N'The battery lasts 7 hours +.', 4, 19, 0, CAST(0x0000A07100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4954, N'Plus, it did not do away with the DVD optical drive.', 4, 19, 0, CAST(0x0000A07100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4955, N'While it does not have the "retina" display, the screen is vibrant and outstanding.', 2, 19, 0, CAST(0x0000A07100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4956, N'You can actually increase the brightness more than you can on the retina model.', 4, 19, 0, CAST(0x0000A07100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4957, N'Also, there are no issues with scaling, and websites and applications looking "blurry" as compared to retina model when most applications and sites have not been optimized for retina display, and who knows when/if they ever will.', 4, 19, 0, CAST(0x0000A07100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4958, N'It is a mistake to overlook this awesome piece of equipment.', 1, 19, 0, CAST(0x0000A07100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4959, N'I actually had the retina model MacBook Pro and took it back to get this one.', 4, 19, 0, CAST(0x0000A07100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4960, N'Yes I was suckered into all of the new bright lights and happiness surrounding the retina model.', 1, 19, 0, CAST(0x0000A07100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4961, N'Then, however, logic set in and I realized this was the best choice.', 1, 19, 0, CAST(0x0000A07100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4962, N'This laptop marked my return to the OS X platform.', 4, 19, 0, CAST(0x0000A07500000000 AS DateTime))
GO
print 'Processed 600 total records'
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4963, N'About 3 years ago I switched to Windows 7 exclusively because I was doing a lot of gaming and could not afford a MacBook Pro at the time.', 4, 19, 0, CAST(0x0000A07500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4964, N'It never quite sat well with me.', 3, 19, 0, CAST(0x0000A07500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4965, N'I decided that IVY Bridge would be when I switched back.', 4, 19, 0, CAST(0x0000A07500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4966, N'I use a laptop for gaming, photography and light video editing in addition to day to day stuff.', 1, 19, 0, CAST(0x0000A07500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4967, N'First I didn''t feel the support for Retina will be there for a while.', 4, 19, 0, CAST(0x0000A07500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4968, N'I didn''t want to buy a laptop that would make things I do look worse.', 1, 19, 0, CAST(0x0000A07500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4969, N'I wasn''t crazy about the downsampling that the Retina does to make the UI usable.', 2, 19, 0, CAST(0x0000A07500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4970, N'I understand it, but I wanted a bit more desktop space than 1440x900.', 4, 19, 0, CAST(0x0000A07500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4971, N'This is why I bought the High-Res Anti-Glare running at 1680x1050.', 4, 19, 0, CAST(0x0000A07500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4972, N'Second, I wanted to be able to expand the laptop.', 4, 19, 0, CAST(0x0000A07500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4973, N'I deal with a large number of RAW photos and need the storage space to support that.', 4, 19, 0, CAST(0x0000A07500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4974, N'I also plan to upgrade the RAM to 16GB eventually.', 4, 19, 0, CAST(0x0000A07500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4975, N'Overall I am very happy with the laptop.', 4, 19, 0, CAST(0x0000A07500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4976, N'I really enjoy being back in OS X for day to day use.', 4, 19, 0, CAST(0x0000A07500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4977, N'Even after 3 years, Windows 7 never felt natural to me for day to day use.', 4, 19, 0, CAST(0x0000A07500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4978, N'unlike the Retina version of the Pro it has Firewire, DVD ROM and network Jack.', 4, 19, 0, CAST(0x0000A09C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4979, N'the Display is good, crisp and clear and it also has some expandability.', 4, 19, 0, CAST(0x0000A09C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4980, N'The Retina and the non Retina both have USB 3, Thunderbolt, and an SDXC Card reader.', 4, 19, 0, CAST(0x0000A09C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4981, N'The non retina also uses the MagSafe 1 connector instead of the new MagSafe 2.', 4, 19, 0, CAST(0x0000A09C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4982, N'I chose to go with the base model (2.', 4, 19, 0, CAST(0x0000A09C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4983, N'3 GHz i7 with 4GB and 500GB HD) of the 15inch MacBook pros because i was going to upgrade the RAM and add an SSD myself instead of getting them from Apple.', 4, 19, 0, CAST(0x0000A09C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4984, N'Now, this machine is not as light or as thin as the Retina model or the Air line.', 3, 19, 0, CAST(0x0000A09C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4985, N'i miss the light and smaller form factor of the Airs but this new 15 inch machine just screams and does everything i need and then some.', 1, 19, 0, CAST(0x0000A09C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4986, N'Now is this something i would recommend to friends and family.', 4, 19, 0, CAST(0x0000A09C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4987, N'Not likely and the reason for that is that its not cheap, not as potable as the Air or even the 13inch Pro and i don’t think most people will need all the horse power of this machine.', 4, 19, 0, CAST(0x0000A09C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4988, N'now if they are going to need a machine that can do some heaving lifting then yes i would recommend it but other wise i will continue to recommend the Air or the 13inch Pro.', 4, 19, 0, CAST(0x0000A09C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4989, N'Brief background: I used an old handed-down Powerbook G4 for several years after my primary home-built desktop gaming machine reached its age limit and I needed to switch to something portable as a traveling musician.', 1, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4990, N'The time I spent with the Powerbook gave me an appreciation for the good things Apple was doing but it was such an old and underpowered machine that I was never able to do more than very restricted workflows with it.', 1, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4991, N'I used that machine for about 4 years before switching to this Macbook Pro.', 4, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4992, N'With an aftermarket upgrade to 8GB of ram, I am once again able to get my web development work done smoothly, and I have been generally pleased to see that OSX has grown up a bit since I last used it.', 4, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4993, N'Positive notes: great battery life for general purposes.', 1, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4994, N'I can unplug it and get some things done for a while without having to fret about getting back to a power outlet, which is what should be expected of a laptop.', 4, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4995, N'the unibody design is durable and attractive.', 1, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4996, N'the last generation of "upgradeable" macbooks, evidently.', 4, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4997, N'I have 8GB and I plan on putting 16GB of ram into this and since my work is not processor-intensive, this hardware should be solid to use for work for years.', 2, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4998, N'I started with the 4GB model and upgraded to 8 since it is much cheaper to DIY.', 4, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (4999, N'Be warned: at 4GB this machine is almost unusable because of OSX memory (mis)management.', 4, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5000, N'Mavericks helped with reducing swap-file usage but at 4GB you are still more or less limited to running single applications if you want to retain responsiveness.', 1, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5001, N'OSX has some great features that are not well-rivaled within other ecosystems.', 1, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5002, N'Negative notes:the built-in mic is embedded underneath the speaker mesh, which means that if you touch that area of the top surface it is like scratching a chalkboard through a megaphone.', 4, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5003, N'the screen is 1440x900 which I guess is "normal" for most laptops but to me is a joke, coming from a much cheaper Dell XPS1640 with a 1080p RGBled display that looks waaaay better.', 2, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5004, N'For such a high-end machine, I wouldn''t expect the default options to be so low-end.', 4, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5005, N'Obviously, the Retina version is seriously worth considering instead of the base version.', 1, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5006, N'I am using an external 1080p display so this is not a major issue for me now, but I dread the moments when I have to do work away from my desk because of the amount of window and workspace switching I constantly have to do.', 4, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5007, N'OSX, despite its many merits, has some horrible UX in places, arbitrary technical limitations, and is full of annoying behaviors (that you can''t change).', 2, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5008, N'The usage-blocking "beachball" appears under circumstances that other operating systems don''t block on, which makes it much more frustrating to attempt to use the system to its fullest, which is what I''m used to doing on Windows and Linux.', 4, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5009, N'The base configuration with 4GB of ram and a 5400rpm HDD is unbearably slow to use for more than one application at a time, which is just pathetic given how powerful the hardware is.', 3, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5010, N'It is all OSX''s memory usage/management.', 4, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5011, N'The kernel process alone uses up a over a gigabyte, and background services and a handful of the most common utility apps eat up another easily.', 4, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5012, N'I found that booting up iTunes and more than a couple of Chrome tabs at a time would run over the 4 gigs and start hitting swap, at which point the whole system becomes very unresponsive.', 2, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5013, N'The outer top edge of the wrist-rest surface is somewhat sharp and coarse and really hurts my wrists if I rest them on it for any period of time.', 4, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5014, N'It seems as if they never expected people to try to use this machine without an external mouse and keyboard, or flat against a desk surface.', 4, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5015, N'This was an aesthetic decision from Apple, as my previous laptop had an edge made of the exact same material, but was angled and rounded enough that it at least took some time before it became irritating to my wrists.', 4, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5016, N'Normally, it makes sense to be energy-efficient when unplugged, but there are also reasons to unleash the full power of the hardware to get stuff done more quickly (or play games).', 2, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5017, N'I am deeply irritated by the idea that Apple chooses for me how and when I have access to the machine''s full potential, with no option to choose for myself.', 4, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5018, N'Traditionally, when the laptop battery fails, it just becomes tethered to a power adapter and can be used like a compact desktop.', 4, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5019, N'Overall, it''s a great machine, and I can understand why they have become so popular.', 1, 19, 0, CAST(0x0000A27000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5020, N'If you don''t "need" retina, this is your best option.', 2, 19, 0, CAST(0x0000A1EF00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5021, N'Very powerful, very portable, and all around a great laptop for work and play.', 1, 19, 0, CAST(0x0000A1EF00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5022, N'Having had a PowerBook G4 and a Acer Ferrari 3200 as my to main laptop I love this Macbook now that I can run Windows and OSX from the same platform.', 1, 19, 0, CAST(0x0000A08D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5023, N'The battery life on this device is Amazing I have had it last me over 8 hours one day.', 1, 19, 0, CAST(0x0000A08D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5024, N'It''s obviously pricy but it easily outperforms almost all other laptops and never lets me down.', 4, 19, 0, CAST(0x0000A29100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5025, N'Also like the super fast boot up and resume from sleep.', 1, 20, 0, CAST(0x00009EBC00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5026, N'Wish I couold get a bigger SSD, but otherwise, near perfect for me.', 2, 20, 0, CAST(0x00009EBC00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5027, N'A very good all round performer.', 1, 22, 0, CAST(0x0000A02100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5028, N'I have this with a 256 GB SSD, core i5 and 4GB of RAM.', 4, 22, 0, CAST(0x0000A17B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5029, N'The fact it doesn''t heat up my lap like every other laptop I have ever owned is wonderful.', 2, 22, 0, CAST(0x0000A17B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5030, N'I only wish I had gotten the i7 processor and a larger hard drive at the time of purchase.', 4, 22, 0, CAST(0x0000A17B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5031, N'The small screen is clear and low weight more than makes up for a smaller screen.', 2, 22, 0, CAST(0x0000A17B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5032, N'It has better battery life than any laptop I have ever used.', 1, 22, 0, CAST(0x0000A17B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5033, N'I have read that MAC books have better battery life but somehow whenever I look at the price of a MAC I look somewhere else.', 1, 22, 0, CAST(0x0000A17B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5034, N'This laptop has been with me for over a year and it is just great.', 1, 22, 0, CAST(0x0000A28F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5035, N'Battery lasts for a full working day and because of the SSD startup is less than 30seconds.', 4, 22, 0, CAST(0x0000A28F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5036, N'Had this laptop since it first came out over 2 years ago and it''s by far the best I''ve ever had.', 1, 22, 0, CAST(0x0000A35D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5037, N'As a software developer, I''m always on the go and in need of really powerful machines.', 1, 22, 0, CAST(0x0000A35D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5038, N'First, this is the very first HP laptop that I actually like.', 4, 23, 0, CAST(0x0000A02D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5039, N'Typically, I don''t even consider HP laptops when giving laptop recommendations because they''re usually so tacky looking and cheap feeling.', 1, 23, 0, CAST(0x0000A02D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5040, N'Despite the Hunger Games logo on it, the laptop looked really good.', 1, 23, 0, CAST(0x0000A02D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5041, N'I especially like how it''s much thinner compared to my ThinkPad.', 1, 23, 0, CAST(0x0000A02D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5042, N'The only good thing about the keyboard is that it''s backlit.', 1, 23, 0, CAST(0x0000A02D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5043, N'The trackpad is also another turn-off for me.', 4, 23, 0, CAST(0x0000A02D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5044, N'It''s better than most other HP trackpads but the pseudo-MacBook like trackpad just didn''t feel right and was a little too stiff when clicking in my opinion.', 3, 23, 0, CAST(0x0000A02D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5045, N'Lastly, my biggest complaint is the screen.', 4, 23, 0, CAST(0x0000A02D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5046, N'For a laptop that seems to scream out "high end" design wise, the screen only has a native resolution of 1366 x 768, glossy, and have very bad viewing angles.', 2, 23, 0, CAST(0x0000A02D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5047, N'If the screen was at least 1600 x 900, I''d give this laptop an 8.', 4, 23, 0, CAST(0x0000A02D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5048, N'Also i have to use a USB dock which is basically a USB hub for the KB and Mouse and then a separate HDMI cable for the monitor otherwise the resolution through the USB dock is unworkable.', 4, 23, 0, CAST(0x0000A01C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5049, N'Other than that i''m very happy with it so far but only used it for a week.', 4, 23, 0, CAST(0x0000A01C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5050, N'This is a great Ultrabook and I''ve tried nearly all of the ones in market today.', 1, 23, 0, CAST(0x0000A00D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5051, N'What makes it stand out from the crowd is the great battery life, the USB3 and HDMI-ports, the back lit keyboard and the professional design.', 1, 23, 0, CAST(0x0000A00D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5052, N'Bought this paying cash from Best Buy as lenovo.', 1, 25, 0, CAST(0x0000A41000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5053, N'com did not accept debit cards.', 4, 25, 0, CAST(0x0000A41000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5054, N'I was disappointed that all their (Best Buy) Yoga 3 models only had windows 8.', 2, 25, 0, CAST(0x0000A41000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5055, N'I wish the power button was recessed to prevent accidental push sending it into sleep when in tablet mode, when resting on your lap.', 4, 25, 0, CAST(0x0000A41000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5056, N'You can rotate the tablet around to avoid that of course.', 4, 25, 0, CAST(0x0000A41000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5057, N'Firefox with a bunch of addons runs great, as well as every youtube video I clicked.', 1, 25, 0, CAST(0x0000A41000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5058, N'I like the fact the back cover has screws.', 4, 25, 0, CAST(0x0000A41000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5059, N'The SSD has a lot of partitions on it, and I am not sure what they are all for yet.', 4, 25, 0, CAST(0x0000A41000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5060, N'The Yoga 3 feels sturdy, and is very light.', 1, 25, 0, CAST(0x0000A41000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5061, N'The screen brightness has a very large range from very bright to very dim (if you set it to manual in windows and use the function keys).', 1, 25, 0, CAST(0x0000A41000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5062, N'I have no issues with the keyboard.', 4, 25, 0, CAST(0x0000A41000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5063, N'The only game I have tested out is Europa Universalis IV which plays fine.', 4, 25, 0, CAST(0x0000A41000000000 AS DateTime))
GO
print 'Processed 700 total records'
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5064, N'The SD card slot on the side is a short one (shallow), so I am currently looking for a short or half size micro scdard adapter to avoid the sdcard sticking way out.', 4, 25, 0, CAST(0x0000A41000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5065, N'Back-light keyboard is a nice luxury, and the large touch pad works great.', 1, 25, 0, CAST(0x0000A41000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5066, N'The power adapter is 120-240v input and output is 20v 2A or 5.', 4, 25, 0, CAST(0x0000A41000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5067, N'2V 2A according to the label on it.', 4, 25, 0, CAST(0x0000A41000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5068, N'This convertible may surprise you on what it can run mind you its size.', 4, 25, 0, CAST(0x0000A41000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5069, N'Keep in mind I don''t think it is supposed to compete with your desktop computer.', 4, 25, 0, CAST(0x0000A41000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5070, N'The wifi AC and Bluetooth 4.', 4, 25, 0, CAST(0x0000A41000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5071, N'There is a recessed button near the power button to get to BIOS settings when powered off.', 4, 25, 0, CAST(0x0000A41000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5072, N'Not a whole lot to play with in there- fairly basic.', 4, 25, 0, CAST(0x0000A41000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5073, N'Disclaimer- I run windows with windows appearance settings set to low (performance), no pagefile, no antivirus/defender, updates or system restore in use or running.', 2, 25, 0, CAST(0x0000A41000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5074, N'Also I deleted allot of stuff at startup using the program autoruns, as well as most bloatware.', 1, 25, 0, CAST(0x0000A41000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5075, N'Recommend to get it best deal at: Seebestdeals.', 1, 25, 0, CAST(0x0000A41000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5076, N'The Yoga 3 Pro is pretty darn awesome.', 1, 25, 0, CAST(0x0000A3C600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5077, N'I did an extensive video review of this ultraportable Lenovo device if you want some specifics.', 4, 25, 0, CAST(0x0000A3C600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5078, N'I''m so satisfied with this awesome device.', 1, 26, 0, CAST(0x0000A36300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5079, N'Light weight and an all day battery, what could I wish for more.', 1, 26, 0, CAST(0x0000A36300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5080, N'Well a little bit more speed would be great thus I suffer from small lags sometimes.', 1, 26, 0, CAST(0x0000A36300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5081, N'Also a Retina Display with a black edge to edge display frame would be the non-plus-ultra.', 4, 26, 0, CAST(0x0000A36300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5082, N'No CD drive to burn music for the car, small hard drive meaning no more massive iTunes and iPhoto library space on board - or space for too many movies.', 1, 26, 0, CAST(0x0000A3E700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5083, N'I am still struggling with setting up my iTunes and iPhoto libraries on external hard drives, and may resort to buying software to manage this.', 4, 26, 0, CAST(0x0000A3E700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5084, N'The battery life is very impressive.', 1, 26, 0, CAST(0x0000A3E700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5085, N'Have installed Yosemite and still haven''t fully decommissioned the old MacBook.', 4, 26, 0, CAST(0x0000A3E700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5086, N'It has 2 USB3 ports one on each side, 128 SSD, 4GB of RAM, touchscreen and a backlit keyboard.', 4, 28, 0, CAST(0x0000A26A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5087, N'This is a solidly built compact and powerful machine with an amazing display.', 1, 28, 0, CAST(0x0000A26A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5088, N'3-inch Quad HD+ screen is really its stand out feature.', 4, 28, 0, CAST(0x0000A26A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5089, N'It has a resolution of 3200 x 1800 pixels, and 275 pixels per inch.', 4, 28, 0, CAST(0x0000A26A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5090, N'For me this machine is a secondary computer that i can take with me through out the day to take notes, run the office suite, deal with e-mail and do some web browsing.', 4, 28, 0, CAST(0x0000A26A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5091, N'I don’t use it for any heavy lifting.', 2, 28, 0, CAST(0x0000A26A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5092, N'Not that it can’t be some ones primary machine.', 4, 28, 0, CAST(0x0000A26A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5093, N'with the recently released winnows 8.', 4, 28, 0, CAST(0x0000A26A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5094, N'1 update i find that i like windows 8 more and find it more user friendly.', 4, 28, 0, CAST(0x0000A26A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5095, N'Here is where i run into problems with this machine.', 4, 28, 0, CAST(0x0000A26A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5096, N'For most people this is not a computer i would recommend.', 4, 28, 0, CAST(0x0000A26A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5097, N'After multiple shipping delays, I finally received my ATIV Book 9 Plus earlier this week.', 4, 28, 0, CAST(0x0000A23E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5098, N'Originally chosen (after its announcement in June) as my new laptop for grad school, it was frustrating to wait so long into the school year for its release and eventual shipment.', 4, 28, 0, CAST(0x0000A23E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5099, N'After a few days with the device, the delays make a little more sense.', 4, 28, 0, CAST(0x0000A23E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5100, N'The software (*cough* Windows 8 *cough*) isn’t quite ready for this laptop.', 1, 28, 0, CAST(0x0000A23E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5101, N'Its weight and solid construction will be perfect for throwing into both briefcase and backpack.', 1, 28, 0, CAST(0x0000A23E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5102, N'It is the level of quality you would expect from a laptop at this price point.', 4, 28, 0, CAST(0x0000A23E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5103, N'They’re also made of a fingerprint-loving, grease-collecting, and overall cheap feeling plastic.', 2, 28, 0, CAST(0x0000A23E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5104, N'The trackpad, on the other hand, is very solid and smooth and pleasant to work with.', 1, 28, 0, CAST(0x0000A23E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5105, N'I’m not a huge fan of the default right-click on the bottom right portion of the track pad, but I’ll either get used to it or figure out how to disable it in favor of the two-finger click.', 2, 28, 0, CAST(0x0000A23E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5106, N'The screen is easily the best I’ve ever seen on a laptop.', 1, 28, 0, CAST(0x0000A23E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5107, N'The glare can be irritating, but it doesn’t interfere with everyday use.', 4, 28, 0, CAST(0x0000A23E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5108, N'There are multiple high-resolution laptops on their way to the market, and it’s clear to me now why the other manufacturers have chosen to hold off on their release.', 4, 28, 0, CAST(0x0000A23E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5109, N'I spent one day using the laptop with its original Windows 8 installation and found that, aside from the preinstalled software, nothing ran with a comfortable level of scaling.', 1, 28, 0, CAST(0x0000A23E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5110, N'1 preview helped with a lot of the issues, but I continue to have problems with pieces of software, or elements within a program, requiring me to lean forward and squint.', 4, 28, 0, CAST(0x0000A23E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5111, N'I have perfect vision, but feel like my like a little old man hunched over in front of this laptop trying to take notes in class.', 1, 28, 0, CAST(0x0000A23E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5112, N'The Haswell processor inside was actually my primary reason for choosing this laptop.', 4, 28, 0, CAST(0x0000A23E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5113, N'The i5 chip, along with the 4GB of RAM I’m stuck with (literally…they’re soldered in there) have no problem completing every task I throw at it.', 4, 28, 0, CAST(0x0000A23E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5114, N'With lots of Alt-Tabs and several screen swipes, I keep this laptop active and engaged for my entire 3-hour class without a single stutter.', 4, 28, 0, CAST(0x0000A23E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5115, N'I don’t keep the brightness cranked (probably 60%) and I’m always connected to Wi-Fi.', 4, 28, 0, CAST(0x0000A23E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5116, N'I wish I could say I was completely happy with this purchase.', 4, 28, 0, CAST(0x0000A23E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5117, N'It’s a very impressive piece of hardware, but the short-comings of Windows 8 have robbed me of the satisfaction I think I should feel after having waited this long and spent the kind of money I did.', 1, 28, 0, CAST(0x0000A23E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5118, N'This laptop is so awesome I decided to write a review, and I am a college student who has time for nothing (besides studying and going out for drinks).', 1, 28, 0, CAST(0x0000A3F100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5119, N'I like it better than I like macbooks, which is what everyone else has.', 1, 28, 0, CAST(0x0000A3F100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5120, N'It has a touchscreen (which macbooks do not) and it has the easiest/best dual screen output system and runs my engineering programs faster than our high powered PC''s at the engineering school.', 1, 28, 0, CAST(0x0000A3F100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5121, N'Just make sure you know how to change scaling size for the screen, some programs aren''t optimized for this high of a resolution yet.', 4, 28, 0, CAST(0x0000A3F100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5122, N'Touchpad is big and responsive, but has some software issues that Samsung need to address.', 4, 29, 0, CAST(0x0000A1BD00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5123, N'Still I prefer to use a separate mouse for this.', 4, 29, 0, CAST(0x0000A1BD00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5124, N'Im very impressed with this machine, but I come from 2 year old Samsung that has terrible construction, terrible screen and even worst battery life.', 3, 29, 0, CAST(0x0000A1BD00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5125, N'PS: excuse me for my terrible English.', 2, 29, 0, CAST(0x0000A1BD00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5126, N'I had a coworker who would go on and on about how macs were worth their superiority surcharge because the build quality could not be found anywhere in the PC world.', 1, 29, 0, CAST(0x0000A34600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5127, N'I told him theres a PC for pretty much anything.', 4, 29, 0, CAST(0x0000A34600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5128, N'I saw this thing at best buy and could not believe the specs for the price.', 1, 29, 0, CAST(0x0000A34600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5129, N'It has every feature I could ever want from a backlit keyboard to a slot loading DVD drive.', 4, 29, 0, CAST(0x0000A34600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5130, N'The battery lasts the duration of cross country flights.', 4, 29, 0, CAST(0x0000A34600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5131, N'Two and a half years later I still have plenty of hard drive space.', 4, 29, 0, CAST(0x0000A34600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5132, N'I have never had a computer this old where I felt it had stood the test of time.', 4, 29, 0, CAST(0x0000A34600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5133, N'If I were to buy this laptop today I''m almost certain I would do it again and I don''t think the $1100 price tag would be unreasonable.', 4, 29, 0, CAST(0x0000A34600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5134, N'The 8 cores, 8 gigs of RAM, and the graphics card that was one of the fastest two and a half years ago have been more than substantial for anything I''ve needed to do.', 1, 29, 0, CAST(0x0000A34600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5135, N'I didn''t realize for an embarrassingly long time that the touchpad was multitouch and replicated things that you usually do on smartphones.', 4, 29, 0, CAST(0x0000A34600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5136, N'You can also press anywhere on the touchpad and click with a tactile response which is nice.', 1, 29, 0, CAST(0x0000A34600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5137, N'It has plenty of usb ports.', 4, 29, 0, CAST(0x0000A34600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5138, N'All in all 2 and a half years into it this device feels like its brand new.', 4, 29, 0, CAST(0x0000A34600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5139, N'They offer very really great spec with cheaper price (17-3610QM+GTX670m) But seem to be have problem with color coating and keyboard too weak.', 1, 30, 0, CAST(0x0000A21E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5140, N'The best laptop I''ve ever owned.', 1, 31, 0, CAST(0x0000A0DB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5141, N'Comparable to contemporary MacBook Pros in durability and screen quality.', 4, 31, 0, CAST(0x0000A0DB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5142, N'Though this FHD 1920 x 1080 screen is much higher resolution than the traditional MacBook Pros, it has lower resolution than the Retina MacBook Pro.', 1, 31, 0, CAST(0x0000A0DB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5143, N'The keyboard is awesome and definitely not something you can get on lesser laptops.', 1, 31, 0, CAST(0x0000A0DB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5144, N'The entire device feels very solid and substantial.', 1, 31, 0, CAST(0x0000A0DB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5145, N'I would love for it to be a bit thinner, but for the specs I wanted (especially the high-resolution screen) this is the only way I could get them.', 1, 31, 0, CAST(0x0000A0DB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5146, N'I just use the embedded Intel HD4000 graphics and it just works.', 4, 31, 0, CAST(0x0000A0DB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5147, N'Second ThinkPad purchase was a T530.', 4, 31, 0, CAST(0x0000A0DD00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5148, N'The unit I received had a couple of problems though, the keyboard required a replacement because the left Control key wasn''t working properly.', 4, 31, 0, CAST(0x0000A0DD00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5149, N'The laptop also required a motherboard replacement to fix the awful smell that was coming from the vent after the first month.', 2, 31, 0, CAST(0x0000A0DD00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5150, N'In both cases, Lenovo support was excellent and easy to deal with.', 1, 31, 0, CAST(0x0000A0DD00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5151, N'I was in the market for laptops for my twins heading off to college.', 4, 32, 0, CAST(0x0000A4A000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5152, N'There were PC''s rated for specific majors, mostly math based, i.', 4, 32, 0, CAST(0x0000A4A000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5153, N'First time buying a MacBook and am very impressed.', 1, 32, 0, CAST(0x0000A49700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5154, N'Performance is great, with an awesome display.', 1, 32, 0, CAST(0x0000A49500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5155, N'The size is perfect for taking to work.', 1, 32, 0, CAST(0x0000A49500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5156, N'good performance in a small and lightweight footprint.', 1, 32, 0, CAST(0x0000A49000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5157, N'Apple MacBook has amazing storage space.', 1, 32, 0, CAST(0x0000A46300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5158, N'I recommend All Apple products are the best quality.', 1, 32, 0, CAST(0x0000A46200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5159, N'I am happy with the speed.', 1, 33, 0, CAST(0x0000A4A000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5160, N'Owned the laptop for about a month now, and this is my experience with it so far.', 4, 33, 0, CAST(0x0000A46F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5161, N'Based on my experience I can say I am very pleased with it at this time.', 1, 33, 0, CAST(0x0000A46F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5162, N'I don''t think the website specs and description do it justice.', 4, 33, 0, CAST(0x0000A46F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5163, N'* Noise: It doesn''t run too loud even when the fans are running at full throttle.', 4, 33, 0, CAST(0x0000A46F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5164, N'* Weight: The laptop is not too heavy and it is slimmer than i expected.', 1, 33, 0, CAST(0x0000A46F00000000 AS DateTime))
GO
print 'Processed 800 total records'
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5165, N'The Best Buy website does not accurately display this information in my opinion.', 1, 33, 0, CAST(0x0000A46F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5166, N'* Lots of ports: An advantage to having a large chassis is that it has a lot of useful ports available so there is no real need for a docking station.', 1, 33, 0, CAST(0x0000A46F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5167, N'* It comes with a free case to carry the laptop in.', 4, 33, 0, CAST(0x0000A46F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5168, N'Handles multiple apps with no lag.', 1, 33, 0, CAST(0x0000A46F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5169, N'* Keyboard lights up with different color schemes which can be customized.', 4, 33, 0, CAST(0x0000A46F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5170, N'* The keyboard has a nice feel to it also and is easy to type on though an external keyboard may still be preferred for longer usages because obviously it is not ergonomic and there is no real wrist rest.', 1, 33, 0, CAST(0x0000A46F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5171, N'Disadvantages:* I think this applies to any laptop, but having an external monitor available for long viewing periods is probably recommended given the fact that the screen is not eye level.', 4, 33, 0, CAST(0x0000A46F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5172, N'* It is too big to fit in most 17&quot; laptop bags/backpacks, and the case it comes with does not allow for space to include the power supply or other accessories.', 4, 33, 0, CAST(0x0000A46F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5173, N'* Battery life is not super.', 4, 33, 0, CAST(0x0000A46F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5174, N'It will run on balance performance setting for maybe 90 min.', 4, 33, 0, CAST(0x0000A46F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5175, N'before shutting down in my experience.', 4, 33, 0, CAST(0x0000A46F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5176, N'* The power cord plugs in on the right side of the computer.', 1, 33, 0, CAST(0x0000A46F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5177, N'Being right-handed it would be nice if it were on the left side.', 1, 33, 0, CAST(0x0000A46F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5178, N'However, it is not a huge issue, and for left-handed persons this could be an advantage.', 2, 33, 0, CAST(0x0000A46F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5179, N'It is my opinion that they should be above the keyboard.', 4, 33, 0, CAST(0x0000A46F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5180, N'Laptop was received faster than promised, installation of additional software was seamless.', 1, 33, 0, CAST(0x0000A45D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5181, N'Boot up and shutdown extremely fast, processing speeds are so very responsive.', 1, 33, 0, CAST(0x0000A45D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5182, N'I am very pleased with the overall performance of this laptop.', 1, 33, 0, CAST(0x0000A45D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5183, N'Super portable for a 17&quot; laptop.', 1, 33, 0, CAST(0x0000A45D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5184, N'What an upgrade from my hp laptop.', 4, 34, 0, CAST(0x0000A49E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5185, N'I buy everything from best buy and this did not disappoint me.', 1, 34, 0, CAST(0x0000A49E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5186, N'This was recommended and I am happy I went with it.', 1, 34, 0, CAST(0x0000A49E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5187, N'I bought this to replace my 17&quot; Dell touch screen with Windows 8 that had gotten damaged.', 2, 34, 0, CAST(0x0000A48A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5188, N'This is not touch screen and has Windows 7 on it.', 4, 34, 0, CAST(0x0000A48A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5189, N'I like it soooo much better.', 1, 34, 0, CAST(0x0000A48A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5190, N'I didn''t like Windows 8 and the touch screen turned out to be a bit of a pain.', 2, 34, 0, CAST(0x0000A48A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5191, N'I would highly recommend this laptop.', 1, 34, 0, CAST(0x0000A48A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5192, N'Great people to work with, understood everything I wanted and needed.', 1, 34, 0, CAST(0x0000A48300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5193, N'I got an upgrade to a 6930p Elitebook for free, which is wonderful.', 1, 35, 0, CAST(0x0000A43C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5194, N'The laptop is a sturdy aluminum with a fingerprint bio-metric on it.', 1, 35, 0, CAST(0x0000A43C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5195, N'The laptop was well packed and came via fedex on the date estimated.', 1, 35, 0, CAST(0x0000A43C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5196, N'The power cord was of course included and is also in good condition.', 1, 35, 0, CAST(0x0000A43C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5197, N'I called the company a few times with different questions and everyone was very helpful.', 1, 35, 0, CAST(0x0000A43C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5198, N'This is nice because you can call back and talk to the same person if you need to.', 1, 35, 0, CAST(0x0000A43C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5199, N'They''re based in Florida and it''s nice to know my money is supporting U.', 1, 35, 0, CAST(0x0000A43C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5200, N'This is a used corporate PC probably issued to a sales person.', 4, 35, 0, CAST(0x0000A30000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5201, N'It has been used a lot because the shift key and space bar have been rubbed smooth.', 1, 35, 0, CAST(0x0000A30000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5202, N'It lacks the software that you get on a new PC but came with lots of fine freeware - Thunderbird, the Apachee software, and Microsoft security.', 2, 35, 0, CAST(0x0000A30000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5203, N'It came up fine and works fine.', 1, 35, 0, CAST(0x0000A30000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5204, N'It runs Win 7, cost one third of the price of a new laptop, and it works.', 4, 35, 0, CAST(0x0000A30000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5205, N'I am very pleased and, if you get the same quality I got, you will be, too.', 1, 35, 0, CAST(0x0000A30000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5206, N'It works right out of the box, handles applications, browsing the internet and even watching HD movies online without a hiccup with only 4gb of memory installed, I''m impressed movies are smooth playing.', 1, 36, 0, CAST(0x0000A44500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5207, N'1 is fine while I''m used to windows 7 on my desktop and on my old 2007 Sony Vaio laptop.', 1, 36, 0, CAST(0x0000A44500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5208, N'I''ve been searching for laptop to replace my aging Sony Vaio since August of 2014 at different online stores, but when I saw this HP model at Best Buy online store it caught my attention as I read the specs.', 2, 36, 0, CAST(0x0000A44500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5209, N'and the price as well even though Best Buy don''t have it on display in their store but I ordered it online anyway on the evening of President''s Day and I received it on Wed.', 1, 36, 0, CAST(0x0000A44500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5210, N'of free s/h, well packaged too.', 1, 36, 0, CAST(0x0000A44500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5211, N'Great job Best Buy your name really says it all.', 1, 36, 0, CAST(0x0000A44500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5212, N'I''m planning to upgrade the memory later to get all the potentials of this laptop.', 4, 36, 0, CAST(0x0000A44500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5213, N'It feels good to know that I made the right choice for my needs.', 1, 36, 0, CAST(0x0000A44500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5214, N'Display is bright, clear and vivid.', 1, 36, 0, CAST(0x0000A44500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5215, N'Overall, this new HP Pavilion laptop model 17-F230NR is worth every penny.', 1, 36, 0, CAST(0x0000A44500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5216, N'I enjoyed test driving this laptop since I have it for two days now.', 4, 36, 0, CAST(0x0000A44500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5217, N'I spent several hours researching online and then several more walking around the Best Buy store getting a feel for all the different form factors available.', 1, 37, 0, CAST(0x0000A47100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5218, N'The Dell display was the last one I visited in Best Buy only because I didn''t believe they were going to have anything that could compete with Asus and Lenovo.', 1, 37, 0, CAST(0x0000A47100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5219, N'I was amazed at the fit and finish of the Inspiron and the specs it offered for the money.', 4, 37, 0, CAST(0x0000A47100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5220, N'I joked with the Best Buy rep that I couldn''t believe I was walking out with a Dell.', 1, 37, 0, CAST(0x0000A47100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5221, N'I was still a bit skeptical thinking I might run into issues while setting it up and kept the return policy in the back of my head.', 4, 37, 0, CAST(0x0000A47100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5222, N'The only gripe is that when using the buttons on the track pad, it can be a bit sensitive and jumpy, but certainly not a deal breaker.', 2, 37, 0, CAST(0x0000A47100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5223, N'No one makes a perfect laptop and if that is the biggest issue I have with this one, especially for the money and how well everything else performs, it is a winner in my book.', 2, 37, 0, CAST(0x0000A47100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5224, N'This is a great 2-in-1 computer.', 1, 37, 0, CAST(0x0000A47000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5225, N'It is large enough to use as a regular computer, yet not too large to use as a tablet.', 4, 37, 0, CAST(0x0000A47000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5226, N'For $750 this beats all the other 2-in-1s I had a chance to try out and in my opinion is much better than paying another $50 for an outdated, very basic MacBook that doesn''t have half the features this computer has.', 1, 37, 0, CAST(0x0000A47000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5227, N'The speed is fast， and the touch screen is convienient.', 4, 37, 0, CAST(0x0000A46100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5228, N'But I have to say that there are a little bug with the purchase.', 4, 37, 0, CAST(0x0000A46100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5229, N'First, it would appear screen flicker ocassionaly when not connected to power supply.', 2, 37, 0, CAST(0x0000A46100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5230, N'Second，the PC system would crash sometimes.', 4, 37, 0, CAST(0x0000A46100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5231, N'I want to return the purchase, but it has been 30 days return period, so I gave up.', 4, 37, 0, CAST(0x0000A46100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5232, N'BB price matched a competitor''s sale price so it was a sweet deal.', 4, 37, 0, CAST(0x0000A45200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5233, N'I was very much looking forward to getting this laptop.', 4, 37, 0, CAST(0x0000A44B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5234, N'Best Buy delivered very fast, but that was the only good experience I have with this laptop.', 3, 37, 0, CAST(0x0000A44B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5235, N'I followed a bunch of Windows updates and restarted every time it was required.', 4, 37, 0, CAST(0x0000A44B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5236, N'At some point it looked like I finally got it running, several restarts with no blue screen.', 1, 37, 0, CAST(0x0000A44B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5237, N'And from then on I got blue screens again.', 4, 37, 0, CAST(0x0000A44B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5238, N'No, this is not for me.', 4, 37, 0, CAST(0x0000A44B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5239, N'I am resetting it right now to factory settings and back it goes.', 1, 37, 0, CAST(0x0000A44B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5240, N'As a college student, I needed a fast, reliable, and light computer.', 1, 37, 0, CAST(0x0000A44300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5241, N'This computer is easy to use and I can take it anywhere with no hassle.', 1, 37, 0, CAST(0x0000A44300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5242, N'I have no issues with the computer but having to download updated sound software from dell.', 4, 37, 0, CAST(0x0000A44300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5243, N'I thought the battery life would be a bit better or I would have gave it 5 stars.', 1, 37, 0, CAST(0x0000A44300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5244, N'Logging and in is fast, monitor size is perfect and the quality is good.', 1, 37, 0, CAST(0x0000A44200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5245, N'I bought it for traveling, to replace my 8 year old Sony laptop.', 4, 37, 0, CAST(0x0000A44200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5246, N'3 1/2 lbs is a little heavier than I thought, though.', 4, 37, 0, CAST(0x0000A44200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5247, N'The keyboard has a nice touch to it and I was surprised to see it light up.', 1, 37, 0, CAST(0x0000A44200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5248, N'I''m not a techie by any means and I found it very easy to set up.', 2, 37, 0, CAST(0x0000A44200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5249, N'I''ve tried a Surface, two different Lenovo''s including their Ultrabook and this Dell is the only one that did not give me any problems and does everything the others did and more.', 1, 37, 0, CAST(0x0000A42B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5250, N'I had nothing but headaches with connecting a bluetooth speaker to the Lenovo''s and Geek Squad was no help in resolving the problems nor Lenovo, Dell''s worked like a charm.', 1, 37, 0, CAST(0x0000A42B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5251, N'Thanks Dell for taking the frustration out of my life.', 4, 37, 0, CAST(0x0000A42B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5252, N'Overall, this is a very fast laptop.', 1, 37, 0, CAST(0x0000A41500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5253, N'It''s also super light and quiet.', 1, 37, 0, CAST(0x0000A41500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5254, N'Exactly what I was looking for.', 4, 37, 0, CAST(0x0000A41500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5255, N'This computer is one of the best computers that I have ever owned.', 1, 37, 0, CAST(0x0000A40F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5256, N'I highly recommend this laptop to everyone.', 1, 37, 0, CAST(0x0000A40F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5257, N'1, this computer has performed above and beyond my expectations.', 1, 38, 0, CAST(0x0000A46600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5258, N'It continues to boot up, quickly, and it handles multiple tasks without any problem.', 1, 38, 0, CAST(0x0000A46600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5259, N'I will gladly recommend this computer to anybody.', 1, 38, 0, CAST(0x0000A46600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5260, N'Getting used to the Google suite of apps, but I knew what I was getting in to.', 4, 39, 0, CAST(0x0000A44300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5261, N'I still use my windows pc for some things, but as a secondary, portable, battery friendly device, you can''t beat this machine.', 4, 39, 0, CAST(0x0000A44300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5262, N'I plan on keeping this laptop around for about 3 years before looking to upgrade.', 4, 40, 0, CAST(0x0000A40A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5263, N'Using for testing so needed this configuration, it seems to be in great condition.', 1, 41, 0, CAST(0x0000A3F400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5264, N'So I received my macbook today.', 4, 42, 0, CAST(0x0000A3D200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5265, N'I was bit nervous about ordering a refurbished computer from an unknown seller but Im glad i purchased my macbook from this seller.', 2, 42, 0, CAST(0x0000A3D200000000 AS DateTime))
GO
print 'Processed 900 total records'
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5266, N'No disappointments thus far &amp; Microsoft was already installed.', 1, 42, 0, CAST(0x0000A3D200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5267, N'Thank you, your service is very much appreciated.', 1, 42, 0, CAST(0x0000A3D200000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5268, N'so many apps came preinstalled that it was easy to do college work.', 1, 42, 0, CAST(0x0000A2A700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5269, N'the only problem was it had was the text edit is just for typing reports.', 2, 42, 0, CAST(0x0000A2A700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5270, N'it doesn''t have any real nice features to text edit.', 3, 42, 0, CAST(0x0000A2A700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5271, N'I purchased the G750JX-DB71 primarily as a desktop replacement and because I didn''t really need some of the advanced gaming features on the upper-end of the Asus ROG series.', 4, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5272, N'It has proven to be a great choice for my needs.', 1, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5273, N'I often run multiple MS applications, in addition to my company''s enterprise software, and this laptop handles anything I can throw at it while remaining cool and quiet.', 1, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5274, N'The first thing you''ll notice is the weight - it''s a heavy beast - definitely not something designed to be carried cross country on a business trip.', 3, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5275, N'The next thing you''ll notice is the feel, from the rubberized exterior coating to the excellent keyboard and straightforward design.', 1, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5276, N'Once booted-up, the HD display is bright and razor sharp - typical Asus.', 1, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5277, N'If there''s one thing Asus does right in a laptop, it''s their graphics and screens.', 1, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5278, N'I''ve never seen a matte screen with better image quality.', 2, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5279, N'Streaming video is stunning but, I have yet to play any games on it.', 1, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5280, N'I''m sure they will be just as good if not better, though.', 1, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5281, N'That''s why I like Asus so much - they may not come with all the bells and whistles that other brands have but, for image quality and heat management, few do it better than Asus.', 3, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5282, N'What truly blows me away about the G750JX-DB71, though, is its speed.', 4, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5283, N'The 256GB SSD makes this laptop the fastest computer - of any type - that I have ever used.', 1, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5284, N'What that means is the G750JX-DB71 boots up from power-off in less than ten seconds.', 4, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5285, N'It seems like it''s ready to Rock n Roll as soon as you turn it on.', 1, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5286, N'The G750JX-DB71 is equipped with an 802.', 4, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5287, N'11ac wifi adapter that will spoil you if you have a wifi router to take advantage of it.', 1, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5288, N'is something that has to be seen to be believed.', 1, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5289, N'It comes loaded with Windows 8 and a lot of bloatware.', 2, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5290, N'Be prepared to spend several hours downloading and installing all the Windows 8 updates before attempting to upgrade to Windows 8.', 4, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5291, N'1 - also, be prepared for a few error messages.', 4, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5292, N'It takes awhile but it works.', 4, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5293, N'1 is installed, you''ll notice that some of the bloatware has disappeared, including the 30 Day Free Trial of McAfee Anti-Virus.', 2, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5294, N'I use Norton 360 on all my computers anyway and have never had an issue.', 1, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5295, N'I also purchased the Asus ROG G950X gaming mouse for my G750JX-DB71 and it looks cool.', 1, 43, 0, CAST(0x0000A39D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5296, N'After MUCH research, I went with this ROG gamer laptop (G750-JX).', 4, 43, 0, CAST(0x0000A30500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5297, N'At the time of purchase it is the mid-range model.', 4, 43, 0, CAST(0x0000A30500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5298, N'I have had it for 5 months and I use it every day.', 4, 43, 0, CAST(0x0000A30500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5299, N'Start up time from off is practically instantaneous.', 1, 43, 0, CAST(0x0000A30500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5300, N'I played online and direct from HD games and have never had any performance issues.', 4, 43, 0, CAST(0x0000A30500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5301, N'ASUS replaced parts and paid for shipping both coming and going without any argument.', 4, 43, 0, CAST(0x0000A30500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5302, N'I have not had a single issue with ANYTHING since the repair.', 1, 43, 0, CAST(0x0000A30500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5303, N'(geek squad through BestBuy was totally useless.', 4, 43, 0, CAST(0x0000A30500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5304, N'Wasn''t a fan to switch to the new Windows, but I am adjusting.', 4, 43, 0, CAST(0x0000A30500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5305, N'The TB drive is split equally to 465 GB on C, D, E and 121 GB left on F drive.', 4, 43, 0, CAST(0x0000A30500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5306, N'Easy instructions can be found by an internet search.', 1, 43, 0, CAST(0x0000A30500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5307, N'This dual fan cooling system you can''t feel ANY heat from anywhere.', 4, 43, 0, CAST(0x0000A30500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5308, N'The body isn''t hot and the air isn''t even hot coming out from the fan area.', 1, 43, 0, CAST(0x0000A30500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5309, N'This is the best selling point of this machine and one of the TOP reasons I have it.', 1, 43, 0, CAST(0x0000A30500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5310, N'If you aren''t a total geeker, you could probably get by with something less expensive, but if you are a gamer, this is a great deal.', 2, 43, 0, CAST(0x0000A30500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5311, N'I bought this laptop at Bestbuy.', 4, 43, 0, CAST(0x0000A2F300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5312, N'The Laptop is need to update its software.', 4, 43, 0, CAST(0x0000A2F300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5313, N'Very loud fan noise when installing software or playing games.', 2, 43, 0, CAST(0x0000A2F300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5314, N'High performance, high speed processor, great sound quality.', 1, 43, 0, CAST(0x0000A2EE00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5315, N'It was either a new desktop or a laptop that could act as a desktop replacement.', 4, 43, 0, CAST(0x0000A2E700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5316, N'I knew a desktop replacement laptop would be bulky and not so great on battery life.', 2, 43, 0, CAST(0x0000A2E700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5317, N'This laptop appealed to me over the workstation class laptops offered by Dell and HP.', 4, 43, 0, CAST(0x0000A2E700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5318, N'First of all it is very appealing and definitely stands out.', 1, 43, 0, CAST(0x0000A2E700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5319, N'It looks even better than an Alienware (which an equivalent one of those costs much more.', 1, 43, 0, CAST(0x0000A2E700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5320, N'The Core i7 processor is very fast.', 1, 43, 0, CAST(0x0000A2E700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5321, N'I have been ripping movies and converting them to MPEG-4 in no time.', 4, 43, 0, CAST(0x0000A2E700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5322, N'The memory is another plus you never have to worry about running out.', 1, 43, 0, CAST(0x0000A2E700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5323, N'The 256GB SSD drive as the primary is a must have.', 4, 43, 0, CAST(0x0000A2E700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5324, N'The 1TB secondary is great for storing music and movies.', 1, 43, 0, CAST(0x0000A2E700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5325, N'Only gripe I had out of the box was the way Asus did their install of Windows 8.', 2, 43, 0, CAST(0x0000A2E700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5326, N'1 and got rid of all of the bloatware and repartitioned the drives.', 2, 43, 0, CAST(0x0000A2E700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5327, N'If you are looking for a desktop replacement laptop or a gaming laptop.', 4, 43, 0, CAST(0x0000A2E700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5328, N'The large screen size, thickness, and weight make it hard to transport this around campus.', 2, 43, 0, CAST(0x0000A2D900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5329, N'However, once you get setup there''s nothing better.', 3, 43, 0, CAST(0x0000A2D900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5330, N'Also has amazing sound quality, battery life, and screen resolution.', 1, 43, 0, CAST(0x0000A2D900000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5331, N'I wanted to have a laptop with workstation statistics and the Asus had all of them.', 4, 43, 0, CAST(0x0000A2CB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5332, N'Quite impressive and it should serve me well for quite a few years.', 1, 43, 0, CAST(0x0000A2CB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5333, N'I got this conputer becaude i needed something made for abuse, and this is perfect, i can play all my games qithout worrying about heating.', 2, 43, 0, CAST(0x0000A2CB00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5334, N'Great machine for processing in Photoshop and Lightroom.', 1, 43, 0, CAST(0x0000A2BF00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5335, N'The ASUS G750JX is an amazing machine.', 1, 43, 0, CAST(0x0000A2A300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5336, N'Used as a desktop requirement it is incredibly powerful and has extremely good graphics quality.', 1, 43, 0, CAST(0x0000A2A300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5337, N'One of the best parts is that this computer does not get that overheated, and I have never run into an issue of having to overclock my machine, even when playing BF4 on Ultra at 60 frames per second.', 1, 43, 0, CAST(0x0000A2A300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5338, N'Boot up is under 7 seconds and it can handle anything you can throw at it.', 1, 43, 0, CAST(0x0000A27700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5339, N'11ac wireless internet is really fast if you have the hardware at home to take advantage of it.', 1, 43, 0, CAST(0x0000A27700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5340, N'The high resolution screen looks great and it''s only downfall is that it is falling behind some of the competitions higher resolution screens, but games are fast and smooth with the graphics card at native resolution.', 1, 43, 0, CAST(0x0000A27700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5341, N'Touchscreen would have been nice if only to make windows 8 easier to navigate, but honestly after a short time you won''t notice.', 1, 43, 0, CAST(0x0000A27700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5342, N'It is very big and very heavy, but most gamers expect that, battery life is so-so, and again, most gamers expect that as well.', 2, 43, 0, CAST(0x0000A27700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5343, N'There are tons of modern ports on it for everything you might come across, USB 3.', 4, 43, 0, CAST(0x0000A27700000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5344, N'Also, i7 and graphics card make this thing cook.', 4, 43, 0, CAST(0x0000A26E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5345, N'Good speed and comes with some awesome msi freebies.', 1, 44, 0, CAST(0x0000A4A000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5346, N'With 8 gigs of RAM and a dual core i7 this laptop was a great value.', 1, 47, 0, CAST(0x0000A49E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5347, N'Got this computer wanting something that I could use for work and home stuff as well as some gaming on the side and it handles it all great.', 1, 48, 0, CAST(0x0000A49C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5348, N'I have The Old Republic and Call of Duty advanced warfare and it runs both of them really well.', 1, 48, 0, CAST(0x0000A49C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5349, N'this is the best laptop in this range pf price, this is ammaazziiinnnggg.', 1, 49, 0, CAST(0x0000A49600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5350, N'Although price $100 or $200 too high, great laptop.', 1, 50, 0, CAST(0x0000A48C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5351, N'Great features: love the way it converts into tablet and the different working modes; very elegant; battery lasts for 6 to 8 hours, great full hd screen, very silent, no fan noise and no heating up issues.', 1, 50, 0, CAST(0x0000A48C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5352, N'Great performance, no problem whatsoever, and i am a very critical and demanding user.', 1, 50, 0, CAST(0x0000A48C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5353, N'My previous laptop was a Lenovo v360 which was slow, noisy, and battery didn''t last.', 4, 50, 0, CAST(0x0000A48C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5354, N'Just waiting for Windows 10 which will be a great update.', 1, 50, 0, CAST(0x0000A48C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5355, N'good laptop and very fast, it does everything i need.', 1, 52, 0, CAST(0x0000A48600000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5356, N'So far the others that we bought are going great.', 1, 53, 0, CAST(0x0000A48500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5357, N'I am highly impressed with this laptop, and thought since no reviews are posted I would try to help out a few people looking for a good entry level gaming laptops.', 3, 54, 0, CAST(0x0000A48300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5358, N'It does have 1 mSATA drive bay.', 4, 54, 0, CAST(0x0000A48300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5359, N'So if you are wanting to add an SSD, you have the option to purchase an mSATA chip for OS and leave in the mechanical 1TB HDD for additional storage space.', 4, 54, 0, CAST(0x0000A48300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5360, N'The RAM is a single 8GB chip.', 4, 54, 0, CAST(0x0000A48300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5361, N'So you have 1 free RAM slot to add in an additional 8GB if you max your RAM.', 4, 54, 0, CAST(0x0000A48300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5362, N'16GB was the max for this model.', 4, 54, 0, CAST(0x0000A48300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5363, N'There are 4 USB ports on this model, not 3.', 4, 54, 0, CAST(0x0000A48300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5364, N'Two of them on the left side are USB 3.', 4, 54, 0, CAST(0x0000A48300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5365, N'So I returned it and told the customer service that I had asked about this model, but was taken back by having to order it.', 4, 54, 0, CAST(0x0000A48300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5366, N'The UPS was at my door at 10:30 am on 4/22 delivering me my new MSI.', 4, 54, 0, CAST(0x0000A48300000000 AS DateTime))
GO
print 'Processed 1000 total records'
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5367, N'Getting the computer in less then 24 hours was great.', 1, 54, 0, CAST(0x0000A48300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5368, N'This has not failed to meet or exceed my expectations.', 4, 54, 0, CAST(0x0000A48300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5369, N'You aren''t going to use this as a Heavy Duty, everything on ULTRA settings gaming computer, its just not going to happen at 800 dollars, but medium/low settings I getting around 25-35 fps on medium and 80 on low settings.', 3, 54, 0, CAST(0x0000A48300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5370, N'The Cooler Boost button at the top of your keyboard allows you to run your fans at 100% while gaming so you don''t have problems with heat.', 1, 54, 0, CAST(0x0000A48300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5371, N'The keys and touchpad are textured, I don''t use the touchpad so the added touchpad disable button at the top of touchpad is nice.', 3, 54, 0, CAST(0x0000A48300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5372, N'The keyboard size is great and I like the texture of the keys that prevent finger slips.', 1, 54, 0, CAST(0x0000A48300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5373, N'It has a num keypad as well that I like.', 1, 54, 0, CAST(0x0000A48300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5374, N'Audio is great from what I have used it for so far.', 1, 54, 0, CAST(0x0000A48300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5375, N'Mostly just watching some Netflix and DVDs.', 4, 54, 0, CAST(0x0000A48300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5376, N'I normally use headset so the audio jacks on the side are nice as well.', 1, 54, 0, CAST(0x0000A48300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5377, N'The new 940m card keeps my games looking nice while I play even on the lower settings.', 1, 54, 0, CAST(0x0000A48300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5378, N'It even has a system monitor button that allows you to pull up the MSI Dragon Monitor tool to check things from CPU/RAM usage to temperatures.', 4, 54, 0, CAST(0x0000A48300000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5379, N'Great, great computer for my every day use.', 1, 55, 0, CAST(0x0000A48100000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5380, N'Grandmaster of most Laptops that are designed for gaming.', 4, 56, 0, CAST(0x0000A47F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5381, N'I cannot stress enough the very fact that that has obviously slipped your mind, please, in the next 5 months, please put 3-4GB GDDR5 Video Cards into your computers.', 4, 56, 0, CAST(0x0000A47F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5382, N'I thank you, please enjoy the rest of your weekend, because you have alit of work to do.', 1, 56, 0, CAST(0x0000A47F00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5383, N'I bought this product after an order from Newegg was cancelled after being charged for my laptop and being told it was on the way.', 4, 57, 0, CAST(0x0000A47D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5384, N'I am glad it was cancelled.', 1, 57, 0, CAST(0x0000A47D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5385, N'This laptop from Best buy is much better, faster, more video card memory etc.', 1, 57, 0, CAST(0x0000A47D00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5386, N'Ultimate gaming laptop stops here with the GT80.', 1, 58, 0, CAST(0x0000A47C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5387, N'A laptop with a mechanical keyboard.', 4, 58, 0, CAST(0x0000A47C00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5388, N'It has all the features I wanted and it works great.', 1, 59, 0, CAST(0x0000A47500000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5389, N'Good value for the money, and great brand to stand behind it.', 1, 60, 0, CAST(0x0000A47400000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5390, N'This was an awesome laptop a great choice very fast an upload an the graphics are amazing.', 1, 61, 0, CAST(0x0000A47000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5391, N'I am using a bluetooth mouse and it works great.', 1, 62, 0, CAST(0x0000A33E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5392, N'I am in a video edit suite so I am surrounded by content creation machines, PC and Mac.', 4, 62, 0, CAST(0x0000A33E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5393, N'We generally keep those machines off the internet except for SW updates, this machine is my internet machine and it fills that role nicely.', 4, 62, 0, CAST(0x0000A33E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5394, N'I like that it handles documents, spreadsheets, etc whether on the internet or not, very handy.', 1, 62, 0, CAST(0x0000A33E00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5395, N'I decided to purchase this laptop because of its nice specs, as well as the price.', 1, 63, 0, CAST(0x0000A44A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5396, N'I ordered this for my brother, and he loves it.', 4, 63, 0, CAST(0x0000A44A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5397, N'It arrived ahead of schedule and was actually in real good condition.', 1, 63, 0, CAST(0x0000A44A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5398, N'It comes pre-loaded with Windows 7, and has a bunch of neat tools already installed, such as Microsoft Security Essentials.', 4, 63, 0, CAST(0x0000A44A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5399, N'Charger works great, battery is holding up nicely.', 4, 63, 0, CAST(0x0000A44A00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5400, N'This laptops it great for the price and it fits my needs this i laptop recommend to any one.', 1, 64, 0, CAST(0x0000A43B00000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5401, N'I needed a Windows 7 laptop to replace myXP ''shop'' computer.', 4, 65, 0, CAST(0x0000A45000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5402, N'I was looking for something that had Windows 7 64 bit and found this after a lot of searching.', 4, 65, 0, CAST(0x0000A45000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5403, N'Price was right and when it arrived I was very pleasantly surprised by its condition.', 1, 65, 0, CAST(0x0000A45000000000 AS DateTime))
INSERT [dbo].[Comment] ([Id], [Content], [CmtTypeId], [ProductId], [IsApproved], [CmtDate]) VALUES (5404, N'No scratches, no worn keys, looks like new.', 2, 65, 0, CAST(0x0000A45000000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Comment] OFF
/****** Object:  Table [dbo].[Image]    Script Date: 06/07/2015 18:10:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NULL,
	[ProductId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Image] ON
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (90, N'http://media.engadget.com/img/products/490/ai6y/ai6y-800.jpg', 1)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (91, N'http://media.engadget.com/img/products/490/ai5y/ai5y-800.jpg', 1)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (92, N'http://media.engadget.com/img/products/490/ai5z/ai5z-800.jpg', 2)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (93, N'http://media.engadget.com/img/products/532/bf42/bf42-800.jpg', 3)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (94, N'http://media.engadget.com/img/products/532/bf1h/bf1h-800.jpg', 3)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (95, N'http://media.engadget.com/img/products/532/bf3v/bf3v-800.jpg', 3)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (96, N'http://media.engadget.com/img/products/532/bf3r/bf3r-800.jpg', 3)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (97, N'http://media.engadget.com/img/products/532/bf3x/bf3x-800.jpg', 3)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (98, N'http://media.engadget.com/img/products/532/bf3s/bf3s-800.jpg', 3)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (99, N'http://media.engadget.com/img/products/532/bf41/bf41-800.jpg', 3)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (100, N'http://media.engadget.com/img/products/532/bf3t/bf3t-800.jpg', 3)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (101, N'http://media.engadget.com/img/products/532/bf3u/bf3u-800.jpg', 3)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (102, N'http://media.engadget.com/img/products/537/biyq/biyq-800.jpg', 4)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (103, N'http://media.engadget.com/img/products/484/adzc/adzc-800.jpg', 5)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (104, N'http://media.engadget.com/img/products/484/ae3g/ae3g-800.jpg', 5)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (105, N'http://media.engadget.com/img/products/465/9z53/9z53-800.jpg', 6)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (106, N'http://media.engadget.com/img/products/465/9yzf/9yzf-800.jpg', 6)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (107, N'http://media.engadget.com/img/products/465/9yzg/9yzg-800.jpg', 6)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (108, N'http://media.engadget.com/img/products/465/9yzh/9yzh-800.jpg', 6)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (109, N'http://media.engadget.com/img/products/465/9yzx/9yzx-800.jpg', 6)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (110, N'http://media.engadget.com/img/products/465/9z49/9z49-800.jpg', 6)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (111, N'http://media.engadget.com/img/products/465/9z52/9z52-800.jpg', 6)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (112, N'http://media.engadget.com/img/products/456/9sgm/9sgm-800.jpg', 7)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (113, N'http://media.engadget.com/img/products/456/9sgh/9sgh-800.jpg', 7)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (114, N'http://media.engadget.com/img/products/456/9sgj/9sgj-800.jpg', 7)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (115, N'http://media.engadget.com/img/products/456/9sgl/9sgl-800.jpg', 7)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (116, N'http://media.engadget.com/img/products/456/9sgn/9sgn-800.jpg', 7)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (117, N'http://media.engadget.com/img/products/539/bk87/bk87-800.jpg', 8)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (118, N'http://media.engadget.com/img/products/539/bk88/bk88-800.jpg', 8)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (119, N'http://media.engadget.com/img/products/539/bk89/bk89-800.jpg', 8)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (120, N'http://media.engadget.com/img/products/539/bk8a/bk8a-800.jpg', 8)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (121, N'http://media.engadget.com/img/products/484/adzd/adzd-800.jpg', 9)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (122, N'http://media.engadget.com/img/products/484/adwx/adwx-800.jpg', 10)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (123, N'http://media.engadget.com/img/product/4/3c3/mini-nb205-fr7-800.jpg', 11)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (124, N'http://media.engadget.com/img/products/504/atha/atha-800.jpg', 12)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (125, N'http://media.engadget.com/img/product/13/ab2/alienware-m17x-l39-800.jpg', 13)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (126, N'http://media.engadget.com/img/product/4/34p/alienware-area-51-m17x-4c2-800.jpg', 13)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (127, N'http://media.engadget.com/img/products/471/a40k/a40k-800.jpg', 14)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (128, N'http://media.engadget.com/img/products/484/adqw/adqw-800.jpg', 15)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (129, N'http://media.engadget.com/img/products/533/bfku/bfku-800.jpg', 16)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (130, N'http://media.engadget.com/img/products/536/bhz2/bhz2-800.jpg', 17)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (131, N'http://media.engadget.com/img/products/536/bhz3/bhz3-800.jpg', 17)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (132, N'http://media.engadget.com/img/products/466/9zo7/9zo7-800.jpg', 18)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (133, N'http://media.engadget.com/img/products/465/9yz7/9yz7-800.jpg', 18)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (134, N'http://media.engadget.com/img/products/465/9yz8/9yz8-800.jpg', 18)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (135, N'http://media.engadget.com/img/products/465/9yzu/9yzu-800.jpg', 18)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (136, N'http://media.engadget.com/img/products/465/9yzv/9yzv-800.jpg', 18)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (137, N'http://media.engadget.com/img/products/465/9yzw/9yzw-800.jpg', 18)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (138, N'http://media.engadget.com/img/products/465/9yz6/9yz6-800.jpg', 19)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (139, N'http://media.engadget.com/img/product/32/pgh/9-series-np900x1a-2mp2-800.jpg', 20)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (140, N'http://media.engadget.com/img/product/32/pgh/9-series-np900x1a-2mp3-800.jpg', 20)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (141, N'http://media.engadget.com/img/product/32/pgh/9-series-np900x1a-2mp4-800.jpg', 20)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (142, N'http://media.engadget.com/img/product/32/pgh/9-series-np900x1a-2mp5-800.jpg', 20)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (143, N'http://media.engadget.com/img/product/32/pgh/9-series-np900x1a-2mp6-800.jpg', 20)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (144, N'http://media.engadget.com/img/product/4/3a6/thinkpad-x200t-g8k-800.jpg', 21)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (145, N'http://media.engadget.com/img/product/4/3a6/thinkpad-x200t-g8l-800.jpg', 21)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (146, N'http://media.engadget.com/img/product/32/ox3/portege-r830-2nba-800.jpg', 22)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (147, N'http://media.engadget.com/img/products/449/9n08/9n08-800.jpg', 23)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (148, N'http://media.engadget.com/img/products/449/9n0o/9n0o-800.jpg', 23)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (149, N'http://media.engadget.com/img/products/449/9n0p/9n0p-800.jpg', 23)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (150, N'http://media.engadget.com/img/products/449/9n0q/9n0q-800.jpg', 23)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (151, N'http://media.engadget.com/img/products/449/9n0r/9n0r-800.jpg', 23)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (152, N'http://media.engadget.com/img/products/449/9n0s/9n0s-800.jpg', 23)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (153, N'http://media.engadget.com/img/products/449/9n0t/9n0t-800.jpg', 23)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (154, N'http://media.engadget.com/img/products/460/9vn6/9vn6-800.jpg', 23)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (155, N'http://media.engadget.com/img/products/458/9tve/9tve-800.jpg', 24)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (156, N'http://media.engadget.com/img/products/523/b7lk/b7lk-800.jpg', 25)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (157, N'http://media.engadget.com/img/products/508/awnb/awnb-800.jpg', 26)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (158, N'http://media.engadget.com/img/products/490/aig8/aig8-800.jpg', 27)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (159, N'http://media.engadget.com/img/products/486/af0w/af0w-800.jpg', 28)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (160, N'http://media.engadget.com/img/products/476/a7xp/a7xp-800.jpg', 29)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (161, N'http://media.engadget.com/img/products/467/a0yt/a0yt-800.jpg', 30)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (162, N'http://media.engadget.com/img/products/467/a0yu/a0yu-800.jpg', 30)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (163, N'http://media.engadget.com/img/products/467/a0yv/a0yv-800.jpg', 30)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (164, N'http://media.engadget.com/img/products/467/a0yw/a0yw-800.jpg', 30)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (165, N'http://media.engadget.com/img/products/467/a0yx/a0yx-800.jpg', 30)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (166, N'http://media.engadget.com/img/products/463/9xlr/9xlr-800.jpg', 31)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (167, N'http://media.engadget.com/img/products/463/9xls/9xls-800.jpg', 31)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (168, N'http://media.engadget.com/img/products/463/9xlt/9xlt-800.jpg', 31)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (169, N'http://media.engadget.com/img/products/463/9xlu/9xlu-800.jpg', 31)
INSERT [dbo].[Image] ([Id], [Url], [ProductId]) VALUES (170, N'http://media.engadget.com/img/products/503/asqz/asqz-800.jpg', 62)
SET IDENTITY_INSERT [dbo].[Image] OFF
/****** Object:  ForeignKey [FK_Comment_CommentType]    Script Date: 06/07/2015 18:10:25 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_CommentType] FOREIGN KEY([CmtTypeId])
REFERENCES [dbo].[CommentType] ([Id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_CommentType]
GO
/****** Object:  ForeignKey [FK_Comment_Product]    Script Date: 06/07/2015 18:10:25 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Product]
GO
/****** Object:  ForeignKey [FK_Dictionary_WordClass]    Script Date: 06/07/2015 18:10:25 ******/
ALTER TABLE [dbo].[Dictionary]  WITH CHECK ADD  CONSTRAINT [FK_Dictionary_WordClass] FOREIGN KEY([WordClassId])
REFERENCES [dbo].[WordClass] ([Id])
GO
ALTER TABLE [dbo].[Dictionary] CHECK CONSTRAINT [FK_Dictionary_WordClass]
GO
/****** Object:  ForeignKey [FK_Dictionary_WordType]    Script Date: 06/07/2015 18:10:25 ******/
ALTER TABLE [dbo].[Dictionary]  WITH CHECK ADD  CONSTRAINT [FK_Dictionary_WordType] FOREIGN KEY([WordTypeId])
REFERENCES [dbo].[WordType] ([Id])
GO
ALTER TABLE [dbo].[Dictionary] CHECK CONSTRAINT [FK_Dictionary_WordType]
GO
/****** Object:  ForeignKey [FK_Image_Product]    Script Date: 06/07/2015 18:10:25 ******/
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Product]
GO
/****** Object:  ForeignKey [FK_Product_Brand]    Script Date: 06/07/2015 18:10:25 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brand] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Brand]
GO
/****** Object:  ForeignKey [FK_Product_Source]    Script Date: 06/07/2015 18:10:25 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Source] FOREIGN KEY([SourceId])
REFERENCES [dbo].[Source] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Source]
GO
