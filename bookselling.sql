USE [BookSelling]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2024/4/21 下午 12:18:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2024/4/21 下午 12:18:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2024/4/21 下午 12:18:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2024/4/21 下午 12:18:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2024/4/21 下午 12:18:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2024/4/21 下午 12:18:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2024/4/21 下午 12:18:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[City] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](21) NOT NULL,
	[Name] [int] NULL,
	[PostalCode] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[StreetAddress] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2024/4/21 下午 12:18:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2024/4/21 下午 12:18:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2024/4/21 下午 12:18:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ISBN] [nvarchar](max) NOT NULL,
	[Author] [nvarchar](max) NOT NULL,
	[ListPrice] [float] NOT NULL,
	[Price] [float] NOT NULL,
	[Price50] [float] NOT NULL,
	[Price100] [float] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240201094104_AddCategoryTableToDb', N'8.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240201094313_AddCategoryTableToDb', N'8.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240206084243_addProductsToDb', N'8.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240209090437_addForeignKeyForCategoryProductRelation', N'8.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240215131014_addImageUrlToProduct', N'8.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240419080252_addIdentityTables', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240419083921_ExtendIdentityUser', N'8.0.4')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'27ecc79a-31d1-4ae0-ad37-79a3aeb91287', N'Employee', N'EMPLOYEE', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'670da16e-2a86-4563-86bc-60f9a6ad20bb', N'Customer', N'CUSTOMER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'aabcd6cf-08f1-4ca0-b0bb-8121d3235ac5', N'Company', N'COMPANY', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'bc11e4ff-d56c-43eb-8b77-168715c7381d', N'Admin', N'ADMIN', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2b1f20fb-5ef3-4460-a560-8c7874bb9266', N'27ecc79a-31d1-4ae0-ad37-79a3aeb91287')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'96c7af15-b590-4599-a6b3-16962f703401', N'27ecc79a-31d1-4ae0-ad37-79a3aeb91287')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'37154cc2-efd6-4dad-a957-a0ec130ed1a2', N'670da16e-2a86-4563-86bc-60f9a6ad20bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'558ad994-c8ec-4fb1-8c65-9a1f836f7852', N'670da16e-2a86-4563-86bc-60f9a6ad20bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'77a39f2a-8ee5-4f06-8a26-b51e8108d5e0', N'670da16e-2a86-4563-86bc-60f9a6ad20bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'82a24eb2-00af-40d1-bd43-fb8f5b9185f1', N'aabcd6cf-08f1-4ca0-b0bb-8121d3235ac5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'02b6570e-88fa-47ce-a752-bfaeb7d4c109', N'bc11e4ff-d56c-43eb-8b77-168715c7381d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'57bbbd6a-17b3-4bb4-a109-581e7cb301df', N'bc11e4ff-d56c-43eb-8b77-168715c7381d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'84556f9c-b402-47c3-9ded-db4931c719b1', N'bc11e4ff-d56c-43eb-8b77-168715c7381d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b78eb36c-e615-4d3a-a2c1-b32f308ab30e', N'bc11e4ff-d56c-43eb-8b77-168715c7381d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ed8d284d-429a-4e95-a37c-36834c4ac57c', N'bc11e4ff-d56c-43eb-8b77-168715c7381d')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'02b6570e-88fa-47ce-a752-bfaeb7d4c109', N'testadmin@gmail.com', N'TESTADMIN@GMAIL.COM', N'testadmin@gmail.com', N'TESTADMIN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEGrx49iyvXKSRcMtXyhqfm4fYxiIh3nU/Zlz9b1pKEtRTg7zsHgx3pY+3wv7j85MYQ==', N'KHW7CEYPO7ZLR3N2T3W6Z4TAUUH5FEWR', N'ffc89c41-4df8-48ba-a655-8875e0bdfdb1', N'0908917491', 0, 0, NULL, 1, 0, NULL, N'ApplicationUser', 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'2b1f20fb-5ef3-4460-a560-8c7874bb9266', N'test123@gmail.com', N'TEST123@GMAIL.COM', N'test123@gmail.com', N'TEST123@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAELBJB4KemO847zuDkGvgDq1Qx/TX2wv+g+EDYoMEvLgytCECHV4s2UEq3loCqOmfOw==', N'MQMS2AQ4J6ZSK73OQ2X2Q4H332CQFUFR', N'8e8f2b81-6ddf-48a7-a08d-004b1553c791', NULL, 0, 0, NULL, 1, 0, NULL, N'ApplicationUser', 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'37154cc2-efd6-4dad-a957-a0ec130ed1a2', N'testcustomer@gmail.com', N'TESTCUSTOMER@GMAIL.COM', N'testcustomer@gmail.com', N'TESTCUSTOMER@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEEP/ujeYBOR3J4cVWKvsIJxE3V5KjtLUFOwxwUCiapCD7NEZPPkEXn3+dfXxqsNlaA==', N'64OJNCYKAWSL2TFPSTIQD7RBWKDL2XH5', N'506ba6f5-4bd0-4d47-bff6-8a0ee56248d3', NULL, 0, 0, NULL, 1, 0, NULL, N'ApplicationUser', 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'558ad994-c8ec-4fb1-8c65-9a1f836f7852', N'testcustomer02@gmail.com', N'TESTCUSTOMER02@GMAIL.COM', N'testcustomer02@gmail.com', N'TESTCUSTOMER02@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEJOzE0v5+UhxiiSnbyP/yQnylqOQw7RITzhIxwtr/Te6N5Ii47AcxT5w9iiD2Be20A==', N'7M52FBSC5PXEYRHSFGRIAGBDVL734XLP', N'c0af0fe7-a9fa-4a92-a2c8-729a3e4850d6', N'0955566887', 0, 0, NULL, 1, 0, N'高雄市', N'ApplicationUser', NULL, N'809', N'沒有', N'大順路二十二條街16號')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'57bbbd6a-17b3-4bb4-a109-581e7cb301df', N'testadmin02@gmail.com', N'TESTADMIN02@GMAIL.COM', N'testadmin02@gmail.com', N'TESTADMIN02@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEOVngd2P6rIvo50IOxDssClrZlworENaIzDdBBj8yxYJ0DhlnZ3qblymHxOKenXdiQ==', N'GMNNHBPCTJR5B3H7EQOA66TAQFNBO5HG', N'5e7c4b1c-5682-434f-9325-c037ac8ced2e', N'905606556', 0, 0, NULL, 1, 0, N'我家', N'ApplicationUser', NULL, N'777', N'我家', N'我家')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'707cb036-b2fe-4dce-bf26-7177dec3d64f', N'test@gmail.com', N'TEST@GMAIL.COM', N'test@gmail.com', N'TEST@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEFLeQDlrk/CwAvE/3+vy1iD/EgRlboSB+2t5oft+Y0YIHIxRZ4BbTNhSthKlWqlMaA==', N'THWDHCPO45Z67Z2FP4QUVDUUOFJKHOWN', N'3d2e4b40-b477-4311-9254-92a5595ed775', NULL, 0, 0, NULL, 1, 0, NULL, N'ApplicationUser', 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'77a39f2a-8ee5-4f06-8a26-b51e8108d5e0', N'testadmin01@gmail.com', N'TESTADMIN01@GMAIL.COM', N'testadmin01@gmail.com', N'TESTADMIN01@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAELlovJ2ej2Olun9XUT7i9QkcGrM/36OA1xY31im+fpf9iQWjnPx2EmyZVhAv9C25lA==', N'SKZTLTT4HHNE27SYUKU6RIXHPAFS5DNI', N'0b0fa525-f820-4473-814f-6dfdb4bde4d9', NULL, 0, 0, NULL, 1, 0, N'我家', N'ApplicationUser', NULL, N'8806', N'我家', N'我家')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'82a24eb2-00af-40d1-bd43-fb8f5b9185f1', N'jimmmy@test.gmail.com', N'JIMMMY@TEST.GMAIL.COM', N'jimmmy@test.gmail.com', N'JIMMMY@TEST.GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEAisictkMtoSXFmq8/EXz0DJRqoVDUZAsXkc6EiJVbXX3UkuQFZN/CxB2wacG0xRkg==', N'MOWRJANOEDTUMSXG44VLKIEF3YGHZ5BJ', N'b0dda5f7-255f-4331-ac3e-f355ce4c1fa7', NULL, 0, 0, NULL, 1, 0, NULL, N'ApplicationUser', 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'84556f9c-b402-47c3-9ded-db4931c719b1', N'jimmyadmin@gmail.com', N'JIMMYADMIN@GMAIL.COM', N'jimmyadmin@gmail.com', N'JIMMYADMIN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAECxyrT37ywjak28nqGuTu2gY/DdYL4gTq85YOWw7/fGV7+yuAvwOr6ZXSARdIrwwdA==', N'Y3BMKN6HK4UKXYYGVXAI5E4U5UUKKV4K', N'3785445e-eae4-496d-9d0d-1f95f0f5b5b9', N'0909858522', 0, 0, NULL, 1, 0, N'Kaoshung', N'ApplicationUser', NULL, N'807', N'Right ', N'XD')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'96c7af15-b590-4599-a6b3-16962f703401', N'testemployee@gmail.com', N'TESTEMPLOYEE@GMAIL.COM', N'testemployee@gmail.com', N'TESTEMPLOYEE@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEEV4w8Lm4Ae5HGuNfljEcUHmgZ5H831LhQFR38syPwWHsycgAE8cOaZPU93gdK6lHA==', N'575R7YGS4R5UJFHZ2AP7EHPF6VVXLQ2M', N'f8a82c9c-fbee-4ab3-9f10-ebd29cc3963a', NULL, 0, 0, NULL, 1, 0, NULL, N'ApplicationUser', 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'b78eb36c-e615-4d3a-a2c1-b32f308ab30e', N'testadmin11@gmail.com', N'TESTADMIN11@GMAIL.COM', N'testadmin11@gmail.com', N'TESTADMIN11@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEGgtBxJlJdIwU8F80T2RIoseS/ytQqjBfjvb+e6/dlIO7FdEZz5+nIjJhvqOh3zYQA==', N'5QB4H6W5ONNZDHXSSJF2G6PI6MOCIUND', N'737869c1-adac-4eb0-97ec-fe925c1a8cfa', N'0908888888', 0, 0, NULL, 1, 0, N'高雄市', N'ApplicationUser', NULL, N'806', N'亞利桑那', N'大順路大鄉路九十五號')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'b8d73848-218e-4efa-9b65-befb5b9901f7', N'bon1254@gmail.com', N'BON1254@GMAIL.COM', N'bon1254@gmail.com', N'BON1254@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEEL9UKE6Z7FwsXrKvKfT+cU66N889QDOYc+GDuK4+mnZ084Ynt19y98+my9+nFSFiA==', N'O76JVGORNHHOWG47YIVJNTEMM6XBSMAQ', N'a5b1ca48-3249-4459-b1fd-c86f76135738', NULL, 0, 0, NULL, 1, 0, NULL, N'IdentityUser', NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'ed8d284d-429a-4e95-a37c-36834c4ac57c', N'testadmin03@gmail.com', N'TESTADMIN03@GMAIL.COM', N'testadmin03@gmail.com', N'TESTADMIN03@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAECckqlIolYkfV1lp5Kidjsd2KQ0+ot7rO3kGIFV/gHQFnTVquRbJfQtbx/+mBTuD5Q==', N'BLH6RIE66I2Y6J4CNXSB2MCF32LWEKA5', N'd741e985-ad7a-4ece-bbec-cb8549bc6a84', N'09885566222', 0, 0, NULL, 1, 0, N'高雄市', N'ApplicationUser', NULL, N'995', N'紐約州', N'安達市大舜九路15號')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [DisplayOrder]) VALUES (1, N'心理學', 1)
INSERT [dbo].[Categories] ([Id], [Name], [DisplayOrder]) VALUES (2, N'文學', 2)
INSERT [dbo].[Categories] ([Id], [Name], [DisplayOrder]) VALUES (4, N'科學', 4)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [ImageUrl]) VALUES (1, N'感謝折磨你的人', N'<p>勇敢迎向那些折磨自己的人和事<br><br>法國文豪羅曼．羅蘭曾經說過：「只有把抱怨別人和環境的心情，化為上進的力量，才是成功的保證。」<br>如果沒有嚴冬，春天就不會那樣舒心宜人，相同的，不曾嚐過痛苦，不曾遭到折磨，生命就不會綻放讓人驚艷的花朵。<br>人最怕庸庸碌碌地渡過一生，必須迎向折磨的痛苦，才能體會到獲得的喜悅；只有懂得感謝曾經折磨自己的人和事，才能成就更大更多的志業。</p>', N'9789869344432', N'凌越', 99, 90, 85, 80, 1, N'\images\product\991c4d04-bab9-46a7-b4bc-e3a668eadce2.jpg')
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [ImageUrl]) VALUES (5, N'極簡心理學', N'<p>Praesent vitae sodales libero. Praesent molestie orci augue, vitae euismod velit sollicitudin ac. Praesent vestibulum facilisis nibh ut ultricies. Nunc malesuada viverra ipsum sit amet tincidunt.</p>', N'9789865062491', N' 月半彎', 30, 27, 25, 20, 1, N'\images\product\5a38fdd6-d206-4b17-bef8-3c432c97148e.jpg')
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [ImageUrl]) VALUES (15, N'這個句子拯救我', N'<p>　　你現在有煩惱嗎？如果有的話，那就太好了！<br>　　因為，這代表你正在成長。<br>　　有時候想靠自己解決煩惱，卻怎樣都找不到答案。<br>　　這種時候，就來看看同樣經歷過困難與痛苦，<br>　　最後成功克服的偉人是怎麼看待這些事的吧。<br>　　書裡的某句話，也許會改變你的人生。<br><br>　　「無法融入班上的小團體&hellip;&hellip;<br>　　「不知道讀書到底是為了什麼&hellip;&hellip;」<br>　　「很努力做的事情最後卻失敗了&hellip;&hellip;」<br>　　「被同學霸凌，不想去上學&hellip;&hellip;」<br>　　正值青春年華的你，是不是因為懷抱許多煩惱，感到茫然失措呢？</p>', N'9789863702603', N'定政敬子 ', 96, 85, 52, 35, 1, N'\images\product\a746c91a-d4cb-4532-8149-a26a834e2093.jpg')
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [ImageUrl]) VALUES (16, N'被討厭的勇氣', N'<p><strong>所謂的自由，就是被別人討厭。<br>　　有人討厭你，正是你行使自由、依照自己的生活方針過日子的標記。</strong><br><br>　　為什麼人們一直無法改變？<br>　　為什麼自卑感總是揮之不去？<br>　　為什麼我們總是活在別人的期待之下？<br>　　為什麼現在無法真實感受到幸福？<br>　　或許是因為，我們缺少了被別人討厭的勇氣！</p>', N'9789861371955', N'岸見一郎, 古賀史健 ', 237, 150, 110, 95, 1, N'\images\product\b5f5fede-3b11-4505-bf04-68025aaf2537.jpg')
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [ImageUrl]) VALUES (18, N'人際關係心理學', N'<p>人際關係心理學</p>', N'42424455', N'服谷優子', 100, 75, 50, 35, 1, N'\images\product\b4260df5-9b82-453e-bc19-4628154d6c59.jpg')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (N'') FOR [ImageUrl]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
