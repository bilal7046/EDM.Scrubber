USE [master]
GO
/****** Object:  Database [EDMScrubber]    Script Date: 12/22/2021 9:16:36 AM ******/
CREATE DATABASE [EDMScrubber]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EDMScrubber', FILENAME = N'D:\Databases\SqlServer2014\EDMScrubber.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EDMScrubber_log', FILENAME = N'D:\Databases\SqlServer2014\EDMScrubber_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EDMScrubber] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EDMScrubber].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EDMScrubber] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EDMScrubber] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EDMScrubber] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EDMScrubber] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EDMScrubber] SET ARITHABORT OFF 
GO
ALTER DATABASE [EDMScrubber] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EDMScrubber] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EDMScrubber] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EDMScrubber] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EDMScrubber] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EDMScrubber] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EDMScrubber] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EDMScrubber] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EDMScrubber] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EDMScrubber] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EDMScrubber] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EDMScrubber] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EDMScrubber] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EDMScrubber] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EDMScrubber] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EDMScrubber] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [EDMScrubber] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EDMScrubber] SET RECOVERY FULL 
GO
ALTER DATABASE [EDMScrubber] SET  MULTI_USER 
GO
ALTER DATABASE [EDMScrubber] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EDMScrubber] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EDMScrubber] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EDMScrubber] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [EDMScrubber] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'EDMScrubber', N'ON'
GO
USE [EDMScrubber]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/22/2021 9:16:36 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12/22/2021 9:16:36 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/22/2021 9:16:36 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/22/2021 9:16:36 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/22/2021 9:16:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/22/2021 9:16:36 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/22/2021 9:16:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [varchar](250) NOT NULL,
	[LastName] [varchar](250) NOT NULL,
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12/22/2021 9:16:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DatasetFiles]    Script Date: 12/22/2021 9:16:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatasetFiles](
	[DatasetId] [nvarchar](450) NOT NULL,
	[StorageId] [nvarchar](450) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](450) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Datasets]    Script Date: 12/22/2021 9:16:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Datasets](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[Description] [varchar](250) NULL,
	[Size] [int] NULL,
	[Protected] [bit] NOT NULL,
	[Active] [bit] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](450) NOT NULL,
	[Updatedy] [nvarchar](450) NULL,
	[IpAddress] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Datasets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FiltersetRules]    Script Date: 12/22/2021 9:16:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FiltersetRules](
	[Id] [nvarchar](450) NOT NULL,
	[FiltersetId] [nvarchar](450) NOT NULL,
	[DatasetId] [nvarchar](450) NOT NULL,
	[RuleName] [varchar](250) NOT NULL,
	[Priority] [int] NOT NULL,
	[Condition] [int] NOT NULL,
	[FileGenerated] [int] NULL,
	[Active] [bit] NOT NULL,
	[StopProcessing] [bit] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](450) NOT NULL,
	[UpdatedBy] [nvarchar](450) NULL,
	[IpAddress] [varchar](150) NOT NULL,
 CONSTRAINT [PK_FiltersetRules] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Filtersets]    Script Date: 12/22/2021 9:16:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Filtersets](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[Description] [varchar](250) NULL,
	[Active] [bit] NOT NULL,
	[CreatedAt] [nchar](10) NOT NULL,
	[UpdatedAt] [nchar](10) NULL,
	[CreatedBy] [nvarchar](450) NOT NULL,
	[UpdatedBy] [nvarchar](450) NULL,
	[IpAddress] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Filtersets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ScrubFiles]    Script Date: 12/22/2021 9:16:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ScrubFiles](
	[Id] [nvarchar](450) NOT NULL,
	[FiltersetId] [nvarchar](450) NOT NULL,
	[StorageId] [nvarchar](450) NOT NULL,
	[NumberOfRows] [int] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](450) NOT NULL,
	[IpAddress] [varchar](150) NOT NULL,
 CONSTRAINT [PK_ScrubFiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SrubPlans]    Script Date: 12/22/2021 9:16:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SrubPlans](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[PlanType] [int] NOT NULL,
	[PlanLimit] [int] NOT NULL,
	[Description] [varchar](500) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](450) NOT NULL,
	[UpdatedBy] [nvarchar](450) NULL,
	[IpAddress] [varchar](150) NULL,
 CONSTRAINT [PK_SrubPlans] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SrubResults]    Script Date: 12/22/2021 9:16:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SrubResults](
	[Id] [nvarchar](450) NOT NULL,
	[ScubFileId] [nvarchar](450) NOT NULL,
	[RuleId] [nvarchar](450) NOT NULL,
	[ResultFileId] [nvarchar](450) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
 CONSTRAINT [PK_SrubResults] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Storage]    Script Date: 12/22/2021 9:16:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Storage](
	[Id] [nvarchar](450) NOT NULL,
	[Path] [nchar](10) NOT NULL,
	[FileName] [nchar](10) NOT NULL,
	[FileExt] [nchar](10) NOT NULL,
	[EncKey] [nchar](10) NOT NULL,
	[PublicIdentifier] [nchar](10) NOT NULL,
	[PublicId] [nchar](10) NOT NULL,
	[MimeType] [nchar](10) NULL,
	[FileSize] [nchar](10) NULL,
 CONSTRAINT [PK_Storage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserPlans]    Script Date: 12/22/2021 9:16:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserPlans](
	[Id] [nvarchar](450) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[PlanId] [nvarchar](450) NOT NULL,
	[Active] [bit] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](450) NOT NULL,
	[UpdatedBy] [nvarchar](450) NULL,
	[IpAddress] [varchar](150) NULL,
 CONSTRAINT [PK_UserPlans] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211214211032_InitDB', N'5.0.13')
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 12/22/2021 9:16:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 12/22/2021 9:16:36 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 12/22/2021 9:16:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 12/22/2021 9:16:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 12/22/2021 9:16:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 12/22/2021 9:16:36 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 12/22/2021 9:16:36 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_ScrubFiles] FOREIGN KEY([Id])
REFERENCES [dbo].[ScrubFiles] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_ScrubFiles]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[DatasetFiles]  WITH CHECK ADD  CONSTRAINT [FK_DatasetFiles_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[DatasetFiles] CHECK CONSTRAINT [FK_DatasetFiles_AspNetUsers]
GO
ALTER TABLE [dbo].[DatasetFiles]  WITH CHECK ADD  CONSTRAINT [FK_DatasetFiles_Datasets] FOREIGN KEY([DatasetId])
REFERENCES [dbo].[Datasets] ([Id])
GO
ALTER TABLE [dbo].[DatasetFiles] CHECK CONSTRAINT [FK_DatasetFiles_Datasets]
GO
ALTER TABLE [dbo].[DatasetFiles]  WITH CHECK ADD  CONSTRAINT [FK_DatasetFiles_Storage] FOREIGN KEY([StorageId])
REFERENCES [dbo].[Storage] ([Id])
GO
ALTER TABLE [dbo].[DatasetFiles] CHECK CONSTRAINT [FK_DatasetFiles_Storage]
GO
ALTER TABLE [dbo].[Datasets]  WITH CHECK ADD  CONSTRAINT [FK_Datasets_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Datasets] CHECK CONSTRAINT [FK_Datasets_AspNetUsers]
GO
ALTER TABLE [dbo].[Datasets]  WITH CHECK ADD  CONSTRAINT [FK_Datasets_AspNetUsers1] FOREIGN KEY([Updatedy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Datasets] CHECK CONSTRAINT [FK_Datasets_AspNetUsers1]
GO
ALTER TABLE [dbo].[FiltersetRules]  WITH CHECK ADD  CONSTRAINT [FK_FiltersetRules_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[FiltersetRules] CHECK CONSTRAINT [FK_FiltersetRules_AspNetUsers]
GO
ALTER TABLE [dbo].[FiltersetRules]  WITH CHECK ADD  CONSTRAINT [FK_FiltersetRules_AspNetUsers1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[FiltersetRules] CHECK CONSTRAINT [FK_FiltersetRules_AspNetUsers1]
GO
ALTER TABLE [dbo].[FiltersetRules]  WITH CHECK ADD  CONSTRAINT [FK_FiltersetRules_Datasets] FOREIGN KEY([DatasetId])
REFERENCES [dbo].[Datasets] ([Id])
GO
ALTER TABLE [dbo].[FiltersetRules] CHECK CONSTRAINT [FK_FiltersetRules_Datasets]
GO
ALTER TABLE [dbo].[FiltersetRules]  WITH CHECK ADD  CONSTRAINT [FK_FiltersetRules_Filtersets] FOREIGN KEY([FiltersetId])
REFERENCES [dbo].[Filtersets] ([Id])
GO
ALTER TABLE [dbo].[FiltersetRules] CHECK CONSTRAINT [FK_FiltersetRules_Filtersets]
GO
ALTER TABLE [dbo].[Filtersets]  WITH CHECK ADD  CONSTRAINT [FK_Filtersets_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Filtersets] CHECK CONSTRAINT [FK_Filtersets_AspNetUsers]
GO
ALTER TABLE [dbo].[Filtersets]  WITH CHECK ADD  CONSTRAINT [FK_Filtersets_AspNetUsers1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Filtersets] CHECK CONSTRAINT [FK_Filtersets_AspNetUsers1]
GO
ALTER TABLE [dbo].[ScrubFiles]  WITH CHECK ADD  CONSTRAINT [FK_ScrubFiles_Filtersets] FOREIGN KEY([FiltersetId])
REFERENCES [dbo].[Filtersets] ([Id])
GO
ALTER TABLE [dbo].[ScrubFiles] CHECK CONSTRAINT [FK_ScrubFiles_Filtersets]
GO
ALTER TABLE [dbo].[ScrubFiles]  WITH CHECK ADD  CONSTRAINT [FK_ScrubFiles_SrubResults] FOREIGN KEY([FiltersetId])
REFERENCES [dbo].[SrubResults] ([Id])
GO
ALTER TABLE [dbo].[ScrubFiles] CHECK CONSTRAINT [FK_ScrubFiles_SrubResults]
GO
ALTER TABLE [dbo].[SrubResults]  WITH CHECK ADD  CONSTRAINT [FK_SrubResults_FiltersetRules] FOREIGN KEY([RuleId])
REFERENCES [dbo].[FiltersetRules] ([Id])
GO
ALTER TABLE [dbo].[SrubResults] CHECK CONSTRAINT [FK_SrubResults_FiltersetRules]
GO
ALTER TABLE [dbo].[SrubResults]  WITH CHECK ADD  CONSTRAINT [FK_SrubResults_Storage] FOREIGN KEY([ResultFileId])
REFERENCES [dbo].[Storage] ([Id])
GO
ALTER TABLE [dbo].[SrubResults] CHECK CONSTRAINT [FK_SrubResults_Storage]
GO
ALTER TABLE [dbo].[UserPlans]  WITH CHECK ADD  CONSTRAINT [FK_UserPlans_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserPlans] CHECK CONSTRAINT [FK_UserPlans_AspNetUsers]
GO
ALTER TABLE [dbo].[UserPlans]  WITH CHECK ADD  CONSTRAINT [FK_UserPlans_SrubPlans] FOREIGN KEY([PlanId])
REFERENCES [dbo].[SrubPlans] ([Id])
GO
ALTER TABLE [dbo].[UserPlans] CHECK CONSTRAINT [FK_UserPlans_SrubPlans]
GO
USE [master]
GO
ALTER DATABASE [EDMScrubber] SET  READ_WRITE 
GO
