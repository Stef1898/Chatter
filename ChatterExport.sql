USE [master]
GO
/****** Object:  Database [Chatter]    Script Date: 6/1/2017 2:00:00 PM ******/
CREATE DATABASE [Chatter]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Chatter', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Chatter.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Chatter_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Chatter_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Chatter] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Chatter].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Chatter] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Chatter] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Chatter] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Chatter] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Chatter] SET ARITHABORT OFF 
GO
ALTER DATABASE [Chatter] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Chatter] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Chatter] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Chatter] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Chatter] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Chatter] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Chatter] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Chatter] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Chatter] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Chatter] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Chatter] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Chatter] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Chatter] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Chatter] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Chatter] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Chatter] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Chatter] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Chatter] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Chatter] SET  MULTI_USER 
GO
ALTER DATABASE [Chatter] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Chatter] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Chatter] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Chatter] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Chatter] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Chatter]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/1/2017 2:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/1/2017 2:00:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/1/2017 2:00:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/1/2017 2:00:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/1/2017 2:00:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/1/2017 2:00:00 PM ******/
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
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Chat]    Script Date: 6/1/2017 2:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chat](
	[ChatID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NULL CONSTRAINT [DF_Chat_Date]  DEFAULT (getdate()),
	[Message] [nvarchar](4000) NOT NULL,
	[Id] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Chat] PRIMARY KEY CLUSTERED 
(
	[ChatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201706011446559_InitialCreate', N'ChatterW9.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EDC36107D2FD07F10F4D416CECA9726488CDD04EEDA6E8DC617649DB46F0157E2AE8548942A51AE8DA25FD6877E527FA14389BAF1A2CBAEBCBB0E020416393C331C0EC9E170B8FFFDF3EFF8DD83EF19F7388ADD804CCC83D1BE696062078E4B961333A18B17AFCD776FBFFD667CE6F80FC6A79CEE88D1414B124FCC3B4AC363CB8AED3BECA378E4BB7614C4C1828EECC0B790135887FBFB6FAC83030B038409588631FE9010EAFA38FD80CF69406C1CD20479978183BD989743CD2C4535AE908FE310D978624EEF10A538FAEDCD28A3358D13CF4520C70C7B0BD3408404145190F2F8638C67340AC872164201F26E1F430C740BE4C5984B7F5C9277EDC8FE21EB885536CCA1EC24A681DF13F0E0886BC6129BAFA45FB3D01CE8EE0C744C1F59AF53FD4DCC0B07A7451F020F1420323C9E7A11239E9897058B9338BCC27494371C6590E711C0FD19445F4655C43DA373BBBDC2920E47FBECDF9E314D3C9A447842704223E4ED1937C9DC73ED5FF1E36DF00593C9D1C17C71F4FAE52BE41CBDFA111FBDACF614FA0A74B50228BA89821047201B5E14FD370DABDECE121B16CD2A6D32AD802DC1A4308D4BF4F01E9325BD83E972F8DA34CEDD07ECE425DCB83E1217E61034A251029F5789E7A1B9878B7AAB9127FBBF81EBE1CB578370BD42F7EE321D7A813F4C9C08E6D507ECA5B5F19D1B66D3AB36DE9F39D97914F8ECBB6E5F59EDE759904436EB4CA025B945D112D3BA7463AB34DE4E26CDA08637EB1C75F74D9B492A9BB792947568959990B3D8F46CC8E57D5ABE9D2DEE240C61F052D3621A69323871AB1A096DC134728AD26C0EBA9A0D81EE7CCDABE0998F5C6F8065B00317F03F166EE4E3A2973F05607488F496F906C531AC02CE2F28BE6B101DFE1C40F419B693088C7346911F3E39B79BBB80E0ABC49F339BDF1CAFC186E6F6CFE01CD93488CE086BB536DEFBC0FE1224F48C38A788E28FD4CE01D9E7ADEB770718449C13DBC6717C0EC68C9D6900EE750E7841E8D1616F38B63C6DDB0D997AC8F5D57E88B0907ECE494B5F444D21F9231A32954FD224EAFB60E9926EA2E6A47A51338A565139595F511958374939A55ED094A055CE8C6A302F2F1DA1E1DDBC1476F7FDBCF5366FDD5A5051E30C5648FC3326388265CCB949DD13528E409775631BCE423A7C8CE993EF4D29A74FC84B8666B5D26C481781E167430ABBFBB32115138AEF5D8779251D0E3F3931C077A2579FABDAE79C20D9A6A743AD9B9B66BE993540375D4EE238B0DD741628C25E3C6851971F7C38A33D8291F5468C8240C7C0D05DB6E54109F4CD148DEA9A9C620F536C9CD85958708A621B39B21AA1434E0FC1F21D552158190DA90BF783C4132C1D47AC116287A01866AA4BA83C2D5C62BB21F25AB524B4ECB885B1BE173CC49A531C62C218B66AA20B7375F0830950F01106A54D4363AB6271CD86A8F15A7563DEE6C296E32EC5243662932DBEB3C62EB9FFF62486D9ACB10D1867B34ABA08A00DE46DC340F959A5AB018807975D3350E1C4A43150EE526DC440EB1ADB8281D655F2EC0C343BA2761D7FE1BCBA6BE6593F286F7E5B6F54D7166CB3A68F1D33CDCCF78436145AE04836CFD339ABC40F5471380339F9F92CE6AEAE68220C7C86693D6453FABB4A3FD46A06118DA809B034B416507E0528014913AA8770792CAF513AEE45F480CDE36E8DB07CED17602B36206357AF422B84FA0B53D1383B9D3E8A9E15D6201979A7C34205476110E2E255EF7807A5E8E2B2B262BAF8C27DBCE14AC7F8603428A8C573D52829EFCCE05ACA4DB35D4B2A87AC8F4BB6969604F749A3A5BC33836B89DB68BB92144E410FB7602D15D5B7F081265B1EE928769BA26E6C65F951BC606C6912A9C697280C5DB2AC2456F11263C6B3AA5ECCFA271CF9198665C78ABCA342DA82130D22B4C4422DB00649CFDD28A6A788A23962719EA9E34B64CABD55B3FCE72CABDBA73C88F93E9053B3BF798C57BCB8AFEDB4B22BC211CEA17F3EF367D220BA62F4D5CD0D96E6863C1429E2F6D3C04B7CA277AFF4ADB3DBBB6AFBAC4446185B82FC92FB24E94A7272EB8AEF342CF2941864880ADF65F561D243E8949D7B9E5575EBBC513D4A1E9CAAA2E802565B1B369D13D363A844EFB0FF48B5223CCD9CE2292955005ED413A392D5208155EABAA3D6134FAA98F59AEE884276491552A8EA21653587A42664B562253C8D46D514DD39C859235574B9B63BB2227FA40AADA85E015B21B358D71D5591625205565477C72EF34DC4257487772DED9965C56D2B3BD4AEB76F69309E663D1C66DBABDCDD57812AC53DB1F8EDBC04C6CB77D296B427BB156D298B64AC674B1A0CFDAA53BBF3AE2F3A8D17F57ACCDA45766D616FBAC8D7E3F5B3D827B50BE958279214DC8BE39D708C1BF32355874733E2192B23318D5C8DB0A93FC614FB2346309AFDE14D3D17B3253C27B844C45DE09866C91BE6E1FEC1A1F0F266775EC15871EC788A23A9EE294C7DCC36908745EE5164DFA148CE8A58E3A548092A059C2F88831F26E65F69ABE33476C1FE4A8BF78C8BF82371FF48A0E2364AB0F1B79CE5394CE67CF3F16A47DF3974D7EAC5EF9FB3A67BC6750433E6D8D81774B9CA08D75F3FF492266BBA86342BBF8978BE13AAF6E840892A4C88D5DF18CC5D3AC8FB825CCAEF7CF4F07D5FD1946F08D64254BC13180A6F1015EADE01AC82A57D03E0C0274DDF00F4EBACFA4DC02AA269DF03B8A43F98F81AA0FB3294B7DCE256A338116D62494AF5DC9A4DBD566AE5B6F72629E97AAD892E2756F7805B23797A05CB786679C783ED8E8AB4E2C1B0B769DA4F9E4BBC2BE9C36562C776B386379928DC7021F455E507EF40469B224367FB59C09BB6355D1477C75329FBE5FAEE98B1F1BCADED67F46EDAD87461DE1D37B65E79BB3B666BDBDA3FB76C699DB7D0AD67E1CA09459ADB18552CB82DCB360B9CC3097F1E8011641E65F638529DD6D59492DAC2B024D133D5E793898CA58923F195289AD9F6EB2BDFF01B3BCB699AD96AB2309B78F3F5BF9137A769E6ADC96DDC467EB032BB5095B3DDB28E35A53F3DA77CE05A4F5AD2CFDB7CD6C6ABF5E794FE3B88526AB3477347FC7CB27D0751C99053A74776AF7CDD0B7B67E5971461FF8EDD6509C17E579160BBB66B1634176411E49BB720514E2244682E31450E6CA927117517C8A650CD62CCE9EBEE346EC76E3AE6D8B920D7090D130A5DC6FEDCAB05BC9813D0C43F4D61AECB3CBE0ED31F2A19A20B20A6CB62F3D7E4A7C4F59C42EE73454C4803C1BC0B1ED1656349596477F958205D05A42310575FE114DD623FF4002CBE2633748F57910DCCEF3D5E22FBB18C00EA40DA07A2AEF6F1A98B9611F2638E51B6874FB061C77F78FB3F2BFA691F50540000, N'6.1.3-40302')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Google', N'112118513529279089004', N'9c53a229-5bb3-495a-9d78-0e552b3bf884')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'9c53a229-5bb3-495a-9d78-0e552b3bf884', N'dkorpics7@gmail.com', 0, NULL, N'5fec350d-d1e4-42d4-a2b9-f1176fb448ab', NULL, 0, 0, NULL, 1, 0, N'dkorpics7@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ebbc5901-4788-4b40-a5aa-2d3a9e2ea0a8', N'test@gmail.com', 0, N'ADQShd8hLW9vls4402hBy9IwQ3ExxH0QLl6PmqpgqQ36E3Vx1r7vBau/oA5a/LNfSg==', N'757864d9-111c-4d05-8c49-2cc8e608bf94', NULL, 0, 0, NULL, 1, 0, N'test@gmail.com')
SET IDENTITY_INSERT [dbo].[Chat] ON 

INSERT [dbo].[Chat] ([ChatID], [Date], [Message], [Id]) VALUES (1, CAST(N'1900-01-01 00:00:00.000' AS DateTime), N'This is our first message', N'dkorpics@roadrunner.com')
INSERT [dbo].[Chat] ([ChatID], [Date], [Message], [Id]) VALUES (2, CAST(N'1900-01-01 00:00:00.000' AS DateTime), N'This is our second message', N'stef183@yahoo.com')
INSERT [dbo].[Chat] ([ChatID], [Date], [Message], [Id]) VALUES (3, CAST(N'2017-05-30 00:00:00.000' AS DateTime), N'Happy Birthday, Megan', N'Diane')
SET IDENTITY_INSERT [dbo].[Chat] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/1/2017 2:00:00 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/1/2017 2:00:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/1/2017 2:00:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 6/1/2017 2:00:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/1/2017 2:00:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/1/2017 2:00:00 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
USE [master]
GO
ALTER DATABASE [Chatter] SET  READ_WRITE 
GO
