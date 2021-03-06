USE [ANOFOOD]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[FirstName] [nvarchar](256) NULL,
	[LastName] [nvarchar](256) NULL,
	[Address] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[SeqId] [bigint] IDENTITY(1,1) NOT NULL,
	[ContendifinitonId] [bigint] NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Status] [bit] NOT NULL,
	[SortOder] [int] NOT NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](255) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityId] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryId] [bigint] NOT NULL,
	[CityName] [nvarchar](255) NULL,
	[CitiCode] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentId] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NOT NULL,
	[RestaurantId] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[Status] [bit] NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contentdefinition]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contentdefinition](
	[ContentdefinitionId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Contentdefinition] PRIMARY KEY CLUSTERED 
(
	[ContentdefinitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentEntry]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentEntry](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[Token] [nvarchar](100) NOT NULL,
	[LanguageId] [int] NOT NULL,
	[ContendefinitionId] [bigint] NOT NULL,
 CONSTRAINT [PK_ContentEntry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[District]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[DistrictId] [bigint] IDENTITY(1,1) NOT NULL,
	[CityId] [bigint] NOT NULL,
	[DistrictName] [nvarchar](255) NOT NULL,
	[DistrictCode] [nvarchar](50) NOT NULL,
	[Status] [bit] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favories]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favories](
	[FavorieId] [bigint] NOT NULL,
	[RestaurantId] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ModifiedBy] [nvarchar](255) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Favories] PRIMARY KEY CLUSTERED 
(
	[FavorieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Media]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Media](
	[Id] [bigint] NOT NULL,
	[FileName] [nvarchar](255) NOT NULL,
	[FileUrl] [nvarchar](255) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[MasterId] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Owned] [nvarchar](50) NOT NULL,
	[FileSize] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreateBy] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Media] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MenuId] [uniqueidentifier] NOT NULL,
	[ContentdefinitionId] [bigint] NOT NULL,
	[Price] [decimal](10, 0) NULL,
	[RestaurantId] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Status] [bit] NULL,
	[SortOrder] [int] NULL,
	[Rate] [decimal](5, 2) NULL,
	[Name] [nvarchar](255) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](255) NOT NULL,
	[SeqId] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuItem]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuItem](
	[MenuItemId] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Code] [nchar](50) NULL,
	[CondefinitionId] [bigint] NOT NULL,
	[Price] [decimal](10, 2) NULL,
	[Status] [bit] NULL,
	[HasCombo] [bit] NULL,
	[SortOder] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](255) NOT NULL,
	[MenuId] [uniqueidentifier] NOT NULL,
	[SeqId] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_MenuItem] PRIMARY KEY CLUSTERED 
(
	[MenuItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Option]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Option](
	[OptionId] [uniqueidentifier] NOT NULL,
	[ContendifinitonId] [bigint] NOT NULL,
	[Code] [nvarchar](50) NULL,
	[MenuItemId] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Price] [decimal](10, 2) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Option] PRIMARY KEY CLUSTERED 
(
	[OptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OderId] [uniqueidentifier] NOT NULL,
	[RestaurantId] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[RestaurantName] [nvarchar](255) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[OderDate] [datetime] NOT NULL,
	[TotalPrice] [decimal](18, 0) NULL,
	[Status] [int] NULL,
	[TaxTotal] [decimal](10, 2) NULL,
	[OderReq] [text] NULL,
	[CheckSum] [nvarchar](255) NULL,
	[OrderCode] [nvarchar](255) NULL,
	[PaymentWith] [decimal](12, 0) NULL,
	[DiscountPercent] [int] NULL,
	[ReasonReject] [nvarchar](500) NULL,
	[ReasonCancel] [nvarchar](500) NULL,
	[ChargeFee] [decimal](18, 0) NULL,
	[DeliveryCost] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentProvider]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentProvider](
	[PaymentId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Setting] [text] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[ModifiedBy] [nvarchar](255) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_PaymentProvider] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[PromotionId] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[ContentdifinitionId] [bigint] NOT NULL,
	[StartDate] [nchar](10) NULL,
	[EndDate] [nchar](10) NULL,
	[Value] [int] NULL,
	[MinOder] [decimal](18, 0) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](255) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED 
(
	[PromotionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PromotionLineItem]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromotionLineItem](
	[PromotionLineItemId] [bigint] IDENTITY(1,1) NOT NULL,
	[PromotionId] [uniqueidentifier] NOT NULL,
	[RestauranId] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Code] [nchar](10) NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_PromotionLineItem] PRIMARY KEY CLUSTERED 
(
	[PromotionLineItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[RatingId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[RestaurantId] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Quality] [float] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED 
(
	[RatingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RestaurantArea]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantArea](
	[RestaurantAreaId] [bigint] IDENTITY(1,1) NOT NULL,
	[RestaurantId] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[ZoneId] [bigint] NOT NULL,
	[DistrictId] [bigint] NOT NULL,
 CONSTRAINT [PK_RestaurantArea] PRIMARY KEY CLUSTERED 
(
	[RestaurantAreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RestaurantCategory]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantCategory](
	[RestaurantCategoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[RestaurantId] [uniqueidentifier] NOT NULL,
	[CategoryId] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_RestaurantCategory] PRIMARY KEY CLUSTERED 
(
	[RestaurantCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restaurants]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurants](
	[RestaurantId] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Address] [nvarchar](255) NULL,
	[Avartar] [nvarchar](255) NULL,
	[ContendifinitionId] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[ModifiedBy] [nvarchar](255) NOT NULL,
	[Longitude] [decimal](20, 0) NULL,
	[Latitude] [decimal](20, 0) NULL,
	[Slogan] [nvarchar](255) NULL,
	[PhoneNumber] [nvarchar](255) NULL,
	[KeySearch] [ntext] NULL,
	[MinPrice] [decimal](10, 2) NULL,
	[EstimateTimeDelivery] [nvarchar](255) NULL,
	[SeqId] [bigint] IDENTITY(1,1) NOT NULL,
	[Status] [bit] NULL,
	[Name] [nvarchar](255) NULL,
	[ShipArea] [ntext] NULL,
	[DistrictId] [bigint] NULL,
	[ZoneId] [bigint] NULL,
 CONSTRAINT [PK_Restaurants] PRIMARY KEY CLUSTERED 
(
	[RestaurantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RestaurantWorkTime]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantWorkTime](
	[RestaurantWorkTimeId] [bigint] IDENTITY(1,1) NOT NULL,
	[RestaurantId] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[CloseTime] [nvarchar](255) NULL,
	[OpenTime] [nvarchar](255) NULL,
	[WeekDay] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_RestaurantWorkTime] PRIMARY KEY CLUSTERED 
(
	[RestaurantWorkTimeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tax]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tax](
	[TaxId] [bigint] IDENTITY(1,1) NOT NULL,
	[Value] [decimal](10, 0) NULL,
	[Name] [nvarchar](255) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_Tax] PRIMARY KEY CLUSTERED 
(
	[TaxId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfCuisine]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfCuisine](
	[TypeCuisineId] [bigint] NOT NULL,
	[NameES] [nvarchar](255) NULL,
	[NameEnglish] [nchar](255) NULL,
 CONSTRAINT [PK_TypeOfCuisine] PRIMARY KEY CLUSTERED 
(
	[TypeCuisineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRestaurant]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRestaurant](
	[UserRestaurantId] [bigint] IDENTITY(1,1) NOT NULL,
	[RestaurantId] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_UserRestaurant] PRIMARY KEY CLUSTERED 
(
	[UserRestaurantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[VoucherId] [bigint] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Code] [nvarchar](255) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Status] [bit] NULL,
	[Description] [nvarchar](255) NULL,
	[value] [decimal](10, 0) NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](255) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[VoucherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VoucherLineItem]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoucherLineItem](
	[VoucherLineItemId] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](255) NOT NULL,
	[VoucherId] [bigint] NOT NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](255) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_VoucherLineItem] PRIMARY KEY CLUSTERED 
(
	[VoucherLineItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zone]    Script Date: 2/4/2020 4:09:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zone](
	[ZoneId] [bigint] IDENTITY(1,1) NOT NULL,
	[DistrictId] [bigint] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Code] [nvarchar](255) NOT NULL,
	[Status] [bit] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreateBy] [nvarchar](255) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Zone] PRIMARY KEY CLUSTERED 
(
	[ZoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CategoryId]  DEFAULT (newid()) FOR [CategoryId]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF_City_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Comment] ADD  CONSTRAINT [DF_Comment_CommentId]  DEFAULT (newid()) FOR [CommentId]
GO
ALTER TABLE [dbo].[Comment] ADD  CONSTRAINT [DF_Comment_RestaurantId]  DEFAULT (newid()) FOR [RestaurantId]
GO
ALTER TABLE [dbo].[Comment] ADD  CONSTRAINT [DF_Comment_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[District] ADD  CONSTRAINT [DF_District_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Favories] ADD  CONSTRAINT [DF_Favories_RestaurantId]  DEFAULT (newid()) FOR [RestaurantId]
GO
ALTER TABLE [dbo].[Favories] ADD  CONSTRAINT [DF_Favories_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Media] ADD  CONSTRAINT [DF_Media_MasterId]  DEFAULT (newid()) FOR [MasterId]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_MenuId]  DEFAULT (newid()) FOR [MenuId]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_RestaurantId]  DEFAULT (newid()) FOR [RestaurantId]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[MenuItem] ADD  CONSTRAINT [DF_MenuItem_MenuItemId]  DEFAULT (newid()) FOR [MenuItemId]
GO
ALTER TABLE [dbo].[MenuItem] ADD  CONSTRAINT [DF_MenuItem_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[MenuItem] ADD  CONSTRAINT [DF_MenuItem_HasCombo]  DEFAULT ((1)) FOR [HasCombo]
GO
ALTER TABLE [dbo].[MenuItem] ADD  CONSTRAINT [DF_MenuItem_MenuId]  DEFAULT (newid()) FOR [MenuId]
GO
ALTER TABLE [dbo].[Option] ADD  CONSTRAINT [DF_Option_OptionId]  DEFAULT (newid()) FOR [OptionId]
GO
ALTER TABLE [dbo].[Option] ADD  CONSTRAINT [DF_Option_MenuItemId]  DEFAULT (newid()) FOR [MenuItemId]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_OderId]  DEFAULT (newid()) FOR [OderId]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_RestaurantId]  DEFAULT (newid()) FOR [RestaurantId]
GO
ALTER TABLE [dbo].[PaymentProvider] ADD  CONSTRAINT [DF_PaymentProvider_Status]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Promotion] ADD  CONSTRAINT [DF_Promotion_Status]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[PromotionLineItem] ADD  CONSTRAINT [DF_PromotionLineItem_PromotionId]  DEFAULT (newid()) FOR [PromotionId]
GO
ALTER TABLE [dbo].[PromotionLineItem] ADD  CONSTRAINT [DF_PromotionLineItem_RestauranId]  DEFAULT (newid()) FOR [RestauranId]
GO
ALTER TABLE [dbo].[Rating] ADD  CONSTRAINT [DF_Rating_RestaurantId]  DEFAULT (newid()) FOR [RestaurantId]
GO
ALTER TABLE [dbo].[RestaurantArea] ADD  CONSTRAINT [DF_RestaurantArea_RestaurantId]  DEFAULT (newid()) FOR [RestaurantId]
GO
ALTER TABLE [dbo].[RestaurantCategory] ADD  CONSTRAINT [DF_RestaurantCategory_RestaurantId]  DEFAULT (newid()) FOR [RestaurantId]
GO
ALTER TABLE [dbo].[RestaurantCategory] ADD  CONSTRAINT [DF_RestaurantCategory_CategoryId]  DEFAULT (newid()) FOR [CategoryId]
GO
ALTER TABLE [dbo].[Restaurants] ADD  CONSTRAINT [DF_Restaurants_RestaurantId]  DEFAULT (newid()) FOR [RestaurantId]
GO
ALTER TABLE [dbo].[Restaurants] ADD  CONSTRAINT [DF_Restaurants_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[RestaurantWorkTime] ADD  CONSTRAINT [DF_RestaurantWorkTime_RestaurantId]  DEFAULT (newid()) FOR [RestaurantId]
GO
ALTER TABLE [dbo].[UserRestaurant] ADD  CONSTRAINT [DF_UserRestaurant_RestaurantId]  DEFAULT (newid()) FOR [RestaurantId]
GO
ALTER TABLE [dbo].[Voucher] ADD  CONSTRAINT [DF_Voucher_Status]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[VoucherLineItem] ADD  CONSTRAINT [DF_VoucherLineItem_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Zone] ADD  CONSTRAINT [DF_Zone_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_Contentdifinition_Category] FOREIGN KEY([ContendifinitonId])
REFERENCES [dbo].[Contentdefinition] ([ContentdefinitionId])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_Contentdifinition_Category]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_Country_City] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([CountryId])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_Country_City]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Restaurant_Comment] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurants] ([RestaurantId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Restaurant_Comment]
GO
ALTER TABLE [dbo].[ContentEntry]  WITH CHECK ADD  CONSTRAINT [FK_ContentEntry_ContentDefinition] FOREIGN KEY([ContendefinitionId])
REFERENCES [dbo].[Contentdefinition] ([ContentdefinitionId])
GO
ALTER TABLE [dbo].[ContentEntry] CHECK CONSTRAINT [FK_ContentEntry_ContentDefinition]
GO
ALTER TABLE [dbo].[ContentEntry]  WITH CHECK ADD  CONSTRAINT [FK_ContentEntry_Language] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
GO
ALTER TABLE [dbo].[ContentEntry] CHECK CONSTRAINT [FK_ContentEntry_Language]
GO
ALTER TABLE [dbo].[District]  WITH CHECK ADD  CONSTRAINT [FK_City_District] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([CityId])
GO
ALTER TABLE [dbo].[District] CHECK CONSTRAINT [FK_City_District]
GO
ALTER TABLE [dbo].[Favories]  WITH CHECK ADD  CONSTRAINT [FK_Favories_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Favories] CHECK CONSTRAINT [FK_Favories_AspNetUsers]
GO
ALTER TABLE [dbo].[Favories]  WITH CHECK ADD  CONSTRAINT [FK_Favories_Restaurants] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurants] ([RestaurantId])
GO
ALTER TABLE [dbo].[Favories] CHECK CONSTRAINT [FK_Favories_Restaurants]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_ContentDefinition_Menu] FOREIGN KEY([ContentdefinitionId])
REFERENCES [dbo].[Contentdefinition] ([ContentdefinitionId])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_ContentDefinition_Menu]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Restaurant_Menu] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurants] ([RestaurantId])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_Restaurant_Menu]
GO
ALTER TABLE [dbo].[MenuItem]  WITH CHECK ADD  CONSTRAINT [FK_Contendifiniton_MenuItem] FOREIGN KEY([CondefinitionId])
REFERENCES [dbo].[Contentdefinition] ([ContentdefinitionId])
GO
ALTER TABLE [dbo].[MenuItem] CHECK CONSTRAINT [FK_Contendifiniton_MenuItem]
GO
ALTER TABLE [dbo].[MenuItem]  WITH CHECK ADD  CONSTRAINT [FK_Menu_MenuItem] FOREIGN KEY([MenuId])
REFERENCES [dbo].[Menu] ([MenuId])
GO
ALTER TABLE [dbo].[MenuItem] CHECK CONSTRAINT [FK_Menu_MenuItem]
GO
ALTER TABLE [dbo].[Option]  WITH CHECK ADD  CONSTRAINT [FK_Contentdifition_Option] FOREIGN KEY([ContendifinitonId])
REFERENCES [dbo].[Contentdefinition] ([ContentdefinitionId])
GO
ALTER TABLE [dbo].[Option] CHECK CONSTRAINT [FK_Contentdifition_Option]
GO
ALTER TABLE [dbo].[Option]  WITH CHECK ADD  CONSTRAINT [FK_MenuItem_Option] FOREIGN KEY([MenuItemId])
REFERENCES [dbo].[MenuItem] ([MenuItemId])
GO
ALTER TABLE [dbo].[Option] CHECK CONSTRAINT [FK_MenuItem_Option]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_AspNetUsers]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Restaurants] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurants] ([RestaurantId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Restaurants]
GO
ALTER TABLE [dbo].[Promotion]  WITH CHECK ADD  CONSTRAINT [FK_Promotion_Contentdefinition] FOREIGN KEY([ContentdifinitionId])
REFERENCES [dbo].[Contentdefinition] ([ContentdefinitionId])
GO
ALTER TABLE [dbo].[Promotion] CHECK CONSTRAINT [FK_Promotion_Contentdefinition]
GO
ALTER TABLE [dbo].[PromotionLineItem]  WITH CHECK ADD  CONSTRAINT [FK_PromotionLineItem_Promotion] FOREIGN KEY([PromotionId])
REFERENCES [dbo].[Promotion] ([PromotionId])
GO
ALTER TABLE [dbo].[PromotionLineItem] CHECK CONSTRAINT [FK_PromotionLineItem_Promotion]
GO
ALTER TABLE [dbo].[PromotionLineItem]  WITH CHECK ADD  CONSTRAINT [FK_PromotionLineItem_Restaurants] FOREIGN KEY([RestauranId])
REFERENCES [dbo].[Restaurants] ([RestaurantId])
GO
ALTER TABLE [dbo].[PromotionLineItem] CHECK CONSTRAINT [FK_PromotionLineItem_Restaurants]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_AspNetUsers]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Restaurants] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurants] ([RestaurantId])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Restaurants]
GO
ALTER TABLE [dbo].[RestaurantArea]  WITH CHECK ADD  CONSTRAINT [FK_District_RestaurantArea] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([DistrictId])
GO
ALTER TABLE [dbo].[RestaurantArea] CHECK CONSTRAINT [FK_District_RestaurantArea]
GO
ALTER TABLE [dbo].[RestaurantArea]  WITH CHECK ADD  CONSTRAINT [FK_Restaurant_RestaurantArea] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurants] ([RestaurantId])
GO
ALTER TABLE [dbo].[RestaurantArea] CHECK CONSTRAINT [FK_Restaurant_RestaurantArea]
GO
ALTER TABLE [dbo].[RestaurantArea]  WITH CHECK ADD  CONSTRAINT [FK_Zone_RestaurantArea] FOREIGN KEY([ZoneId])
REFERENCES [dbo].[Zone] ([ZoneId])
GO
ALTER TABLE [dbo].[RestaurantArea] CHECK CONSTRAINT [FK_Zone_RestaurantArea]
GO
ALTER TABLE [dbo].[RestaurantCategory]  WITH CHECK ADD  CONSTRAINT [FK_Category_RestaurantCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[RestaurantCategory] CHECK CONSTRAINT [FK_Category_RestaurantCategory]
GO
ALTER TABLE [dbo].[RestaurantCategory]  WITH CHECK ADD  CONSTRAINT [FK_Restauran_RestaurantCategory] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurants] ([RestaurantId])
GO
ALTER TABLE [dbo].[RestaurantCategory] CHECK CONSTRAINT [FK_Restauran_RestaurantCategory]
GO
ALTER TABLE [dbo].[Restaurants]  WITH CHECK ADD  CONSTRAINT [FK_Restaurant_ContentdifitionId] FOREIGN KEY([ContendifinitionId])
REFERENCES [dbo].[Contentdefinition] ([ContentdefinitionId])
GO
ALTER TABLE [dbo].[Restaurants] CHECK CONSTRAINT [FK_Restaurant_ContentdifitionId]
GO
ALTER TABLE [dbo].[RestaurantWorkTime]  WITH CHECK ADD  CONSTRAINT [FK_RestaurantWorkTime_Restaurants] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurants] ([RestaurantId])
GO
ALTER TABLE [dbo].[RestaurantWorkTime] CHECK CONSTRAINT [FK_RestaurantWorkTime_Restaurants]
GO
ALTER TABLE [dbo].[UserRestaurant]  WITH CHECK ADD  CONSTRAINT [FK_Restaurant_UserRestaurant] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurants] ([RestaurantId])
GO
ALTER TABLE [dbo].[UserRestaurant] CHECK CONSTRAINT [FK_Restaurant_UserRestaurant]
GO
ALTER TABLE [dbo].[UserRestaurant]  WITH CHECK ADD  CONSTRAINT [FK_User_UserRestaurant] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserRestaurant] CHECK CONSTRAINT [FK_User_UserRestaurant]
GO
ALTER TABLE [dbo].[VoucherLineItem]  WITH CHECK ADD  CONSTRAINT [FK_Voucher_VoucherLineItem] FOREIGN KEY([VoucherId])
REFERENCES [dbo].[Voucher] ([VoucherId])
GO
ALTER TABLE [dbo].[VoucherLineItem] CHECK CONSTRAINT [FK_Voucher_VoucherLineItem]
GO
ALTER TABLE [dbo].[Zone]  WITH CHECK ADD  CONSTRAINT [FK_District_Zone] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([DistrictId])
GO
ALTER TABLE [dbo].[Zone] CHECK CONSTRAINT [FK_District_Zone]
GO
