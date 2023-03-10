USE [VetriOTT]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 06/02/2023 18:28:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Banner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bannerId] [int] NULL,
	[bannerImagePath] [varchar](max) NULL,
	[isActive] [bit] NULL CONSTRAINT [DF_banner_isActive]  DEFAULT ((1)),
	[createdOn] [date] NULL CONSTRAINT [DF_banner_createdOn]  DEFAULT (getdate()),
	[videoType] [varchar](50) NULL,
 CONSTRAINT [PK_banner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 06/02/2023 18:28:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Languages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[languageId] [int] NULL,
	[languagee] [varchar](50) NULL,
	[ImagePath] [varchar](max) NULL,
	[isActive] [bit] NULL CONSTRAINT [DF_language_isActive]  DEFAULT ((1)),
	[createdOn] [date] NULL CONSTRAINT [DF_language_createdOn]  DEFAULT (getdate()),
 CONSTRAINT [PK_language] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 06/02/2023 18:28:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roleId] [int] NULL,
	[roleName] [varchar](50) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_Role_IsActive]  DEFAULT ((1)),
	[createdOn] [date] NULL CONSTRAINT [DF_Role_createdOn]  DEFAULT (getdate()),
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StarCast]    Script Date: 06/02/2023 18:28:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StarCast](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[starId] [int] NULL,
	[imagePath] [varchar](max) NULL,
	[isActive] [bit] NULL CONSTRAINT [DF_Table_1_isActive]  DEFAULT ((1)),
	[createdOn] [date] NULL CONSTRAINT [DF_Table_1_createdOn]  DEFAULT (getdate()),
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06/02/2023 18:28:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[User_id] [int] NULL,
	[Mobile_number] [varchar](20) NULL,
	[Name] [varchar](50) NULL,
	[Email_id] [varchar](50) NULL,
	[Age] [int] NULL,
	[Date_of_birth] [varchar](50) NULL,
	[Gender] [varchar](10) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_User_IsActive]  DEFAULT ((1)),
	[Created_on] [datetime] NULL CONSTRAINT [DF_User_Created_on]  DEFAULT (getdate()),
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VideoDetails]    Script Date: 06/02/2023 18:28:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VideoDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[videoId] [int] NULL,
	[title] [varchar](100) NULL,
	[imagePath] [varchar](max) NULL,
	[description] [varchar](max) NULL,
	[releasedYear] [varchar](50) NULL,
	[duration] [varchar](50) NULL,
	[ageRestriction] [varchar](20) NULL,
	[isActive] [bit] NULL CONSTRAINT [DF_VideoDetails_isActive]  DEFAULT ((1)),
	[createdOn] [datetime] NULL CONSTRAINT [DF_VideoDetails_ceatedOn]  DEFAULT (getdate()),
	[languageId] [int] NULL,
	[videoType] [varchar](50) NULL,
	[starId] [int] NULL,
	[videoPath] [varchar](max) NULL,
 CONSTRAINT [PK_VideoDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VideoStarCast]    Script Date: 06/02/2023 18:28:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VideoStarCast](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[videoStarCastId] [int] NULL,
	[videoId] [int] NULL,
	[starId] [varchar](max) NULL,
	[characterName] [varchar](50) NULL,
	[roleId] [int] NULL,
	[isActive] [bit] NULL CONSTRAINT [DF_VideoStarCast_isActive]  DEFAULT ((1)),
	[createdOn] [date] NULL CONSTRAINT [DF_VideoStarCast_createdOn]  DEFAULT (getdate()),
 CONSTRAINT [PK_VideoStarCast] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([id], [bannerId], [bannerImagePath], [isActive], [createdOn], [videoType]) VALUES (1, 1, N'https://pbs.twimg.com/media/FjYmUi7WAAAGd0H.jpg:large', 1, CAST(N'2023-01-23' AS Date), N'movie')
INSERT [dbo].[Banner] ([id], [bannerId], [bannerImagePath], [isActive], [createdOn], [videoType]) VALUES (2, 2, N'https://i.ytimg.com/vi/devYpNVhBWY/maxresdefault.jpg', 1, CAST(N'2023-01-23' AS Date), N'movie')
INSERT [dbo].[Banner] ([id], [bannerId], [bannerImagePath], [isActive], [createdOn], [videoType]) VALUES (3, 3, N'https://www.nowrunning.com/content/movie/2022/latht-26330/bg2.jpg', 1, CAST(N'2023-02-06' AS Date), N'movie')
INSERT [dbo].[Banner] ([id], [bannerId], [bannerImagePath], [isActive], [createdOn], [videoType]) VALUES (4, 4, N'https://static.toiimg.com/photo/72243079.jpeg', 1, CAST(N'2023-02-06' AS Date), N'movie')
INSERT [dbo].[Banner] ([id], [bannerId], [bannerImagePath], [isActive], [createdOn], [videoType]) VALUES (5, 5, N'https://www.koimoi.com/wp-content/new-galleries/2022/09/cobra-makers-of-chiyaan-vikram-starrer-trim-out-20-minutes-off-from-the-film-on-fans-scrutinize-it-for-being-lengthy-find-out-001.jpg', 1, CAST(N'2023-02-06' AS Date), N'movie')
INSERT [dbo].[Banner] ([id], [bannerId], [bannerImagePath], [isActive], [createdOn], [videoType]) VALUES (6, 6, N'https://i.ytimg.com/vi/OKBMCL-frPU/maxresdefault.jpg', 1, CAST(N'2023-02-06' AS Date), N'movie')
INSERT [dbo].[Banner] ([id], [bannerId], [bannerImagePath], [isActive], [createdOn], [videoType]) VALUES (7, 7, N'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202210/ponniyin_selvan_box_office_collection_day_18_mani_ratnam-sixteen_nine.jpg?VersionId=HQAXZS7pXb1WGckby9Wgi8giB_9a2NSu', 1, CAST(N'2023-02-06' AS Date), N'movie')
INSERT [dbo].[Banner] ([id], [bannerId], [bannerImagePath], [isActive], [createdOn], [videoType]) VALUES (8, 8, N'https://i.ytimg.com/vi/LGgOmdvF78o/maxresdefault.jpg', 1, CAST(N'2023-02-06' AS Date), N'movie')
INSERT [dbo].[Banner] ([id], [bannerId], [bannerImagePath], [isActive], [createdOn], [videoType]) VALUES (9, 9, N'https://occ-0-2774-590.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABQWfaXVYX_pU14Ylnbk0Rsi4WqZW2lkARrC0mLZGevaPdDoLu-T2JN7iQ6ShECQlQFQrA_Tiq89lmCHwJHLWEaEGWf7gjKt2OXQv.jpg?r=67d', 1, CAST(N'2023-02-06' AS Date), N'movie')
INSERT [dbo].[Banner] ([id], [bannerId], [bannerImagePath], [isActive], [createdOn], [videoType]) VALUES (10, 10, N'https://nonlinearplot.com/wp-content/uploads/2022/09/V1-1280x640.jpeg', 1, CAST(N'2023-02-06' AS Date), N'movie')
INSERT [dbo].[Banner] ([id], [bannerId], [bannerImagePath], [isActive], [createdOn], [videoType]) VALUES (11, 11, N'https://i.ytimg.com/vi/PbRAJGTr5Dc/maxresdefault.jpg', 1, CAST(N'2023-02-06' AS Date), N'Song')
INSERT [dbo].[Banner] ([id], [bannerId], [bannerImagePath], [isActive], [createdOn], [videoType]) VALUES (12, 12, N'https://images.indianexpress.com/2022/12/Kasethan-Kadavulada-1200.jpg', 1, CAST(N'2023-02-06' AS Date), N'Song')
INSERT [dbo].[Banner] ([id], [bannerId], [bannerImagePath], [isActive], [createdOn], [videoType]) VALUES (13, 13, N'https://i.ytimg.com/vi/RbQgF_vocLU/maxresdefault.jpg', 1, CAST(N'2023-02-06' AS Date), N'Song')
INSERT [dbo].[Banner] ([id], [bannerId], [bannerImagePath], [isActive], [createdOn], [videoType]) VALUES (14, 14, N'https://filmhist.com/wp-content/uploads/2022/08/Chola-Chola-Song-Download-Ponniyin-Selvan-1024x576.jpg', 1, CAST(N'2023-02-06' AS Date), N'Song')
INSERT [dbo].[Banner] ([id], [bannerId], [bannerImagePath], [isActive], [createdOn], [videoType]) VALUES (15, 15, N'https://i.ytimg.com/vi/zuVV9Y55gvc/maxresdefault.jpg', 1, CAST(N'2023-02-06' AS Date), N'Song')
INSERT [dbo].[Banner] ([id], [bannerId], [bannerImagePath], [isActive], [createdOn], [videoType]) VALUES (16, 16, N'https://i.ytimg.com/vi/AJCHuxX8fEY/maxresdefault.jpg', 1, CAST(N'2023-02-06' AS Date), N'Song')
SET IDENTITY_INSERT [dbo].[Banner] OFF
SET IDENTITY_INSERT [dbo].[Languages] ON 

INSERT [dbo].[Languages] ([id], [languageId], [languagee], [ImagePath], [isActive], [createdOn]) VALUES (1, 1, N'Tamil', NULL, 1, CAST(N'2023-01-24' AS Date))
INSERT [dbo].[Languages] ([id], [languageId], [languagee], [ImagePath], [isActive], [createdOn]) VALUES (2, 2, N'Hindi', NULL, 1, CAST(N'2023-01-24' AS Date))
INSERT [dbo].[Languages] ([id], [languageId], [languagee], [ImagePath], [isActive], [createdOn]) VALUES (3, 3, N'Telugu', NULL, 1, CAST(N'2023-01-24' AS Date))
INSERT [dbo].[Languages] ([id], [languageId], [languagee], [ImagePath], [isActive], [createdOn]) VALUES (4, 4, N'English', NULL, 1, CAST(N'2023-01-24' AS Date))
SET IDENTITY_INSERT [dbo].[Languages] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([id], [roleId], [roleName], [IsActive], [createdOn]) VALUES (1, 1, N'hero', 1, CAST(N'2023-01-24' AS Date))
INSERT [dbo].[Roles] ([id], [roleId], [roleName], [IsActive], [createdOn]) VALUES (2, 2, N'heroine', 1, CAST(N'2023-02-06' AS Date))
INSERT [dbo].[Roles] ([id], [roleId], [roleName], [IsActive], [createdOn]) VALUES (3, 3, N'comedian', 1, CAST(N'2023-02-06' AS Date))
INSERT [dbo].[Roles] ([id], [roleId], [roleName], [IsActive], [createdOn]) VALUES (4, 4, N'police', 1, CAST(N'2023-02-06' AS Date))
INSERT [dbo].[Roles] ([id], [roleId], [roleName], [IsActive], [createdOn]) VALUES (5, 5, N'criminal', 1, CAST(N'2023-02-06' AS Date))
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[StarCast] ON 

INSERT [dbo].[StarCast] ([id], [starId], [imagePath], [isActive], [createdOn], [name]) VALUES (1, 1, N'https://www.cinejosh.com/newsimg/newsmainimg/ajith-ak62_b_0502231106.jpg', 1, CAST(N'2023-01-24' AS Date), N'Ajith')
INSERT [dbo].[StarCast] ([id], [starId], [imagePath], [isActive], [createdOn], [name]) VALUES (2, 2, N'https://images.hindustantimes.com/img/2022/12/06/1600x900/varisu_1668341177374_1670314518169_1670314518169.jpeg', 1, CAST(N'2023-01-24' AS Date), N'Vijay')
INSERT [dbo].[StarCast] ([id], [starId], [imagePath], [isActive], [createdOn], [name]) VALUES (3, 3, N'https://www.updatenews360.com/english/wp-content/uploads/2022/04/Xefntr7z_400x400.jpg', 1, CAST(N'2023-01-24' AS Date), N'Rajini')
INSERT [dbo].[StarCast] ([id], [starId], [imagePath], [isActive], [createdOn], [name]) VALUES (4, 4, N'https://www.instantstories.com/uploads/stories/kamal-haasan/kamal-haasan-latest-hot-images-tjmm-lg.jpg?v=1569321608', 1, CAST(N'2023-02-06' AS Date), N'Kamal')
INSERT [dbo].[StarCast] ([id], [starId], [imagePath], [isActive], [createdOn], [name]) VALUES (5, 5, N'https://wallpaperaccess.com/full/4497174.jpg', 1, CAST(N'2023-02-06' AS Date), N'Karthi')
INSERT [dbo].[StarCast] ([id], [starId], [imagePath], [isActive], [createdOn], [name]) VALUES (6, 6, N'https://i.pinimg.com/originals/30/95/a9/3095a93380f0db92ab68880d2eb2589e.jpg', 1, CAST(N'2023-02-06' AS Date), N'Surya')
INSERT [dbo].[StarCast] ([id], [starId], [imagePath], [isActive], [createdOn], [name]) VALUES (7, 7, N'https://cdn.mwallpapers.com/photos/celebrities/dhanush/dhanush-hd-wallpapersimages-1080p-pu8g6r.jpg', 1, CAST(N'2023-02-06' AS Date), N'Dhanush')
INSERT [dbo].[StarCast] ([id], [starId], [imagePath], [isActive], [createdOn], [name]) VALUES (8, 8, N'https://images.indulgexpress.com/uploads/user/imagelibrary/2021/10/4/original/SimbuinMaanaadu.jpg?w=400&dpr=2.6', 1, CAST(N'2023-02-06' AS Date), N'Str')
INSERT [dbo].[StarCast] ([id], [starId], [imagePath], [isActive], [createdOn], [name]) VALUES (9, 9, N'https://w0.peakpx.com/wallpaper/356/969/HD-wallpaper-chiyaan-vikram-jayam-ravi-and-trisha-to-meet-fans-during-ponniyin-selvan-promotion-tour-in-thanjavur-tamil-movie-news-times-of-india.jpg', 1, CAST(N'2023-02-06' AS Date), N'Vicram')
INSERT [dbo].[StarCast] ([id], [starId], [imagePath], [isActive], [createdOn], [name]) VALUES (10, 10, N'https://play-lh.googleusercontent.com/5VZurlcQ_8x7on7f9-kmvBFiNwf_jyIlBSDShobN6lhk-UMNZ_D_gb2D0yV0_gC3mg', 1, CAST(N'2023-02-06' AS Date), N'ARR')
INSERT [dbo].[StarCast] ([id], [starId], [imagePath], [isActive], [createdOn], [name]) VALUES (11, 11, N'https://i.pinimg.com/550x/c0/ab/6e/c0ab6e1df4673f97e419e9e591d08958.jpg', 1, CAST(N'2023-02-06' AS Date), N'U1')
INSERT [dbo].[StarCast] ([id], [starId], [imagePath], [isActive], [createdOn], [name]) VALUES (12, 12, N'https://i.pinimg.com/736x/56/64/32/56643221daadcfbb35957b6efec215b8.jpg', 1, CAST(N'2023-02-06' AS Date), N'HHT')
INSERT [dbo].[StarCast] ([id], [starId], [imagePath], [isActive], [createdOn], [name]) VALUES (13, 13, N'https://i.pinimg.com/originals/3a/a0/3e/3aa03eb1cdd471a6514fe682c7a612e5.jpg', 1, CAST(N'2023-02-06' AS Date), N'Ani')
INSERT [dbo].[StarCast] ([id], [starId], [imagePath], [isActive], [createdOn], [name]) VALUES (14, 14, N'https://pbs.twimg.com/media/Ez-0vQQXMAI8sGR.jpg', 1, CAST(N'2023-02-06' AS Date), N'Gvp')
INSERT [dbo].[StarCast] ([id], [starId], [imagePath], [isActive], [createdOn], [name]) VALUES (15, 15, N'https://pbs.twimg.com/media/FLR_Pu7UcAQkTne.jpg:large', 1, CAST(N'2023-02-06' AS Date), N'V.Antony')
SET IDENTITY_INSERT [dbo].[StarCast] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [User_id], [Mobile_number], [Name], [Email_id], [Age], [Date_of_birth], [Gender], [IsActive], [Created_on]) VALUES (1, 1, N'8974561230', N'T', N'test@gmail.com', 12, N'2022-08-01', N'Female', 1, CAST(N'2023-01-09 15:17:51.070' AS DateTime))
INSERT [dbo].[Users] ([id], [User_id], [Mobile_number], [Name], [Email_id], [Age], [Date_of_birth], [Gender], [IsActive], [Created_on]) VALUES (2, 2, N'7402001797', N'karventhan', N'vetriventhan707@gmail.com', 22, NULL, N'male', 1, CAST(N'2023-01-23 15:13:16.717' AS DateTime))
INSERT [dbo].[Users] ([id], [User_id], [Mobile_number], [Name], [Email_id], [Age], [Date_of_birth], [Gender], [IsActive], [Created_on]) VALUES (3, 3, N'7402001797', N'karventhan', N'vetriventhan707@gmail.com', 22, NULL, N'male', 1, CAST(N'2023-01-23 15:13:39.123' AS DateTime))
INSERT [dbo].[Users] ([id], [User_id], [Mobile_number], [Name], [Email_id], [Age], [Date_of_birth], [Gender], [IsActive], [Created_on]) VALUES (4, 4, N'7402001797', N'karventhan', N'vetriventhan707@gmail.com', 22, NULL, N'male', 1, CAST(N'2023-01-23 15:53:32.653' AS DateTime))
INSERT [dbo].[Users] ([id], [User_id], [Mobile_number], [Name], [Email_id], [Age], [Date_of_birth], [Gender], [IsActive], [Created_on]) VALUES (5, 5, N'7402001797', N'karventhan', N'vetriventhan707@gmail.com', 22, NULL, N'male', 1, CAST(N'2023-01-23 15:55:29.917' AS DateTime))
INSERT [dbo].[Users] ([id], [User_id], [Mobile_number], [Name], [Email_id], [Age], [Date_of_birth], [Gender], [IsActive], [Created_on]) VALUES (6, 6, N'7402001797', N'karventhan', N'vetriventhan707@gmail.com', 22, NULL, N'male', 1, CAST(N'2023-01-23 15:57:17.810' AS DateTime))
INSERT [dbo].[Users] ([id], [User_id], [Mobile_number], [Name], [Email_id], [Age], [Date_of_birth], [Gender], [IsActive], [Created_on]) VALUES (7, 7, N'7402001797', N'karventhan', N'vetriventhan707@gmail.com', 22, NULL, N'male', 1, CAST(N'2023-01-23 16:01:21.420' AS DateTime))
INSERT [dbo].[Users] ([id], [User_id], [Mobile_number], [Name], [Email_id], [Age], [Date_of_birth], [Gender], [IsActive], [Created_on]) VALUES (8, 8, N'7402001797', N'karventhan', N'vetriventhan707@gmail.com', 22, NULL, N'male', 1, CAST(N'2023-01-23 16:54:37.363' AS DateTime))
INSERT [dbo].[Users] ([id], [User_id], [Mobile_number], [Name], [Email_id], [Age], [Date_of_birth], [Gender], [IsActive], [Created_on]) VALUES (9, 9, N'7402001797', N'karventhan', N'vetriventhan707@gmail.com', 22, NULL, N'male', 1, CAST(N'2023-01-23 16:55:54.660' AS DateTime))
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[VideoDetails] ON 

INSERT [dbo].[VideoDetails] ([id], [videoId], [title], [imagePath], [description], [releasedYear], [duration], [ageRestriction], [isActive], [createdOn], [languageId], [videoType], [starId], [videoPath]) VALUES (1, 1, N'Thunivu', N'https://pbs.twimg.com/media/FiqqzUpacAIPDQV?format=jpg&name=900x900', N'A criminal mastermind and his team form a plan and commit bank heists across Chennai, but the motive of their heists remains mysterious', N'2022', N'2h20m', N'15+', 1, CAST(N'2023-01-24 10:16:53.217' AS DateTime), 1, N'Movie', 1, N'https://youtu.be/jnBZboK17_A')
INSERT [dbo].[VideoDetails] ([id], [videoId], [title], [imagePath], [description], [releasedYear], [duration], [ageRestriction], [isActive], [createdOn], [languageId], [videoType], [starId], [videoPath]) VALUES (2, 2, N'Varisu', N'https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/varisu-hindi-et00349618-1673267192.jpg', N'Vijay Rajendran is a happy-go-lucky man, but everything changes after the unexpected death of his foster father.', N'2022', N'2h15m', N'13+', 1, CAST(N'2023-01-24 10:17:05.500' AS DateTime), 1, N'Movie', 2, NULL)
INSERT [dbo].[VideoDetails] ([id], [videoId], [title], [imagePath], [description], [releasedYear], [duration], [ageRestriction], [isActive], [createdOn], [languageId], [videoType], [starId], [videoPath]) VALUES (3, 3, N'Annathe', N'https://live.staticflickr.com/65535/49899879193_dbecf20486_b.jpg', N'A man loves his younger sister dearly and does everything to make her happy. When she elopes with her lover to Kolkata, he goes to great lengths to protect her from the clutches of an evil gangster.', N'2022', N'2h45m', N'11+', 1, CAST(N'2023-01-24 10:17:28.277' AS DateTime), 1, N'Movie', 3, NULL)
INSERT [dbo].[VideoDetails] ([id], [videoId], [title], [imagePath], [description], [releasedYear], [duration], [ageRestriction], [isActive], [createdOn], [languageId], [videoType], [starId], [videoPath]) VALUES (4, 4, N'Vicram', N'https://static.wikia.nocookie.net/jhmovie/images/9/93/Vikram_2022_poster.jpg/revision/latest?https://m.media-amazon.com/images/M/MV5BMjAxZDEyZTUtMTdiMC00M2FkLWFlYWItZTQ3NWQzNzY2NDdjXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg', N'A special agent investigates a murder committed by a masked group of serial killers. However, a tangled maze of clues soon leads him to the drug kingpin of Chennai.', N'2022', N'2h55m', N'16+', 1, CAST(N'2023-02-06 16:48:23.070' AS DateTime), 1, N'Movie', 4, NULL)
INSERT [dbo].[VideoDetails] ([id], [videoId], [title], [imagePath], [description], [releasedYear], [duration], [ageRestriction], [isActive], [createdOn], [languageId], [videoType], [starId], [videoPath]) VALUES (5, 5, N'Sulthan', N'https://static.toiimg.com/photo/msid-78871275/78871275.jpg', N'A young man, who was raised by gangsters, vows to reform them. He finds the perfect opportunity to do so when some farmers approach the hoodlums for help against an evil man.', N'2022', N'2h35m', N'13+', 1, CAST(N'2023-02-06 16:48:25.013' AS DateTime), 1, N'Movie', 5, NULL)
INSERT [dbo].[VideoDetails] ([id], [videoId], [title], [imagePath], [description], [releasedYear], [duration], [ageRestriction], [isActive], [createdOn], [languageId], [videoType], [starId], [videoPath]) VALUES (6, 6, N'ET', N'https://www.filmibeat.com/img/popcorn/movie_posters/etharkkumthunindhavan-20220310141956-19608.jpg', N'Kannabiran, a lawyer, saves a young woman from a pornography racket run by Inba, a minister''s son. However, Inba threatens to leak explicit videos of several women, making Kannabiran go after him.', N'2022', N'2h31m', N'11+', 1, CAST(N'2023-02-06 16:48:27.263' AS DateTime), 1, N'Movie', 6, NULL)
INSERT [dbo].[VideoDetails] ([id], [videoId], [title], [imagePath], [description], [releasedYear], [duration], [ageRestriction], [isActive], [createdOn], [languageId], [videoType], [starId], [videoPath]) VALUES (7, 7, N'Vatthi', N'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-250,h-390/et00335415-ypldwwclkp-portrait.jpg', N'Vaathi is an upcoming Indian coming-of-age action drama film written and directed by Venky Atluri. It is shot simultaneously in Tamil and Telugu languages, with the latter titled as Sir. Produced by Sithara Entertainments and Fortune Four Cinemas, the film stars Dhanush and Samyuktha Menon', N'2022', N'2h30m', N'13+', 1, CAST(N'2023-02-06 16:48:30.257' AS DateTime), 1, N'Movie', 7, NULL)
INSERT [dbo].[VideoDetails] ([id], [videoId], [title], [imagePath], [description], [releasedYear], [duration], [ageRestriction], [isActive], [createdOn], [languageId], [videoType], [starId], [videoPath]) VALUES (8, 8, N'Patthu thala', N'https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/pathu-thala-et00333005-1672646997.jpg', N'Pathu Thala is an upcoming Indian Tamil-language action thriller film directed by Obeli N Krishna. The film stars Silambarasan, Gautham Karthik and Priya Bhavani Shankar in the lead roles. The film is an official remake of the Kannada film Mufti which starred Shiva Rajkumar and Sriimurali in the lead roles.', N'2022', N'2h15m', N'10+', 1, CAST(N'2023-02-06 16:48:32.133' AS DateTime), 1, N'Movie', 8, NULL)
INSERT [dbo].[VideoDetails] ([id], [videoId], [title], [imagePath], [description], [releasedYear], [duration], [ageRestriction], [isActive], [createdOn], [languageId], [videoType], [starId], [videoPath]) VALUES (9, 9, N'Mahaan', N'https://assetscdn1.paytm.com/images/cinema/1-11676640-7901-11ec-9fce-1f8461b3fe2d.jpg', N'A middle-aged school teacher, Gandhi Mahaan, embarks on a journey of self-discovery after getting abandoned by his family. He soon becomes a pride billionaire but faces many challenges.', N'2022', N'2h42m', N'13+', 1, CAST(N'2023-02-06 16:48:40.740' AS DateTime), 1, N'Movie', 9, NULL)
INSERT [dbo].[VideoDetails] ([id], [videoId], [title], [imagePath], [description], [releasedYear], [duration], [ageRestriction], [isActive], [createdOn], [languageId], [videoType], [starId], [videoPath]) VALUES (10, 10, N'Valimai', N'https://static.moviecrow.com/gallery/20210712/187454-valimai%20poster.jpg', N'A city witnesses a spike in its crime rate due to the nefarious activities of a notorious motorcycle club. When things get out of hand, it is up to Arjun, a police officer, to restore law and order.', N'2022', N'2h47m', N'11+', 1, CAST(N'2023-02-06 16:48:47.630' AS DateTime), 1, N'Movie', 1, NULL)
INSERT [dbo].[VideoDetails] ([id], [videoId], [title], [imagePath], [description], [releasedYear], [duration], [ageRestriction], [isActive], [createdOn], [languageId], [videoType], [starId], [videoPath]) VALUES (11, 11, N'Pacha ilai', N'https://i.scdn.co/image/ab67616d0000b273b1b0337d27a21e184196442f', NULL, N'2022', N'3m15s', N'14+', 1, CAST(N'2023-02-06 17:32:31.093' AS DateTime), 1, N'Song', 11, NULL)
INSERT [dbo].[VideoDetails] ([id], [videoId], [title], [imagePath], [description], [releasedYear], [duration], [ageRestriction], [isActive], [createdOn], [languageId], [videoType], [starId], [videoPath]) VALUES (12, 12, N'Orunalil', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEdU2W51LNx34Fx88tqSHWsszlwuIk2IOqMw&usqp=CAU', NULL, N'2022', N'4m20s', N'12+', 1, CAST(N'2023-02-06 17:32:32.637' AS DateTime), 1, N'Song', 11, NULL)
INSERT [dbo].[VideoDetails] ([id], [videoId], [title], [imagePath], [description], [releasedYear], [duration], [ageRestriction], [isActive], [createdOn], [languageId], [videoType], [starId], [videoPath]) VALUES (13, 13, N'Singappenne', N'https://www.tsonglyrics.com/wp-content/uploads/2019/08/Singa-Penne-Song-Lyrics-in-Tamil.jpeg', NULL, N'2022', N'4m15s', N'15+', 1, CAST(N'2023-02-06 17:32:35.913' AS DateTime), 1, N'Song', 10, NULL)
INSERT [dbo].[VideoDetails] ([id], [videoId], [title], [imagePath], [description], [releasedYear], [duration], [ageRestriction], [isActive], [createdOn], [languageId], [videoType], [starId], [videoPath]) VALUES (14, 14, N'Ponni nadhi', N'https://pbs.twimg.com/media/FY5Qq5haUAAX67E?format=jpg&name=medium', NULL, N'2022', N'4m10s', N'10+', 1, CAST(N'2023-02-06 17:32:42.273' AS DateTime), 1, N'Song', 10, NULL)
INSERT [dbo].[VideoDetails] ([id], [videoId], [title], [imagePath], [description], [releasedYear], [duration], [ageRestriction], [isActive], [createdOn], [languageId], [videoType], [starId], [videoPath]) VALUES (15, 15, N'vaadi pulla vaadi', N'https://i.pinimg.com/736x/62/01/20/620120ea681a004797fada04cfda8f6c.jpg', NULL, N'2022', N'4m50s', N'13+', 1, CAST(N'2023-02-06 17:32:44.693' AS DateTime), 1, N'Song', 12, NULL)
INSERT [dbo].[VideoDetails] ([id], [videoId], [title], [imagePath], [description], [releasedYear], [duration], [ageRestriction], [isActive], [createdOn], [languageId], [videoType], [starId], [videoPath]) VALUES (16, 16, N'Single Pasanga', N'https://images.hungama.com/c/1/03d/f4d/46576052/46576052_300x300.jpg', NULL, N'2022', N'3m50s', N'12+', 1, CAST(N'2023-02-06 17:32:46.923' AS DateTime), 1, N'Song', 12, NULL)
INSERT [dbo].[VideoDetails] ([id], [videoId], [title], [imagePath], [description], [releasedYear], [duration], [ageRestriction], [isActive], [createdOn], [languageId], [videoType], [starId], [videoPath]) VALUES (17, 17, N'chilla chilla', N'https://pbs.twimg.com/media/FjiFwNrVsAEF8LY?format=jpg&name=900x900', NULL, N'2022', N'3m15s', N'11+', 1, CAST(N'2023-02-06 17:32:49.463' AS DateTime), 1, N'Song', 13, NULL)
INSERT [dbo].[VideoDetails] ([id], [videoId], [title], [imagePath], [description], [releasedYear], [duration], [ageRestriction], [isActive], [createdOn], [languageId], [videoType], [starId], [videoPath]) VALUES (18, 18, N'kanave kanave', N'https://i.ytimg.com/vi/R2YxKlrLIaA/movieposter.jpg', NULL, N'2022', N'4m50s', NULL, 1, CAST(N'2023-02-06 17:32:51.410' AS DateTime), 1, N'Song', 13, NULL)
INSERT [dbo].[VideoDetails] ([id], [videoId], [title], [imagePath], [description], [releasedYear], [duration], [ageRestriction], [isActive], [createdOn], [languageId], [videoType], [starId], [videoPath]) VALUES (19, 19, N'pokka pookkum tharunam', N'https://wallpapercave.com/wp/wp7849040.jpg', NULL, N'2022', N'3m15s', NULL, 1, CAST(N'2023-02-06 17:32:53.857' AS DateTime), 1, N'Song', 14, NULL)
INSERT [dbo].[VideoDetails] ([id], [videoId], [title], [imagePath], [description], [releasedYear], [duration], [ageRestriction], [isActive], [createdOn], [languageId], [videoType], [starId], [videoPath]) VALUES (20, 20, N'karuppu nerathalaki', N'https://www.behindwoods.com/tamil-movies/komban/images/komban-top-ten-songs-1598-mar-26.jpg', NULL, N'2022', N'4m15s', NULL, 1, CAST(N'2023-02-06 17:32:58.983' AS DateTime), 1, N'Song', 14, NULL)
INSERT [dbo].[VideoDetails] ([id], [videoId], [title], [imagePath], [description], [releasedYear], [duration], [ageRestriction], [isActive], [createdOn], [languageId], [videoType], [starId], [videoPath]) VALUES (21, 21, N'https://i.scdn.co/image/ab67616d0000b27319395aea71289538bbabb496', NULL, NULL, N'2022', N'3m15s', NULL, 1, CAST(N'2023-02-06 17:33:18.533' AS DateTime), 1, N'Song', 15, NULL)
SET IDENTITY_INSERT [dbo].[VideoDetails] OFF
SET IDENTITY_INSERT [dbo].[VideoStarCast] ON 

INSERT [dbo].[VideoStarCast] ([id], [videoStarCastId], [videoId], [starId], [characterName], [roleId], [isActive], [createdOn]) VALUES (1, 1, 1, N'1', N'vetri', 1, 1, CAST(N'2023-01-24' AS Date))
INSERT [dbo].[VideoStarCast] ([id], [videoStarCastId], [videoId], [starId], [characterName], [roleId], [isActive], [createdOn]) VALUES (2, 2, 2, N'2', N'venthan', 2, 1, CAST(N'2023-01-24' AS Date))
INSERT [dbo].[VideoStarCast] ([id], [videoStarCastId], [videoId], [starId], [characterName], [roleId], [isActive], [createdOn]) VALUES (3, 3, 3, N'3', N'jai', 3, 1, CAST(N'2023-01-24' AS Date))
SET IDENTITY_INSERT [dbo].[VideoStarCast] OFF
/****** Object:  StoredProcedure [dbo].[bannerSp]    Script Date: 06/02/2023 18:28:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[bannerSp]
	@bannerId int = 0,
	@bannerImagePath varchar(max)=Null,
	@videoType varchar(50)=NULL,
	@Action varchar(100) = Null
AS
BEGIN

	SET NOCOUNT ON;
	if(@Action='insertNewBanner')
	BEGIN
		If EXISTS (select * from banner)
		BEGIN 
			set @bannerId = (select top 1 bannerId +1 from banner order by bannerId desc)
		END
		ELSE 
		BEGIN
			SET @bannerId = 1
		END
		INSERT INTO [dbo].[Banner](
		[bannerId],
		[bannerImagePath],
		[videoType],
		[isActive],
		[createdOn]
		)
		VALUES 
		(@bannerId,@bannerImagePath,@videoType,1,getdate())
	 
	END
	ELSE IF(@Action = 'GetAllBanner')
	BEGIN
		
		Select * from banner where IsActive = 1

	END

	ELSE IF (@Action='GetallbannerSpesificType')
	BEGIN
		select *
		from Banner where isActive = 1 and videotype = @videoType
	END
    
END


GO
/****** Object:  StoredProcedure [dbo].[languageSp]    Script Date: 06/02/2023 18:28:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[languageSp] 
	@languageId int= 0,
	@languagee int = 0,
	@imagePath varchar(max)=Null,
	@Action varchar(100)
AS
BEGIN

	SET NOCOUNT ON;

    IF (@Action = 'insertNewlanguage')
	BEGIN
		IF EXISTS(Select * from languages)
		BEGIN
			SET @languageId =(select top 1 languageId + 1 From languages order by languageId desc )
		END 
		ELSE
		BEGIN
			SET @languageId = 1 
		END
		Insert into [dbo].[languages](
		[languageId],
		[languagee],
		[ImagePath],
		[isActive],
		[createdOn]
		)values(@languageId,@languagee,@imagePath,1,GETDATE())
	END
END

GO
/****** Object:  StoredProcedure [dbo].[loginPageSp]    Script Date: 06/02/2023 18:28:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[loginPageSp]
	@Mobile_number varchar(20) = NULL,
	@Action varchar(100) = NULL
AS
BEGIN
	SET NOCOUNT ON;
	IF (@Action = 'InsertNewMobileNumber')
	BEGIN 
		INSERT INTO [dbo].[Users](
		[Mobile_number],[isActive],[Created_on]
		)
		VALUES (@Mobile_number,1,GETDATE())
	END
	ELSE IF(@Action = 'VerifyMobileNoExistsOrNot')
	BEGIN

		SELECT * from users where isactive = 1 and mobile_Number = @Mobile_number

	END
END

GO
/****** Object:  StoredProcedure [dbo].[rolesSP]    Script Date: 06/02/2023 18:28:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[rolesSP]
	@roleId int = 0,
	@roleName varchar(50) = NULL,
	@Action varchar(100) = Null
	
AS
BEGIN
	
	SET NOCOUNT ON;
	if(@Action='insertNewRoles')
	BEGIN
		If EXISTS (select * from roles)
		BEGIN 
			set @roleId = (select top 1 roleId +1 from roles order by roleId desc)
		END
		ELSE 
		BEGIN
			SET @roleId = 1
		END
		INSERT INTO [dbo].[Roles](
		[roleId],
		[roleName],
		[IsActive],
		[createdOn]
		)
		VALUES 
		(@roleId,@roleName,1,getdate())
	 
	END
	ELSE IF(@Action = 'GetAllroles')
	BEGIN
		
		Select * from roles where IsActive = 1

	END

   
END


GO
/****** Object:  StoredProcedure [dbo].[StarCastSP]    Script Date: 06/02/2023 18:28:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[StarCastSP]
	@starId int =  0,
	@name varchar(50) = Null,
	@imagePath varchar(max) = Null,
	@videoType varchar(50) = Null,
	@Action varchar(100) = Null

	
AS
BEGIN
	
	SET NOCOUNT ON;
	if(@Action='insertNewStarCast')
	BEGIN
		If EXISTS (select * from StarCast)
		BEGIN 
			set @starId = (select top 1 StarId +1 from StarCast order by starId desc)
		END
		ELSE 
		BEGIN
			SET @starId = 1
		END
		INSERT INTO [dbo].[StarCast](
		[starId],
		[name],
		[imagePath],
		[isActive],
		[createdOn]
		)
		VALUES 
		(@starId,@name,@imagePath,1,getdate())
	 
	END
	ELSE IF(@Action = 'GetAllStars')
	BEGIN
		
		Select * from StarCast where IsActive = 1

	END
	ELSE IF(@Action = 'GetTop6Stars')
	BEGIN
		
		Select distinct top 6 * from StarCast S
		inner join VideoDetails V ON V.starId = s.starId AND V.isActive= 1
		where S.IsActive = 1 and videoType = @videoType
		ORDER BY S.starId desc

	END
	ELSE IF(@Action = 'GetTop9Stars')
	BEGIN
		
		Select distinct top 6 * from StarCast S
		inner join VideoDetails V ON V.starId = s.starId AND V.isActive= 1
		where S.IsActive = 1 and videoType = @videoType
		ORDER BY S.starId desc

	END
    
END


GO
/****** Object:  StoredProcedure [dbo].[UserSP]    Script Date: 06/02/2023 18:28:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UserSP]
	 @User_id int = 0,
	@Mobile_number varchar(20) = NULL,
	@Name varchar(100) = Null,
	@Email_id varchar(50) = Null,
	@Age int = 0,
	@Date_of_birth varchar(50) = Null,
	@Gender varchar(10) = Null,
	@Action varchar(100) = NULL
AS
BEGIN
	SET NOCOUNT ON;

	IF(@Action = 'InsertNewUser')
	BEGIN
		
		IF EXISTS( SELECT * from Users)
		BEGIN
			SET @User_id = (Select top 1 user_id + 1 from Users order by user_id desc)

		END
		ELSE
		BEGIN
			SET @User_id = 1
		END
		INSERT INTO [dbo].[Users]
           ([User_id]
           ,[Mobile_number]
           ,[Name]
           ,[Email_id]
           ,[Age]
           ,[Date_of_birth]
           ,[Gender]
           ,[IsActive]
           ,[Created_on])
      VALUES
           (@User_id,@Mobile_number,@Name,@Email_id,@Age,@Date_of_birth,@Gender,1,GETDATE())
		   
		Select 1

	END
	ELSE IF(@Action = 'GetAllUsers')
	BEGIN
		
		Select * from Users where IsActive = 1

	END
	ELSE IF(@Action = 'GetSpecificUserByMobNo')
	BEGIN

		SELECT * from Users where isactive = 1 and Mobile_number = @Mobile_number


	END

    
END


GO
/****** Object:  StoredProcedure [dbo].[VideoDetailsSp]    Script Date: 06/02/2023 18:28:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[VideoDetailsSp] 
	@videoId int = 0,
	@title varchar(100)=Null,
	@imagePath varchar(max) = Null,
	@description varchar(max) = Null,
	@releasedYear varchar(50) = Null,
	@duration varchar(50) = Null,
	@ageRestriction varchar(20) = Null,
	@languageId varchar(50) = Null,
	@starId int = 0,
	@videoType varchar(50)= NULL,
	@videoPath varchar(max)= NULL,
	@Action varchar(100) = NULL

AS
BEGIN

	SET NOCOUNT ON;

	IF(@Action='InsertNewVideos')
	BEGIN
		IF EXISTS(Select * from VideoDetails)
		BEGIN
			SET @videoId =(select top 1 videoId + 1 From VideoDetails order by videoId desc )
		END 
		ELSE
		BEGIN
			SET @videoId = 1 
		END
		INSERT INTO [dbo].[VideoDetails](
		[videoId],
		[title],
		[imagePath],
		[description],
		[releasedYear],
		[duration],
		[ageRestriction],
		[languageId],
		[videoType],
		[starId],
		[videoPath],
		[isActive],
		[createdOn])
		VALUES
		(@videoId,@title,@imagePath,@description,@releasedYear,@description,@ageRestriction,@languageId,@starId,@videoType,@videoPath,1,GETDATE())

		select 1
	END
	ELSE IF(@Action = 'GetAllVideos')
	BEGIN

		SELECT *,languagee from videoDetails V
		inner join languages L on L.languageId = V.languageId and L.isActive = 1
		 where V.isactive = 1 

	END
	ELSE IF(@Action = 'GetVideobyVideoid')
	BEGIN

		SELECT * from videoDetails where isactive = 1 and videoId = @videoId

	END
	ELSE IF(@Action = 'GetVideosWithinDates')
	BEGIN

		SELECT * from videoDetails where isactive = 1 and releasedYear = @releasedYear

	END
	ELSE IF (@Action= 'GetvideobyLanguageId')
	BEGIN 
		select *, l.languagee
		from VideoDetails V 
		inner join languagee l on l.languageId = v.languageId and isActive = 1
		where isActive = 1 and languageId = @languageId
	END
	ELSE IF (@Action='GetVideoOfParticularStar')
	BEGIN
		select s.starId,v.videoId,title,description,v.imagePath, s.imagePath,v.*
		from VideoDetails v
		inner join StarCast S on S.starId = V.StarId and  S.isActive = 1
		where v.isActive = 1 and S.starId = @starId
	END
	ELSE IF (@Action='GetAllVideoOfSpecificType')
	BEGIN
		select *
		from VideoDetails where isActive = 1 and videotype = @videoType
	END
	ELSE IF (@Action='GetTop10VideoByType')
	BEGIN
		select top 10 * 
		from VideoDetails where isActive = 1 and videotype = @videoType
		order by videoId desc
	END

	ELSE IF (@Action='GetAllVideoOfSpecificYear')
	BEGIN
		select *
		from VideoDetails where isActive = 1  and releasedYear = @releasedYear and videotype = @videoType
		
	END
	ELSE IF (@Action = 'GetVideoDetailsByVideoId')
	BEGIN
		SELECT * from videoDetails where isactive = 1 and videoId = @videoId

		SELECT VS.starId, name, characterName,S.imagePath from VideoStarCast VS 
		inner join VideoDetails VD on VS.videoId = VD.videoId and VD.isActive = 1
		inner join StarCast S on S.starId = VS.starId and S.isActive = 1		
		where VD.videoId = @videoId

		SET @releasedYear = (Select releasedYear from VideoDetails where videoId = @videoId and isActive = 1)
		SET @languageId = (Select languageId from VideoDetails where videoId = @videoId and isActive = 1)
		SET @videoType = (Select videoType from VideoDetails where videoId = @videoId and isActive = 1)
		SET @starId = (Select starId from VideoStarCast where videoId = @videoId and isActive = 1)

		Select top 6 * From VideoDetails V
		inner join VideoStarCast C on C.videoId = V.videoId and C.isActive = 1 
		where v.isActive = 1 and ( releasedYear= @releasedYear or languageId = @languageId or videoType = @videoType or C.starId = @starId)
	END 
	
END


GO
/****** Object:  StoredProcedure [dbo].[VideoStarCastSP]    Script Date: 06/02/2023 18:28:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[VideoStarCastSP]
	@videoStarCastId int =  0,
	@videoId int = 0,
	@starId varchar(max) = NULL,
	@characterName varchar(50) = NULL,
	@roleId int = 0,
	@Action varchar(100) = NULL
	
AS
BEGIN
	
	SET NOCOUNT ON;
	if(@Action='insertNewVideoStarCast')
	BEGIN
		If EXISTS (select * from VideoStarCast)
		BEGIN 
			set @videoStarCastId = (select top 1 videoStarCastId +1 from VideoStarCast order by videoStarCastId desc)
		END
		ELSE 
		BEGIN
			SET @videoStarCastId = 1
		END
		INSERT INTO [dbo].[VideoStarCast](
      [videoStarCastId]
      ,[videoId]
      ,[starId]
      ,[characterName]
      ,[roleId]
      ,[isActive]
      ,[createdOn]
		)
		VALUES 
		(@videoStarCastId,@videoId,@starId,@characterName,@roleId,1,getdate())
	 
	END
	ELSE IF(@Action = 'GetStarCastOfVideo')
	BEGIN
		
		Select * from VideoStarCast where IsActive = 1 and videoId = @videoId

	END

    
END


GO
