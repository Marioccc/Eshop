USE [eshop]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 04/08/2015 00:37:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orders](
	[OrderId] [varchar](50) NOT NULL,
	[MemberId] [int] NOT NULL,
	[ContactId] [int] NOT NULL,
	[Total] [decimal](18, 0) NOT NULL,
	[Status] [int] NOT NULL,
	[OrderDate] [varchar](50) NOT NULL,
	[PayDate] [varchar](50) NULL,
	[DeliverDate] [varchar](50) NULL,
	[ReceiptDate] [varchar](50) NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'orders', @level2type=N'COLUMN',@level2name=N'OrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'orders', @level2type=N'COLUMN',@level2name=N'MemberId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'orders', @level2type=N'COLUMN',@level2name=N'ContactId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'orders', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'orders', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'付款日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'orders', @level2type=N'COLUMN',@level2name=N'PayDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'orders', @level2type=N'COLUMN',@level2name=N'DeliverDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'orders', @level2type=N'COLUMN',@level2name=N'ReceiptDate'
GO
INSERT [dbo].[orders] ([OrderId], [MemberId], [ContactId], [Total], [Status], [OrderDate], [PayDate], [DeliverDate], [ReceiptDate]) VALUES (N'2015472344594', 1, 1, CAST(992 AS Decimal(18, 0)), 4, N'2015/4/7 23:44:02', N'2015/4/7 23:44:07', N'', N'')
INSERT [dbo].[orders] ([OrderId], [MemberId], [ContactId], [Total], [Status], [OrderDate], [PayDate], [DeliverDate], [ReceiptDate]) VALUES (N'201548013259', 15, 10, CAST(6999 AS Decimal(18, 0)), 2, N'2015/4/8 0:13:08', N'2015/4/8 0:14:27', N'', N'')
INSERT [dbo].[orders] ([OrderId], [MemberId], [ContactId], [Total], [Status], [OrderDate], [PayDate], [DeliverDate], [ReceiptDate]) VALUES (N'201548016975', 1, 1, CAST(997 AS Decimal(18, 0)), 3, N'2015/4/8 0:16:38', N'2015/4/8 0:18:45', N'', N'2015/4/8 0:18:54')
INSERT [dbo].[orders] ([OrderId], [MemberId], [ContactId], [Total], [Status], [OrderDate], [PayDate], [DeliverDate], [ReceiptDate]) VALUES (N'201548017872', 1, 1, CAST(997 AS Decimal(18, 0)), 0, N'2015/4/8 0:17:05', N'', N'', N'')
INSERT [dbo].[orders] ([OrderId], [MemberId], [ContactId], [Total], [Status], [OrderDate], [PayDate], [DeliverDate], [ReceiptDate]) VALUES (N'201548017892', 1, 1, CAST(1510 AS Decimal(18, 0)), 1, N'2015/4/8 0:17:36', N'2015/4/8 0:17:41', N'', N'')
INSERT [dbo].[orders] ([OrderId], [MemberId], [ContactId], [Total], [Status], [OrderDate], [PayDate], [DeliverDate], [ReceiptDate]) VALUES (N'201548018235', 1, 1, CAST(899 AS Decimal(18, 0)), 2, N'2015/4/8 0:18:03', N'2015/4/8 0:19:09', N'', N'')
INSERT [dbo].[orders] ([OrderId], [MemberId], [ContactId], [Total], [Status], [OrderDate], [PayDate], [DeliverDate], [ReceiptDate]) VALUES (N'201548021802', 1, 1, CAST(98 AS Decimal(18, 0)), 1, N'2015/4/8 0:21:53', N'2015/4/8 0:34:21', N'', N'')
INSERT [dbo].[orders] ([OrderId], [MemberId], [ContactId], [Total], [Status], [OrderDate], [PayDate], [DeliverDate], [ReceiptDate]) VALUES (N'201548022352', 1, 1, CAST(1510 AS Decimal(18, 0)), 0, N'2015/4/8 0:22:39', N'', N'', N'')
INSERT [dbo].[orders] ([OrderId], [MemberId], [ContactId], [Total], [Status], [OrderDate], [PayDate], [DeliverDate], [ReceiptDate]) VALUES (N'201548026301', 15, 10, CAST(4499 AS Decimal(18, 0)), 0, N'2015/4/8 0:26:09', N'', N'', N'')
INSERT [dbo].[orders] ([OrderId], [MemberId], [ContactId], [Total], [Status], [OrderDate], [PayDate], [DeliverDate], [ReceiptDate]) VALUES (N'201548028616', 1, 1, CAST(1510 AS Decimal(18, 0)), 0, N'2015/4/8 0:28:24', N'', N'', N'')
INSERT [dbo].[orders] ([OrderId], [MemberId], [ContactId], [Total], [Status], [OrderDate], [PayDate], [DeliverDate], [ReceiptDate]) VALUES (N'201548031779', 1, 3, CAST(1510 AS Decimal(18, 0)), 0, N'2015/4/8 0:32:06', N'', N'', N'')
INSERT [dbo].[orders] ([OrderId], [MemberId], [ContactId], [Total], [Status], [OrderDate], [PayDate], [DeliverDate], [ReceiptDate]) VALUES (N'201548034988', 1, 7, CAST(1510 AS Decimal(18, 0)), 0, N'2015/4/8 0:34:11', N'', N'', N'')
/****** Object:  Table [dbo].[orderDetail]    Script Date: 04/08/2015 00:37:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orderDetail](
	[OrderId] [varchar](50) NOT NULL,
	[MerId] [varchar](50) NOT NULL,
	[Price] [decimal](18, 0) NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[MerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[orderDetail] ([OrderId], [MerId], [Price], [Amount]) VALUES (N'2015472344594', N'6', CAST(98 AS Decimal(18, 0)), 1)
INSERT [dbo].[orderDetail] ([OrderId], [MerId], [Price], [Amount]) VALUES (N'2015472344594', N'7', CAST(298 AS Decimal(18, 0)), 3)
INSERT [dbo].[orderDetail] ([OrderId], [MerId], [Price], [Amount]) VALUES (N'201548013259', N'1', CAST(6999 AS Decimal(18, 0)), 1)
INSERT [dbo].[orderDetail] ([OrderId], [MerId], [Price], [Amount]) VALUES (N'201548016975', N'3', CAST(899 AS Decimal(18, 0)), 1)
INSERT [dbo].[orderDetail] ([OrderId], [MerId], [Price], [Amount]) VALUES (N'201548016975', N'6', CAST(98 AS Decimal(18, 0)), 1)
INSERT [dbo].[orderDetail] ([OrderId], [MerId], [Price], [Amount]) VALUES (N'201548017872', N'3', CAST(899 AS Decimal(18, 0)), 1)
INSERT [dbo].[orderDetail] ([OrderId], [MerId], [Price], [Amount]) VALUES (N'201548017872', N'6', CAST(98 AS Decimal(18, 0)), 1)
INSERT [dbo].[orderDetail] ([OrderId], [MerId], [Price], [Amount]) VALUES (N'201548017892', N'2', CAST(1510 AS Decimal(18, 0)), 1)
INSERT [dbo].[orderDetail] ([OrderId], [MerId], [Price], [Amount]) VALUES (N'201548018235', N'3', CAST(899 AS Decimal(18, 0)), 1)
INSERT [dbo].[orderDetail] ([OrderId], [MerId], [Price], [Amount]) VALUES (N'201548021802', N'6', CAST(98 AS Decimal(18, 0)), 1)
INSERT [dbo].[orderDetail] ([OrderId], [MerId], [Price], [Amount]) VALUES (N'201548022352', N'2', CAST(1510 AS Decimal(18, 0)), 1)
INSERT [dbo].[orderDetail] ([OrderId], [MerId], [Price], [Amount]) VALUES (N'201548026301', N'4', CAST(4499 AS Decimal(18, 0)), 1)
INSERT [dbo].[orderDetail] ([OrderId], [MerId], [Price], [Amount]) VALUES (N'201548028616', N'2', CAST(1510 AS Decimal(18, 0)), 1)
INSERT [dbo].[orderDetail] ([OrderId], [MerId], [Price], [Amount]) VALUES (N'201548031779', N'2', CAST(1510 AS Decimal(18, 0)), 1)
INSERT [dbo].[orderDetail] ([OrderId], [MerId], [Price], [Amount]) VALUES (N'201548034988', N'2', CAST(1510 AS Decimal(18, 0)), 1)
/****** Object:  Table [dbo].[new]    Script Date: 04/08/2015 00:37:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[new](
	[NewId] [int] NOT NULL,
	[NewTitle] [nvarchar](50) NULL,
	[NewContent] [text] NULL,
	[NewAddTime] [datetime] NULL,
	[NewAddAuthor] [nvarchar](50) NULL,
 CONSTRAINT [PK_new] PRIMARY KEY CLUSTERED 
(
	[NewId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 04/08/2015 00:37:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Message](
	[MessageId] [int] IDENTITY(1,1) NOT NULL,
	[MerId] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[topic] [varchar](50) NOT NULL,
	[content] [varchar](100) NOT NULL,
	[MemberId] [int] NOT NULL,
	[DateLine] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'MerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价等级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'grade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'MemberId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'留言时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'DateLine'
GO
SET IDENTITY_INSERT [dbo].[Message] ON
INSERT [dbo].[Message] ([MessageId], [MerId], [grade], [topic], [content], [MemberId], [DateLine]) VALUES (6, 6, 5, N'非常好！', N'非常好！', 1, N'2015/4/7 23:45:29')
INSERT [dbo].[Message] ([MessageId], [MerId], [grade], [topic], [content], [MemberId], [DateLine]) VALUES (7, 7, 5, N'非常好！', N'非常好！', 1, N'2015/4/7 23:45:29')
SET IDENTITY_INSERT [dbo].[Message] OFF
/****** Object:  Table [dbo].[merchandisc]    Script Date: 04/08/2015 00:37:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[merchandisc](
	[MerId] [varchar](50) NOT NULL,
	[category] [int] NULL,
	[MerName] [varchar](100) NULL,
	[Price] [decimal](18, 0) NULL,
	[SPrice] [decimal](18, 0) NULL,
	[Picture] [varchar](50) NULL,
	[GoodDesc] [text] NULL,
	[GoodFacturer] [varchar](50) NULL,
	[LeaveFactoryDate] [varchar](50) NULL,
	[Special] [int] NULL,
	[inputdate] [varchar](50) NULL,
	[bengindate] [varchar](50) NULL,
	[enddate] [varchar](50) NULL,
 CONSTRAINT [PK_merchandisc] PRIMARY KEY CLUSTERED 
(
	[MerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'merchandisc', @level2type=N'COLUMN',@level2name=N'MerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'merchandisc', @level2type=N'COLUMN',@level2name=N'category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'merchandisc', @level2type=N'COLUMN',@level2name=N'MerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'市场价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'merchandisc', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际售价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'merchandisc', @level2type=N'COLUMN',@level2name=N'SPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'merchandisc', @level2type=N'COLUMN',@level2name=N'Picture'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'merchandisc', @level2type=N'COLUMN',@level2name=N'GoodDesc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品制造商' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'merchandisc', @level2type=N'COLUMN',@level2name=N'GoodFacturer'
GO
INSERT [dbo].[merchandisc] ([MerId], [category], [MerName], [Price], [SPrice], [Picture], [GoodDesc], [GoodFacturer], [LeaveFactoryDate], [Special], [inputdate], [bengindate], [enddate]) VALUES (N'1', 1, N'Nikon（尼康）D90单反数码相机（套机）18-105/3.5-5.6VR镜头', CAST(8990 AS Decimal(18, 0)), CAST(6999 AS Decimal(18, 0)), N'product/DC_nikon_D90_01_m.jpeg', N'Nikon（尼康）D90单反数码相机（套机）

尼康D90采用DX格式的CMOS感光元件，有效像素达到1230万，最大可以拍摄4288×2848分辨率的图片。D90使用了一块3.0英寸约92万像素的LCD显示屏，带有实时取景和脸部优先对焦功能。场景识别系统还增强了相机在多种拍摄条件下自动对焦、自动曝光以及自动白平衡的精度。相机感光度范围在ISO200－ISO3200，并可扩展至ISO100－ISO6400。D90还带有影像传感器除尘功能，可有效去除传感器光学低通滤镜上降低影像质量的灰尘 ', NULL, N'2011-06-21', 1, N'2012-03-08', N'2011-02-01', NULL)
INSERT [dbo].[merchandisc] ([MerId], [category], [MerName], [Price], [SPrice], [Picture], [GoodDesc], [GoodFacturer], [LeaveFactoryDate], [Special], [inputdate], [bengindate], [enddate]) VALUES (N'2', 1, N'索尼WX7', CAST(1590 AS Decimal(18, 0)), CAST(1510 AS Decimal(18, 0)), N'product/DC_sony.jpeg', N'索尼WX7
参数规格 查看：更多信息或更多图片
 
主要性能
发布日期 2011年01月
机身特性 消费
操作方式 全自动操作
传感器类型 Exmor R CMOS
有效像素数 1620万
光学变焦 5倍
高清摄像 高清（1080）
镜头特点
镜头说明 卡尔·蔡司（Vario-Tessar）镜头，实际焦距：f=4.5-22.5mm
镜头类型 伸缩式
最大光圈 F2.6-F6.3
变焦方式 电子
显示功能
显示屏尺寸 2.8英寸
像素及类型 46万像素液晶屏
屏幕功能 高清屏
闪光灯
闪光灯类型 内置
外接闪光灯(热靴) 否
曝光控制
曝光补偿 ±2EV（1/3EV步长）
拍摄性能
连拍功能 10fps
操作功能
麦克风/扬声器 立体声麦克风
接口性能
数据接口 USB2.0
视频接口 AV接口
电池性能
电池类型 锂电池
外观设计
外形特点 超薄型DC
机身颜色 黑色，银色，粉色，紫色
*性能
*性能 支持静态3D拍摄功能和TransferJet无线短距离传输
背光校正HDR和背景虚化功能
保修信息
保修政策 全国联保，享受三包服务
质保时间 1年
质保备注 整机1年，专用电池1年，存储卡1年
客服电话 400-810-9000
电话备注 周一至周六：9:00-21:00；周日：9:00-18:00
', NULL, N'2011-06-01', 1, N'2012-01-01', N'2011-03-01', NULL)
INSERT [dbo].[merchandisc] ([MerId], [category], [MerName], [Price], [SPrice], [Picture], [GoodDesc], [GoodFacturer], [LeaveFactoryDate], [Special], [inputdate], [bengindate], [enddate]) VALUES (N'3', 1, N'尼康 S2500 数码相机+4G 存储卡+专用数码包+高速读卡器+液晶贴膜
', CAST(1498 AS Decimal(18, 0)), CAST(899 AS Decimal(18, 0)), N'product/dc_nikon_s2500.jpeg', N'主要性能
发布日期 2011年02月
机身特性 消费，卡片，广角
操作方式 全自动操作
传感器类型 CCD
有效像素数 1200万
光学变焦 4倍
数码变焦 4倍
最高分辨率 4000×3000
图像分辨率 4000×3000（12M高），4000×3000（12M），3264×2448（8M），2592×1944（5M），2048×1536（3M），1024×768（PC），640×480（VGA），3968×2232（16:9）
镜头特点
等效35mm焦距 27-108mm
镜头说明 尼克尔镜头，实际焦距：f=4.9-19.6mm
广角镜头 是
长焦镜头 否
镜头类型 伸缩式
对焦范围 500mm-无穷远
近拍距离 80mm-无穷远
最大光圈 F3.2-F5.9
变焦方式 电子显示功能
显示屏尺寸 2.7英寸
像素及类型 23万像素液晶屏，可进行亮度调节
菜单语言 25种语言
快门性能
快门类型 机械电子快门
闪光灯
闪光灯类型 内置
外接闪光灯(热靴) 否
闪光模式 自动闪光，减轻红眼自动模式，取消闪光，强制闪光，慢速同步闪光
曝光控制
曝光模式 自动曝光
曝光补偿 ±2EV（1/3EV步长）
测光方式 256分割矩阵测光，中央重点测光，点测光
白平衡 自动，预设（白平衡预设，直射阳光，白炽灯，荧光灯，阴天，闪光）
感光度 ISO 80，100，200，400，1600，3200自动（自动增益从ISO 80至1600）固定范围自动（ISO 80-400，ISO 80-800）
场景模式人像模式，风景模式，运动模式，宴会/室内模式，海滩模式，雪景模式，夕阳模式，黄昏/黎明模式，夜景模式，近摄模式，食物模式，博物馆模式，烟花表演模式，黑白复制模式背光模式，全景辅助模式
拍摄性能
防抖性能 电子防抖

', N'尼康映像仪器销售(中国)有限公司
', N'2011-02-01
', 1, NULL, N'2012-02-01', NULL)
INSERT [dbo].[merchandisc] ([MerId], [category], [MerName], [Price], [SPrice], [Picture], [GoodDesc], [GoodFacturer], [LeaveFactoryDate], [Special], [inputdate], [bengindate], [enddate]) VALUES (N'4', 25, N'Apple苹果 iPad2 MC982CH/A 16GB/WIFI+3G版（白色）', CAST(4688 AS Decimal(18, 0)), CAST(4499 AS Decimal(18, 0)), N'product/ipad2.jpeg', N'品牌Apple苹果上市时间40664颜色白色材质/工艺玻璃和不锈钢材质存储容量16GB操作系统iOS 4.3处理器A5 双核，1GHz屏幕尺寸9.7英寸屏幕分辨率1024*768屏幕类型IPS屏幕，LED背光，Multi-Touch显示屏，支持132ppi清晰度，耐指纹抗油涂层屏幕描述电容式触摸屏，多点式触摸屏指取设备触摸屏WiFi功能WIFI无线上网，支持802.11b/g/n无线协议内置3G预留3G模块端口蓝牙功能支持，蓝牙2.1模块音频接口3.5mm耳机接口视频接口mini HDMI接口其他接口苹果Dock接口声音系统立体声扬声器，内置麦克风音频格式支持AAC，MP3，VBR，AIFF，WAV格式视频格式支持VGAA，MP4，MOV，MPEG格式摄像头双摄像头（前置：30万像素，后置：70万像素）内置感应方向感应器，环境光线感应，距离感应器电池类型聚合物锂电池续航时间10小时左右，具体时间视使用环境而定尺寸241.2*185.7*8.8mm重量613g', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[merchandisc] ([MerId], [category], [MerName], [Price], [SPrice], [Picture], [GoodDesc], [GoodFacturer], [LeaveFactoryDate], [Special], [inputdate], [bengindate], [enddate]) VALUES (N'5', 25, N'苹果iPad2 16G wifi版 平板电脑 9.7英寸屏幕 MC769CH/A黑色', CAST(3998 AS Decimal(18, 0)), CAST(3698 AS Decimal(18, 0)), N'product/ipad2_16G.jpeg', N'上市时间 2011年05月06日
操作系统 iOS 4.3
处理器 A5 双核，1GHz
系统内存 512MB
存储容量 64GB
存储卡 支持SD卡
显示屏
屏幕尺寸 9.7英寸
屏幕分辨率 1024×768
屏幕描述 电容式触摸屏，支持多点触摸，IPS屏，防指纹涂层，LED
指取设备 触摸屏
支持语言 支持多种语言文字同时显示
网络链接
WiFi功能 WIFI无线上网，支持802.11b/g/n无线协议 
 蓝牙功能 支持，蓝牙2.1模块
音频视频
声音系统 立体声扬声器，内置麦克风
音频格式 支持AAC,MP3，VBR,AIFF,WAV格式
视频格式 支持VGAA，MP4，mov，MPEG格式
外置接口
USB接口 USB2.0
音频接口 3.5mm耳机接口
视频接口 mini HDMI接口
*接口 2×苹果Dock接口
电源参数
电池类型 聚合物锂电池
 ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[merchandisc] ([MerId], [category], [MerName], [Price], [SPrice], [Picture], [GoodDesc], [GoodFacturer], [LeaveFactoryDate], [Special], [inputdate], [bengindate], [enddate]) VALUES (N'6', 25, N'小魔女Magic iPad2智能休眠皮套\支架保护套-玫红色', CAST(198 AS Decimal(18, 0)), CAST(98 AS Decimal(18, 0)), N'product/magic ipad2.jpeg', N'可爱小魔女 iPad2平板电脑 皮套 支架保护套 智能休眠功能
品牌：可爱小魔女
使用范围：苹果IPAD2保护皮套

皮套材质：高级人造PU皮

镂空设计：完美贴合iPad 2主机身，各个按钮及接口均完美镂空，不影响任何操作。

休眠功能：完美支持iPad 2自动休眠/唤醒功能，只需开合皮套上盖，轻松奢意。

特色亮点：钢模压印极具立体感，三档位多角度设计，暗磁扣。

', NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[merchandisc] ([MerId], [category], [MerName], [Price], [SPrice], [Picture], [GoodDesc], [GoodFacturer], [LeaveFactoryDate], [Special], [inputdate], [bengindate], [enddate]) VALUES (N'7', 25, N'苹果iPad2 Smart Cover原装PU皮套/休眠保护套(送膜+防尘套装)蓝', CAST(598 AS Decimal(18, 0)), CAST(298 AS Decimal(18, 0)), N'product/smart_cover.jpeg', N'品牌：苹果Apple
适用于：苹果ipad2平板电脑

iPad2智能皮套有两种材质,本品为第一种PU合成材质！
1、聚氨酯（简称PU合成）：粉色，橘色，绿色，蓝色，灰色
2、意大利皮质：米色，杏色，黑色，蓝黑色，红色

', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[merchandisc] ([MerId], [category], [MerName], [Price], [SPrice], [Picture], [GoodDesc], [GoodFacturer], [LeaveFactoryDate], [Special], [inputdate], [bengindate], [enddate]) VALUES (N'8', 38, N'汉王N618T电纸书', CAST(3280 AS Decimal(18, 0)), CAST(3150 AS Decimal(18, 0)), N'product/cepDrIwy5PoE.jpg', N'N618T是汉王推出的最新一款3G电纸书:

N618T为3G信号,TD-SCDMA和GSM网络 可以随时随地的在汉王书城上下载当天的报纸、书籍等。N618T增加了浏览器、可以登陆任何不加密的网站，可以登录网页版的微博、飞信、腾讯QQ等。阅读方面功能非常强大。可以横竖屏切换阅读各种格式，预装多部词典、可以即时翻译；在手写方面不仅可以原笔迹、也可以手写输入文本记事，并且导入到电脑；可以全文查找；带TTS听书功能。此机器外观和汉王之前的经典产品n610，n618系列产品外观一样，不同的是n618t是3g上网n618是wifi上网，由于wifi局域网的上网局限性，所以n618t就具有，上网比较方便切很少受地域的限制。

主要功能：

高速上网：内置TD模块，随时通过3G网络进入汉王书城，高速下载图书。
双模支持：2G/3G网络自动无缝切换，让阅读不受阻碍。
网上冲浪：内置浏览器功能，阅读新闻、搜索资讯，让移动办公变动非常简单。
手写触控：采用汉王手写电磁板专利技术，在按键操作基础上，实现便捷流畅的手写触控。 
舒适阅读：基于电子墨水技术的电子纸显示屏，无闪烁、无辐射，字号缩放自如。
超低功耗：一次充电，开机状态可连续待机15天以上，可连续翻页10000次以上。 
便笺记事：采用汉王最新手写识别技术，支持原笔迹便笺及文本记事功能。
批注功能：实现流畅自如的手写输入，在阅读中即时批注，圈圈点点，随手随心。 
书籍搜索：用户输入想要搜索的内容，系统搜索全文并找到所查找内容的位置?? 
自动翻页：在阅读TXT、HTXT、HTML、PDF、 DOC、XLS、EPUB、PPT书籍时，系统提供自动翻页功能。
即时翻译：快捷的点击取词功能，帮您扫清中、英语阅读障碍。
声乐播放：支持音频文件播放，有声读物、优美音乐，边看边听，惬意自在


屏幕材质：电子纸材质
文本格式：支持PDF，PPT，DOC，XLS，TXT，H...
上网功能：支持3G上网
分辨率：800*600像素
存储扩展：支持TF（MicroSD）卡，最大32GB...
产品重量：275g
音频格式：支持MP3，WAV，WMA格式
产品接口：mini USB2.0
图片格式：支持JPG，PNG，BMP，GIF，TIF格...
屏幕色彩：16阶灰度', NULL, NULL, 1, NULL, N'2012-03-12', N'2012-03-21')
/****** Object:  Table [dbo].[member]    Script Date: 04/08/2015 00:37:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[member](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Memberlevel] [int] NULL,
	[LoginName] [varchar](12) NOT NULL,
	[LoginPwd] [varchar](12) NOT NULL,
	[Sex] [varchar](50) NULL,
	[Birth] [varchar](50) NULL,
	[Eduation] [varchar](50) NULL,
	[Phone] [varchar](15) NULL,
	[Address] [varchar](100) NULL,
	[Zip] [varchar](6) NULL,
	[Email] [varchar](100) NULL,
	[RegDate] [varchar](50) NULL,
	[LastDate] [varchar](50) NULL,
	[LoginTimes] [int] NULL,
	[head] [varchar](50) NULL,
 CONSTRAINT [PK_member] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[member] ON
INSERT [dbo].[member] ([Id], [Memberlevel], [LoginName], [LoginPwd], [Sex], [Birth], [Eduation], [Phone], [Address], [Zip], [Email], [RegDate], [LastDate], [LoginTimes], [head]) VALUES (1, 1, N'guest', N'123456', N'男', N'1990-11-21', N'本科', N'13678987890', N'苏州', N'225104', N'guest@126.com', N'2012-03-01', NULL, NULL, N'image/2015480036.jpg')
INSERT [dbo].[member] ([Id], [Memberlevel], [LoginName], [LoginPwd], [Sex], [Birth], [Eduation], [Phone], [Address], [Zip], [Email], [RegDate], [LastDate], [LoginTimes], [head]) VALUES (15, 0, N'szdaisy', N'1', N'女', N'1998-11-12', N'本科', N'025-65949786', N'苏州工业职业技术学院', N'215104', N'szdaisy@siit.cn', N'2015/4/8', N'', 2, N'')
SET IDENTITY_INSERT [dbo].[member] OFF
/****** Object:  Table [dbo].[focus]    Script Date: 04/08/2015 00:37:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[focus](
	[MemberId] [int] NOT NULL,
	[ClassId] [int] NOT NULL,
 CONSTRAINT [PK_focus] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC,
	[ClassId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 04/08/2015 00:37:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contact](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NOT NULL,
	[Addressee] [varchar](50) NOT NULL,
	[address] [varchar](100) NOT NULL,
	[phone] [varchar](50) NOT NULL,
	[zip] [varchar](50) NOT NULL,
	[DefaultValue] [bit] NULL,
 CONSTRAINT [PK_contact] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[contact] ON
INSERT [dbo].[contact] ([ContactId], [MemberId], [Addressee], [address], [phone], [zip], [DefaultValue]) VALUES (1, 1, N'陈伟', N'苏州工业职业技术学院吴中大道1号', N'13090909134', N'224105', 0)
INSERT [dbo].[contact] ([ContactId], [MemberId], [Addressee], [address], [phone], [zip], [DefaultValue]) VALUES (3, 1, N'李平', N'苏州大学', N'051266550678', N'214100', 0)
INSERT [dbo].[contact] ([ContactId], [MemberId], [Addressee], [address], [phone], [zip], [DefaultValue]) VALUES (4, 2, N'张三', N'苏州市经贸学院', N'123456778', N'215104', 0)
INSERT [dbo].[contact] ([ContactId], [MemberId], [Addressee], [address], [phone], [zip], [DefaultValue]) VALUES (7, 1, N'王五', N'苏州职业大学', N'138989898954', N'215104', 1)
INSERT [dbo].[contact] ([ContactId], [MemberId], [Addressee], [address], [phone], [zip], [DefaultValue]) VALUES (8, 14, N'胡霞', N'苏州市吴中大道致能大道1号', N'13878980028', N'215104', 1)
INSERT [dbo].[contact] ([ContactId], [MemberId], [Addressee], [address], [phone], [zip], [DefaultValue]) VALUES (9, 7, N'张明', N'苏州职业大学', N'13999892012', N'215104', 1)
INSERT [dbo].[contact] ([ContactId], [MemberId], [Addressee], [address], [phone], [zip], [DefaultValue]) VALUES (10, 15, N'代西', N'苏州工业职业技术学院', N'13898909878', N'215104', 0)
INSERT [dbo].[contact] ([ContactId], [MemberId], [Addressee], [address], [phone], [zip], [DefaultValue]) VALUES (11, 15, N'李新', N'苏州工业职业技术学院', N'18912345342', N'215104', 1)
SET IDENTITY_INSERT [dbo].[contact] OFF
/****** Object:  Table [dbo].[classTwo]    Script Date: 04/08/2015 00:37:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[classTwo](
	[ClassTwoId] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NOT NULL,
	[ClassTwoName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_classTwo] PRIMARY KEY CLUSTERED 
(
	[ClassTwoId] ASC,
	[ClassId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[classTwo] ON
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (1, 1, N'诺基亚')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (2, 1, N'三星')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (3, 1, N'摩托罗拉')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (4, 1, N'LG')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (7, 1, N'索尼爱立信')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (8, 1, N'HTC')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (9, 1, N'苹果')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (10, 1, N'夏普')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (11, 1, N'步步高')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (12, 1, N'中兴')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (13, 1, N'首派')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (14, 1, N'联想')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (15, 2, N'联想')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (16, 2, N'惠普')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (17, 2, N'华硕')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (18, 2, N'同方')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (19, 2, N'神舟')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (20, 2, N'戴尔')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (21, 2, N'宏基')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (22, 2, N'三星')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (23, 2, N'索尼')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (24, 2, N'苹果')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (25, 3, N'苹果')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (26, 3, N'三星')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (27, 3, N'联想')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (28, 3, N'索尼')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (29, 3, N'万利达')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (30, 3, N'汉王')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (31, 3, N'摩托罗拉')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (32, 3, N'华为')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (33, 11, N'GPS导航仪')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (34, 11, N'GPS手持式')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (35, 11, N'车载后装')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (36, 11, N'电子狗')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (37, 11, N'行车仪')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (38, 7, N'汉王')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (39, 7, N'爱国者')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (40, 7, N'旅行者')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (41, 7, N'纽曼')
INSERT [dbo].[classTwo] ([ClassTwoId], [ClassId], [ClassTwoName]) VALUES (42, 7, N'爱国者')
SET IDENTITY_INSERT [dbo].[classTwo] OFF
/****** Object:  Table [dbo].[classOne]    Script Date: 04/08/2015 00:37:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[classOne](
	[ClassId] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ClassI] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[classOne] ON
INSERT [dbo].[classOne] ([ClassId], [ClassName]) VALUES (1, N'手机')
INSERT [dbo].[classOne] ([ClassId], [ClassName]) VALUES (2, N'笔记本')
INSERT [dbo].[classOne] ([ClassId], [ClassName]) VALUES (3, N'平板电脑')
INSERT [dbo].[classOne] ([ClassId], [ClassName]) VALUES (4, N'数码相机')
INSERT [dbo].[classOne] ([ClassId], [ClassName]) VALUES (5, N'摄相机')
INSERT [dbo].[classOne] ([ClassId], [ClassName]) VALUES (6, N'MP3/Mp4')
INSERT [dbo].[classOne] ([ClassId], [ClassName]) VALUES (7, N'电子书')
INSERT [dbo].[classOne] ([ClassId], [ClassName]) VALUES (8, N'MID')
INSERT [dbo].[classOne] ([ClassId], [ClassName]) VALUES (9, N'数字家电')
INSERT [dbo].[classOne] ([ClassId], [ClassName]) VALUES (10, N'高清播放机')
INSERT [dbo].[classOne] ([ClassId], [ClassName]) VALUES (11, N'GPS')
INSERT [dbo].[classOne] ([ClassId], [ClassName]) VALUES (12, N'移动存储')
SET IDENTITY_INSERT [dbo].[classOne] OFF
/****** Object:  Table [dbo].[cart]    Script Date: 04/08/2015 00:37:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NOT NULL,
	[MerId] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_cart] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购物车编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cart', @level2type=N'COLUMN',@level2name=N'CartId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cart', @level2type=N'COLUMN',@level2name=N'MemberId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cart', @level2type=N'COLUMN',@level2name=N'MerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cart', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'加入是商品价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cart', @level2type=N'COLUMN',@level2name=N'Price'
GO
SET IDENTITY_INSERT [dbo].[cart] ON
INSERT [dbo].[cart] ([CartId], [MemberId], [MerId], [Amount], [Price]) VALUES (6, 7, 7, 1, CAST(298 AS Decimal(18, 0)))
INSERT [dbo].[cart] ([CartId], [MemberId], [MerId], [Amount], [Price]) VALUES (7, 6, 4, 4, CAST(4499 AS Decimal(18, 0)))
INSERT [dbo].[cart] ([CartId], [MemberId], [MerId], [Amount], [Price]) VALUES (8, 5, 4, 4, CAST(4499 AS Decimal(18, 0)))
INSERT [dbo].[cart] ([CartId], [MemberId], [MerId], [Amount], [Price]) VALUES (9, 5, 4, 4, CAST(4499 AS Decimal(18, 0)))
INSERT [dbo].[cart] ([CartId], [MemberId], [MerId], [Amount], [Price]) VALUES (11, 5, 5, 2, CAST(3698 AS Decimal(18, 0)))
INSERT [dbo].[cart] ([CartId], [MemberId], [MerId], [Amount], [Price]) VALUES (14, 2, 7, 1, CAST(298 AS Decimal(18, 0)))
INSERT [dbo].[cart] ([CartId], [MemberId], [MerId], [Amount], [Price]) VALUES (15, 2, 4, 2, CAST(4499 AS Decimal(18, 0)))
INSERT [dbo].[cart] ([CartId], [MemberId], [MerId], [Amount], [Price]) VALUES (16, 14, 4, 2, CAST(4499 AS Decimal(18, 0)))
INSERT [dbo].[cart] ([CartId], [MemberId], [MerId], [Amount], [Price]) VALUES (18, 14, 5, 1, CAST(3698 AS Decimal(18, 0)))
INSERT [dbo].[cart] ([CartId], [MemberId], [MerId], [Amount], [Price]) VALUES (19, 7, 5, 1, CAST(3698 AS Decimal(18, 0)))
INSERT [dbo].[cart] ([CartId], [MemberId], [MerId], [Amount], [Price]) VALUES (20, 1, 6, 1, CAST(98 AS Decimal(18, 0)))
INSERT [dbo].[cart] ([CartId], [MemberId], [MerId], [Amount], [Price]) VALUES (21, 15, 1, 1, CAST(6999 AS Decimal(18, 0)))
INSERT [dbo].[cart] ([CartId], [MemberId], [MerId], [Amount], [Price]) VALUES (22, 1, 3, 1, CAST(899 AS Decimal(18, 0)))
INSERT [dbo].[cart] ([CartId], [MemberId], [MerId], [Amount], [Price]) VALUES (23, 1, 2, 1, CAST(1510 AS Decimal(18, 0)))
INSERT [dbo].[cart] ([CartId], [MemberId], [MerId], [Amount], [Price]) VALUES (24, 15, 4, 1, CAST(4499 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[cart] OFF
/****** Object:  Table [dbo].[admin]    Script Date: 04/08/2015 00:37:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[adminId] [int] IDENTITY(1,1) NOT NULL,
	[adminName] [nvarchar](20) NULL,
	[adminPassword] [nvarchar](10) NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[adminId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON
INSERT [dbo].[admin] ([adminId], [adminName], [adminPassword]) VALUES (1, N'admin', N'123456')
SET IDENTITY_INSERT [dbo].[admin] OFF
