
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 14-09-2021 18:57:53 ******/
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
/****** Object:  Table [dbo].[AbpAuditLogs]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpAuditLogs](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BrowserInfo] [nvarchar](512) NULL,
	[ClientIpAddress] [nvarchar](64) NULL,
	[ClientName] [nvarchar](128) NULL,
	[CustomData] [nvarchar](2000) NULL,
	[Exception] [nvarchar](2000) NULL,
	[ExecutionDuration] [int] NOT NULL,
	[ExecutionTime] [datetime2](7) NOT NULL,
	[ImpersonatorTenantId] [int] NULL,
	[ImpersonatorUserId] [bigint] NULL,
	[MethodName] [nvarchar](256) NULL,
	[Parameters] [nvarchar](1024) NULL,
	[ServiceName] [nvarchar](256) NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NULL,
	[ReturnValue] [nvarchar](max) NULL,
	[ExceptionMessage] [nvarchar](1024) NULL,
 CONSTRAINT [PK_AbpAuditLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpBackgroundJobs]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpBackgroundJobs](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[IsAbandoned] [bit] NOT NULL,
	[JobArgs] [nvarchar](max) NOT NULL,
	[JobType] [nvarchar](512) NOT NULL,
	[LastTryTime] [datetime2](7) NULL,
	[NextTryTime] [datetime2](7) NOT NULL,
	[Priority] [tinyint] NOT NULL,
	[TryCount] [smallint] NOT NULL,
 CONSTRAINT [PK_AbpBackgroundJobs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpDynamicEntityProperties]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpDynamicEntityProperties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EntityFullName] [nvarchar](256) NULL,
	[DynamicPropertyId] [int] NOT NULL,
	[TenantId] [int] NULL,
 CONSTRAINT [PK_AbpDynamicEntityProperties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpDynamicEntityPropertyValues]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpDynamicEntityPropertyValues](
	[Value] [nvarchar](max) NOT NULL,
	[EntityId] [nvarchar](max) NULL,
	[DynamicEntityPropertyId] [int] NOT NULL,
	[TenantId] [int] NULL,
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_AbpDynamicEntityPropertyValues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpDynamicProperties]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpDynamicProperties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PropertyName] [nvarchar](256) NULL,
	[InputType] [nvarchar](max) NULL,
	[Permission] [nvarchar](max) NULL,
	[TenantId] [int] NULL,
	[DisplayName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpDynamicProperties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpDynamicPropertyValues]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpDynamicPropertyValues](
	[Value] [nvarchar](max) NOT NULL,
	[TenantId] [int] NULL,
	[DynamicPropertyId] [int] NOT NULL,
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_AbpDynamicPropertyValues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpEditions]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpEditions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[DeleterUserId] [bigint] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[DisplayName] [nvarchar](64) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[Name] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_AbpEditions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpEntityChanges]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpEntityChanges](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ChangeTime] [datetime2](7) NOT NULL,
	[ChangeType] [tinyint] NOT NULL,
	[EntityChangeSetId] [bigint] NOT NULL,
	[EntityId] [nvarchar](48) NULL,
	[EntityTypeFullName] [nvarchar](192) NULL,
	[TenantId] [int] NULL,
 CONSTRAINT [PK_AbpEntityChanges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpEntityChangeSets]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpEntityChangeSets](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BrowserInfo] [nvarchar](512) NULL,
	[ClientIpAddress] [nvarchar](64) NULL,
	[ClientName] [nvarchar](128) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[ExtensionData] [nvarchar](max) NULL,
	[ImpersonatorTenantId] [int] NULL,
	[ImpersonatorUserId] [bigint] NULL,
	[Reason] [nvarchar](256) NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NULL,
 CONSTRAINT [PK_AbpEntityChangeSets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpEntityPropertyChanges]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpEntityPropertyChanges](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[EntityChangeId] [bigint] NOT NULL,
	[NewValue] [nvarchar](512) NULL,
	[OriginalValue] [nvarchar](512) NULL,
	[PropertyName] [nvarchar](96) NULL,
	[PropertyTypeFullName] [nvarchar](192) NULL,
	[TenantId] [int] NULL,
	[NewValueHash] [nvarchar](max) NULL,
	[OriginalValueHash] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpEntityPropertyChanges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpFeatures]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpFeatures](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](2000) NOT NULL,
	[EditionId] [int] NULL,
	[TenantId] [int] NULL,
 CONSTRAINT [PK_AbpFeatures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpLanguages]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpLanguages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[DeleterUserId] [bigint] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[DisplayName] [nvarchar](64) NOT NULL,
	[Icon] [nvarchar](128) NULL,
	[IsDeleted] [bit] NOT NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[Name] [nvarchar](128) NOT NULL,
	[TenantId] [int] NULL,
	[IsDisabled] [bit] NOT NULL,
 CONSTRAINT [PK_AbpLanguages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpLanguageTexts]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpLanguageTexts](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[Key] [nvarchar](256) NOT NULL,
	[LanguageName] [nvarchar](128) NOT NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[Source] [nvarchar](128) NOT NULL,
	[TenantId] [int] NULL,
	[Value] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AbpLanguageTexts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpNotifications]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpNotifications](
	[Id] [uniqueidentifier] NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[Data] [nvarchar](max) NULL,
	[DataTypeName] [nvarchar](512) NULL,
	[EntityId] [nvarchar](96) NULL,
	[EntityTypeAssemblyQualifiedName] [nvarchar](512) NULL,
	[EntityTypeName] [nvarchar](250) NULL,
	[ExcludedUserIds] [nvarchar](max) NULL,
	[NotificationName] [nvarchar](96) NOT NULL,
	[Severity] [tinyint] NOT NULL,
	[TenantIds] [nvarchar](max) NULL,
	[UserIds] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpNotifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpNotificationSubscriptions]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpNotificationSubscriptions](
	[Id] [uniqueidentifier] NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[EntityId] [nvarchar](96) NULL,
	[EntityTypeAssemblyQualifiedName] [nvarchar](512) NULL,
	[EntityTypeName] [nvarchar](250) NULL,
	[NotificationName] [nvarchar](96) NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_AbpNotificationSubscriptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpOrganizationUnitRoles]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpOrganizationUnitRoles](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[TenantId] [int] NULL,
	[RoleId] [int] NOT NULL,
	[OrganizationUnitId] [bigint] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_AbpOrganizationUnitRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpOrganizationUnits]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpOrganizationUnits](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](95) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[DeleterUserId] [bigint] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[DisplayName] [nvarchar](128) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[ParentId] [bigint] NULL,
	[TenantId] [int] NULL,
 CONSTRAINT [PK_AbpOrganizationUnits] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpPermissions]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpPermissions](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[IsGranted] [bit] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[TenantId] [int] NULL,
	[RoleId] [int] NULL,
	[UserId] [bigint] NULL,
 CONSTRAINT [PK_AbpPermissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpRoleClaims]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpRoleClaims](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](256) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[RoleId] [int] NOT NULL,
	[TenantId] [int] NULL,
 CONSTRAINT [PK_AbpRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpRoles]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConcurrencyStamp] [nvarchar](128) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[DeleterUserId] [bigint] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[DisplayName] [nvarchar](64) NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsStatic] [bit] NOT NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[Name] [nvarchar](32) NOT NULL,
	[NormalizedName] [nvarchar](32) NOT NULL,
	[TenantId] [int] NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpSettings]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpSettings](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[Name] [nvarchar](256) NOT NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpTenantNotifications]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpTenantNotifications](
	[Id] [uniqueidentifier] NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[Data] [nvarchar](max) NULL,
	[DataTypeName] [nvarchar](512) NULL,
	[EntityId] [nvarchar](96) NULL,
	[EntityTypeAssemblyQualifiedName] [nvarchar](512) NULL,
	[EntityTypeName] [nvarchar](250) NULL,
	[NotificationName] [nvarchar](96) NOT NULL,
	[Severity] [tinyint] NOT NULL,
	[TenantId] [int] NULL,
 CONSTRAINT [PK_AbpTenantNotifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpTenants]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpTenants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConnectionString] [nvarchar](1024) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[DeleterUserId] [bigint] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[EditionId] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[Name] [nvarchar](128) NOT NULL,
	[TenancyName] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_AbpTenants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserAccounts]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserAccounts](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[DeleterUserId] [bigint] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[EmailAddress] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NOT NULL,
	[UserLinkId] [bigint] NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AbpUserAccounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserClaims]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserClaims](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](256) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_AbpUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserLoginAttempts]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserLoginAttempts](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BrowserInfo] [nvarchar](512) NULL,
	[ClientIpAddress] [nvarchar](64) NULL,
	[ClientName] [nvarchar](128) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[Result] [tinyint] NOT NULL,
	[TenancyName] [nvarchar](64) NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NULL,
	[UserNameOrEmailAddress] [nvarchar](256) NULL,
 CONSTRAINT [PK_AbpUserLoginAttempts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserLogins]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserLogins](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](256) NOT NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_AbpUserLogins] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserNotifications]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserNotifications](
	[Id] [uniqueidentifier] NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[State] [int] NOT NULL,
	[TenantId] [int] NULL,
	[TenantNotificationId] [uniqueidentifier] NOT NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_AbpUserNotifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserOrganizationUnits]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserOrganizationUnits](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[OrganizationUnitId] [bigint] NOT NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_AbpUserOrganizationUnits] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserRoles]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserRoles](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[RoleId] [int] NOT NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_AbpUserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUsers]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUsers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[AuthenticationSource] [nvarchar](64) NULL,
	[ConcurrencyStamp] [nvarchar](128) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[DeleterUserId] [bigint] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[EmailAddress] [nvarchar](256) NOT NULL,
	[EmailConfirmationCode] [nvarchar](328) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsEmailConfirmed] [bit] NOT NULL,
	[IsLockoutEnabled] [bit] NOT NULL,
	[IsPhoneNumberConfirmed] [bit] NOT NULL,
	[IsTwoFactorEnabled] [bit] NOT NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[LockoutEndDateUtc] [datetime2](7) NULL,
	[Name] [nvarchar](64) NOT NULL,
	[NormalizedEmailAddress] [nvarchar](256) NOT NULL,
	[NormalizedUserName] [nvarchar](256) NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordResetCode] [nvarchar](328) NULL,
	[PhoneNumber] [nvarchar](32) NULL,
	[SecurityStamp] [nvarchar](128) NULL,
	[Surname] [nvarchar](64) NOT NULL,
	[TenantId] [int] NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_AbpUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserTokens]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserTokens](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LoginProvider] [nvarchar](128) NULL,
	[Name] [nvarchar](128) NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NOT NULL,
	[Value] [nvarchar](512) NULL,
	[ExpireDate] [datetime2](7) NULL,
 CONSTRAINT [PK_AbpUserTokens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpWebhookEvents]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpWebhookEvents](
	[Id] [uniqueidentifier] NOT NULL,
	[WebhookName] [nvarchar](max) NOT NULL,
	[Data] [nvarchar](max) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[TenantId] [int] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_AbpWebhookEvents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpWebhookSendAttempts]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpWebhookSendAttempts](
	[Id] [uniqueidentifier] NOT NULL,
	[WebhookEventId] [uniqueidentifier] NOT NULL,
	[WebhookSubscriptionId] [uniqueidentifier] NOT NULL,
	[Response] [nvarchar](max) NULL,
	[ResponseStatusCode] [int] NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[TenantId] [int] NULL,
 CONSTRAINT [PK_AbpWebhookSendAttempts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpWebhookSubscriptions]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpWebhookSubscriptions](
	[Id] [uniqueidentifier] NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[TenantId] [int] NULL,
	[WebhookUri] [nvarchar](max) NOT NULL,
	[Secret] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Webhooks] [nvarchar](max) NULL,
	[Headers] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpWebhookSubscriptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppCountries]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppCountries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](max) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
 CONSTRAINT [PK_AppCountries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppStates]    Script Date: 14-09-2021 18:57:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppStates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryId] [int] NOT NULL,
	[StateName] [nvarchar](max) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
 CONSTRAINT [PK_AppStates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170424115119_Initial_Migrations', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170608053244_Upgraded_To_Abp_2_1_0', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170621153937_Added_Description_And_IsActive_To_Role', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170703134115_Remove_IsActive_From_Role', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170804083601_Upgraded_To_Abp_v2.2.2', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180201051646_Upgraded_To_Abp_v3.4.0', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180320131229_Upgraded_To_Abp_v3_5_0', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180509121141_Upgraded_To_Abp_v3_6_1', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180726102703_Upgrade_ABP_3.8.0', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180731132139_Upgrade_ABP_3.8.1', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180927062608_Upgrade_ABP_3.8.3', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181013103914_Upgraded_To_Abp_v3_9_0', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190208051931_Upgrade_ABP_4_2_0', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190703062215_Upgraded_To_Abp_4_7_0', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190719143908_Upgraded_To_Abp_4_8_0', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191216011543_Upgraded_To_Abp_5_1_0', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200220110527_Upgraded_To_Abp_5_2_0', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200320114152_Upgraded_To_Abp_5_4_0', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200604091046_Upgraded_To_Abp_5_9', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200928141743_Upgraded_To_ABP_5_13_0', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201112121732_Upgraded_To_ABP_6_0', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201217144556_Upgrade_To_ABP_6_1_1', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210324090321_Upgrade_To_ABP_6_3', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210628103231_Upgrade_To_ABP_6_4_rc1', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210910060926_AddedCountryTable', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210910125947_AddedStateTable', N'5.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210914131538_addedForiengKey', N'5.0.8')
GO
SET IDENTITY_INSERT [dbo].[AbpAuditLogs] ON 
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (1, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 9, CAST(N'2021-09-11T12:20:59.6299981' AS DateTime2), NULL, NULL, N'Index', N'{}', N'ProvincesManagement.Web.Host.Controllers.HomeController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (2, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 20, CAST(N'2021-09-11T12:21:01.1181887' AS DateTime2), NULL, NULL, N'SetCookie', N'{}', N'ProvincesManagement.Web.Host.Controllers.AntiForgeryController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (3, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 8, CAST(N'2021-09-11T15:24:03.7465685' AS DateTime2), NULL, NULL, N'Index', N'{}', N'ProvincesManagement.Web.Host.Controllers.HomeController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (4, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 16, CAST(N'2021-09-11T15:24:04.7424764' AS DateTime2), NULL, NULL, N'SetCookie', N'{}', N'ProvincesManagement.Web.Host.Controllers.AntiForgeryController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (5, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 1, CAST(N'2021-09-11T15:24:48.7465118' AS DateTime2), NULL, NULL, N'SetCookie', N'{}', N'ProvincesManagement.Web.Host.Controllers.AntiForgeryController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (6, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 9, CAST(N'2021-09-11T15:25:42.1935732' AS DateTime2), NULL, NULL, N'Index', N'{}', N'ProvincesManagement.Web.Host.Controllers.HomeController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (7, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 11, CAST(N'2021-09-11T15:25:42.9607823' AS DateTime2), NULL, NULL, N'SetCookie', N'{}', N'ProvincesManagement.Web.Host.Controllers.AntiForgeryController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (8, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 7, CAST(N'2021-09-11T15:28:57.7391739' AS DateTime2), NULL, NULL, N'Index', N'{}', N'ProvincesManagement.Web.Host.Controllers.HomeController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (9, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 10, CAST(N'2021-09-11T15:28:58.3806736' AS DateTime2), NULL, NULL, N'SetCookie', N'{}', N'ProvincesManagement.Web.Host.Controllers.AntiForgeryController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 7, CAST(N'2021-09-11T15:29:19.3458343' AS DateTime2), NULL, NULL, N'Index', N'{}', N'ProvincesManagement.Web.Host.Controllers.HomeController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (11, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 9, CAST(N'2021-09-11T15:29:19.9694325' AS DateTime2), NULL, NULL, N'SetCookie', N'{}', N'ProvincesManagement.Web.Host.Controllers.AntiForgeryController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (12, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 1034, CAST(N'2021-09-11T15:29:26.2058007' AS DateTime2), NULL, NULL, N'Authenticate', N'{"model":{"userNameOrEmailAddress":"admin","rememberClient":false}}', N'ProvincesManagement.Controllers.TokenAuthController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (13, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 1, CAST(N'2021-09-11T15:29:27.5849526' AS DateTime2), NULL, NULL, N'SetCookie', N'{}', N'ProvincesManagement.Web.Host.Controllers.AntiForgeryController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (14, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 11, CAST(N'2021-09-11T15:30:01.6062210' AS DateTime2), NULL, NULL, N'Index', N'{}', N'ProvincesManagement.Web.Host.Controllers.HomeController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (15, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 10, CAST(N'2021-09-11T15:30:02.5330173' AS DateTime2), NULL, NULL, N'SetCookie', N'{}', N'ProvincesManagement.Web.Host.Controllers.AntiForgeryController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (17, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 8, CAST(N'2021-09-11T15:32:26.6187651' AS DateTime2), NULL, NULL, N'Index', N'{}', N'ProvincesManagement.Web.Host.Controllers.HomeController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (18, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 23, CAST(N'2021-09-11T15:32:27.7184934' AS DateTime2), NULL, NULL, N'SetCookie', N'{}', N'ProvincesManagement.Web.Host.Controllers.AntiForgeryController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (19, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, N'Abp.Domain.Entities.EntityNotFoundException: There is no such an entity. Entity type: ProvincesManagement.Countries.Country, id: 1
   at Abp.Domain.Repositories.AbpRepositoryBase`2.GetAsync(TPrimaryKey id)
   at ProvincesManagement.Countries.CountryAppService.GetCountryForView(Int32 id) in F:\Projects\MIX\ProvincesManagement\6.4.0\aspnet-core\src\ProvincesManagement.Application\Countries\CountryAppService.cs:line 94
   at lambda_method1105(Closure , Object )
   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.AwaitableObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeActionMethodAsync>g__Awaited|12_0(ControllerActionInvoker invoker, ValueTask`1 actionResultValueTask)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeNextActionFilterAsync>g__Awaited|10_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)', 105, CAST(N'2021-09-11T15:32:46.9541038' AS DateTime2), NULL, NULL, N'GetCountryForView', N'{"id":1}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, N'There is no such an entity. Entity type: ProvincesManagement.Countries.Country, id: 1')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (20, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 549, CAST(N'2021-09-11T15:39:43.7326384' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (21, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 8, CAST(N'2021-09-11T15:40:06.9482219' AS DateTime2), NULL, NULL, N'Index', N'{}', N'ProvincesManagement.Web.Host.Controllers.HomeController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (22, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 18, CAST(N'2021-09-11T15:40:07.8904427' AS DateTime2), NULL, NULL, N'SetCookie', N'{}', N'ProvincesManagement.Web.Host.Controllers.AntiForgeryController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (23, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, N'Abp.Authorization.AbpAuthorizationException: Current user did not login to the application!
   at Abp.Authorization.AuthorizationHelper.AuthorizeAsync(IEnumerable`1 authorizeAttributes)
   at Abp.Authorization.AuthorizationHelper.CheckPermissionsAsync(MethodInfo methodInfo, Type type)
   at Abp.Authorization.AuthorizationHelper.AuthorizeAsync(MethodInfo methodInfo, Type type)
   at Abp.Authorization.AuthorizationInterceptor.InternalInterceptAsynchronous[TResult](IInvocation invocation)
   at lambda_method1107(Closure , Object )
   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.AwaitableObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeActionMethodAsync>g__Awaited|12_0(ControllerActionInvoker invoker, ValueTask`1 actionResultValueTask)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeNextActionFilterAsync>g__Awaited|10_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)', 53, CAST(N'2021-09-11T15:40:42.5561326' AS DateTime2), NULL, NULL, N'GetAllAsync', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.MultiTenancy.TenantAppService', NULL, NULL, NULL, N'Current user did not login to the application!')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (24, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 241, CAST(N'2021-09-11T15:40:43.1893067' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (25, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 365, CAST(N'2021-09-11T15:40:49.6861885' AS DateTime2), NULL, NULL, N'Authenticate', N'{"model":{"userNameOrEmailAddress":"admin","rememberClient":false}}', N'ProvincesManagement.Controllers.TokenAuthController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (26, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 244, CAST(N'2021-09-11T15:40:50.5540815' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (27, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 171, CAST(N'2021-09-11T15:40:52.6849246' AS DateTime2), NULL, NULL, N'GetAllAsync', N'{"input":{"keyword":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Roles.RoleAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (28, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 20, CAST(N'2021-09-11T15:40:55.8543981' AS DateTime2), NULL, NULL, N'GetAllAsync', N'{"input":{"keyword":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Roles.RoleAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (29, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 18, CAST(N'2021-09-11T15:40:56.6563114' AS DateTime2), NULL, NULL, N'GetAllAsync', N'{"input":{"keyword":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Roles.RoleAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (30, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 10, CAST(N'2021-09-11T15:40:57.6668606' AS DateTime2), NULL, NULL, N'GetAllPermissions', N'{}', N'ProvincesManagement.Roles.RoleAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (31, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 3, CAST(N'2021-09-11T15:41:37.0488146' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (32, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 4, CAST(N'2021-09-11T15:41:58.1143794' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (33, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 5406, CAST(N'2021-09-11T15:46:37.1364061' AS DateTime2), NULL, NULL, N'CreateOrEdit', N'{"input":{"country":"India","id":0}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (34, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 5, CAST(N'2021-09-11T15:47:59.6773760' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (35, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 204, CAST(N'2021-09-11T15:48:24.3822569' AS DateTime2), NULL, NULL, N'GetAllAsync', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.MultiTenancy.TenantAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (36, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 24, CAST(N'2021-09-11T15:48:41.2529932' AS DateTime2), NULL, NULL, N'GetAllAsync', N'{"input":{"keyword":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Roles.RoleAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (37, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 5, CAST(N'2021-09-11T15:49:12.7466264' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (38, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 42, CAST(N'2021-09-11T15:49:13.6643217' AS DateTime2), NULL, NULL, N'GetAllAsync', N'{"input":{"keyword":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Roles.RoleAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (39, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 20, CAST(N'2021-09-11T15:49:35.6788174' AS DateTime2), NULL, NULL, N'GetAllAsync', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.MultiTenancy.TenantAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (40, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 9, CAST(N'2021-09-11T15:51:37.7161904' AS DateTime2), NULL, NULL, N'Index', N'{}', N'ProvincesManagement.Web.Host.Controllers.HomeController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (41, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 12, CAST(N'2021-09-11T15:51:38.5770231' AS DateTime2), NULL, NULL, N'SetCookie', N'{}', N'ProvincesManagement.Web.Host.Controllers.AntiForgeryController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (42, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 2, CAST(N'2021-09-11T15:51:38.6765189' AS DateTime2), NULL, NULL, N'SetCookie', N'{}', N'ProvincesManagement.Web.Host.Controllers.AntiForgeryController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (43, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 3374, CAST(N'2021-09-11T15:51:49.9076595' AS DateTime2), NULL, NULL, N'CreateOrEdit', N'{"input":{"countryName":"United States","id":0}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (44, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 23390, CAST(N'2021-09-11T15:53:57.0105513' AS DateTime2), NULL, NULL, N'GetAllAsync', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.MultiTenancy.TenantAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (45, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 9, CAST(N'2021-09-11T15:55:29.0131915' AS DateTime2), NULL, NULL, N'Index', N'{}', N'ProvincesManagement.Web.Host.Controllers.HomeController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (46, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 496, CAST(N'2021-09-11T15:55:31.6933689' AS DateTime2), NULL, NULL, N'SetCookie', N'{}', N'ProvincesManagement.Web.Host.Controllers.AntiForgeryController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (47, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, N'No property or field ''asc'' exists in type ''Country'' (at index 0)', 4083, CAST(N'2021-09-11T15:55:29.4318137' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":"sdf","countryName":null,"sorting":"asc","skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, N'No property or field ''asc'' exists in type ''Country''')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (48, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 5157, CAST(N'2021-09-11T15:55:41.5866753' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (49, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 7023, CAST(N'2021-09-11T15:56:11.7390900' AS DateTime2), NULL, NULL, N'CreateOrEdit', N'{"input":{"countryId":1,"stateName":"Gujarat","id":0}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (50, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 445, CAST(N'2021-09-11T15:56:36.7879043' AS DateTime2), NULL, NULL, N'GetAllAsync', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Users.UserAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (51, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 2347, CAST(N'2021-09-11T15:56:52.1087557' AS DateTime2), NULL, NULL, N'GetAllAsync', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.MultiTenancy.TenantAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (52, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 10, CAST(N'2021-09-11T16:00:02.6241323' AS DateTime2), NULL, NULL, N'Index', N'{}', N'ProvincesManagement.Web.Host.Controllers.HomeController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (53, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 11, CAST(N'2021-09-11T16:00:03.2912287' AS DateTime2), NULL, NULL, N'SetCookie', N'{}', N'ProvincesManagement.Web.Host.Controllers.AntiForgeryController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (54, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 2439, CAST(N'2021-09-11T16:00:08.7347608' AS DateTime2), NULL, NULL, N'GetAllCountries', N'{}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (55, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 9, CAST(N'2021-09-11T16:04:31.4826925' AS DateTime2), NULL, NULL, N'Index', N'{}', N'ProvincesManagement.Web.Host.Controllers.HomeController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (56, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 15, CAST(N'2021-09-11T16:04:32.3779253' AS DateTime2), NULL, NULL, N'SetCookie', N'{}', N'ProvincesManagement.Web.Host.Controllers.AntiForgeryController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (57, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 425, CAST(N'2021-09-11T16:05:10.1035277' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (58, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 80, CAST(N'2021-09-11T16:05:11.0809076' AS DateTime2), NULL, NULL, N'GetAllAsync', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.MultiTenancy.TenantAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (59, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 5, CAST(N'2021-09-11T16:05:26.8087868' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (60, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 13, CAST(N'2021-09-11T16:05:27.3488213' AS DateTime2), NULL, NULL, N'GetAllAsync', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.MultiTenancy.TenantAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (61, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 4, CAST(N'2021-09-11T16:05:41.6094547' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (62, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 14, CAST(N'2021-09-11T16:05:42.1019770' AS DateTime2), NULL, NULL, N'GetAllAsync', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.MultiTenancy.TenantAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (63, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 5, CAST(N'2021-09-11T16:06:23.8265699' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (64, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 47, CAST(N'2021-09-11T16:06:24.1920918' AS DateTime2), NULL, NULL, N'GetAllAsync', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.MultiTenancy.TenantAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (65, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 74, CAST(N'2021-09-11T17:21:40.3192144' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (66, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 13, CAST(N'2021-09-11T17:21:40.7479044' AS DateTime2), NULL, NULL, N'GetAllAsync', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.MultiTenancy.TenantAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (67, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 9, CAST(N'2021-09-13T12:08:19.8939893' AS DateTime2), NULL, NULL, N'Index', N'{}', N'ProvincesManagement.Web.Host.Controllers.HomeController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (68, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 13, CAST(N'2021-09-13T12:08:21.1575158' AS DateTime2), NULL, NULL, N'SetCookie', N'{}', N'ProvincesManagement.Web.Host.Controllers.AntiForgeryController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (69, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 418, CAST(N'2021-09-13T12:10:09.8827779' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (70, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 708, CAST(N'2021-09-13T12:10:19.1530074' AS DateTime2), NULL, NULL, N'Authenticate', N'{"model":{"userNameOrEmailAddress":"admin","rememberClient":false}}', N'ProvincesManagement.Controllers.TokenAuthController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (71, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 200, CAST(N'2021-09-13T12:10:20.7215502' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (72, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 4399, CAST(N'2021-09-13T12:10:25.2906575' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (73, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 60, CAST(N'2021-09-13T12:10:58.9966538' AS DateTime2), NULL, NULL, N'GetCountryForEdit', N'{"input":{"id":1}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (74, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 21562, CAST(N'2021-09-13T12:11:13.6887561' AS DateTime2), NULL, NULL, N'CreateOrEdit', N'{"input":{"countryName":"India","id":null}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (75, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 4, CAST(N'2021-09-13T12:12:05.2248203' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (76, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 5020, CAST(N'2021-09-13T12:12:05.8098123' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (77, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 9, CAST(N'2021-09-13T12:12:15.4974216' AS DateTime2), NULL, NULL, N'GetCountryForEdit', N'{"input":{"id":1}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (78, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 161, CAST(N'2021-09-13T12:12:18.0647250' AS DateTime2), NULL, NULL, N'CreateOrEdit', N'{"input":{"countryName":"India","id":1}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (79, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 3, CAST(N'2021-09-13T12:13:04.3555331' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (80, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 61, CAST(N'2021-09-13T12:13:04.7886532' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (81, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 28, CAST(N'2021-09-13T12:13:08.1545382' AS DateTime2), NULL, NULL, N'GetCountryForEdit', N'{"input":{"id":1}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (82, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 4, CAST(N'2021-09-13T12:13:29.9707312' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (83, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 22, CAST(N'2021-09-13T12:13:30.6024048' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (84, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 11, CAST(N'2021-09-13T12:13:39.9930184' AS DateTime2), NULL, NULL, N'GetCountryForEdit', N'{"input":{"id":1}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (85, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 4, CAST(N'2021-09-13T12:14:07.6015040' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (86, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 116, CAST(N'2021-09-13T12:14:08.0616352' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (87, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 8, CAST(N'2021-09-13T12:14:09.1807876' AS DateTime2), NULL, NULL, N'GetCountryForEdit', N'{"input":{"id":1}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (88, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 34, CAST(N'2021-09-13T12:14:14.8071652' AS DateTime2), NULL, NULL, N'CreateOrEdit', N'{"input":{"countryName":"India343w4","id":1}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (89, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 12, CAST(N'2021-09-13T12:14:14.8917524' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (90, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 1179, CAST(N'2021-09-13T12:14:34.8879041' AS DateTime2), NULL, NULL, N'GetAllAsync', N'{"input":{"keyword":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Roles.RoleAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (91, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 41, CAST(N'2021-09-13T12:14:43.4836744' AS DateTime2), NULL, NULL, N'GetAllAsync', N'{"input":{"keyword":"user","skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Roles.RoleAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (92, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 22, CAST(N'2021-09-13T12:14:45.0885463' AS DateTime2), NULL, NULL, N'GetAllAsync', N'{"input":{"keyword":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Roles.RoleAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (93, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 25, CAST(N'2021-09-13T12:14:49.0145566' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (94, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 3, CAST(N'2021-09-13T12:15:25.3551757' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (95, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 10, CAST(N'2021-09-13T12:15:25.7827099' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (96, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 3, CAST(N'2021-09-13T12:15:31.4184457' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (97, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 17, CAST(N'2021-09-13T12:15:32.5879703' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (98, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 7, CAST(N'2021-09-13T12:16:10.4733889' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (99, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 6, CAST(N'2021-09-13T12:16:19.7275663' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (100, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 16, CAST(N'2021-09-13T12:16:20.0888540' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (101, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 42, CAST(N'2021-09-13T12:16:26.4886073' AS DateTime2), NULL, NULL, N'CreateOrEdit', N'{"input":{"countryName":"asdsa","id":null}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (102, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 10, CAST(N'2021-09-13T12:16:26.5765369' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (103, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 78, CAST(N'2021-09-13T12:16:29.5221173' AS DateTime2), NULL, NULL, N'CreateOrEdit', N'{"input":{"countryName":"adsfadsf","id":null}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (104, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 11, CAST(N'2021-09-13T12:16:29.6633251' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (105, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 24, CAST(N'2021-09-13T12:16:32.4204488' AS DateTime2), NULL, NULL, N'CreateOrEdit', N'{"input":{"countryName":"jtwrjsdfhsgdf","id":null}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (106, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 9, CAST(N'2021-09-13T12:16:32.5440594' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (107, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 26, CAST(N'2021-09-13T12:16:35.4599342' AS DateTime2), NULL, NULL, N'CreateOrEdit', N'{"input":{"countryName":"srtjnerbhsdfbv","id":null}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (108, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 22, CAST(N'2021-09-13T12:16:35.5210729' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (109, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 27, CAST(N'2021-09-13T12:16:38.4991848' AS DateTime2), NULL, NULL, N'CreateOrEdit', N'{"input":{"countryName":"ksfgkmdfgnbdfb","id":null}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (110, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 9, CAST(N'2021-09-13T12:16:38.5744191' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (111, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 24, CAST(N'2021-09-13T12:16:42.2960348' AS DateTime2), NULL, NULL, N'CreateOrEdit', N'{"input":{"countryName":"afdjadfjasdfj","id":null}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (112, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 9, CAST(N'2021-09-13T12:16:42.3584341' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (113, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 24, CAST(N'2021-09-13T12:16:45.4870986' AS DateTime2), NULL, NULL, N'CreateOrEdit', N'{"input":{"countryName":"rtujwerfhbdfb","id":null}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (114, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 9, CAST(N'2021-09-13T12:16:45.5492033' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (115, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 23, CAST(N'2021-09-13T12:16:48.7274669' AS DateTime2), NULL, NULL, N'CreateOrEdit', N'{"input":{"countryName":"lsdfksfghdfh","id":null}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (116, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 9, CAST(N'2021-09-13T12:16:48.7835439' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (117, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 25, CAST(N'2021-09-13T12:16:52.0200646' AS DateTime2), NULL, NULL, N'CreateOrEdit', N'{"input":{"countryName":"qerhwerbgvefd","id":null}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (118, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 8, CAST(N'2021-09-13T12:16:52.0826770' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (119, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 12, CAST(N'2021-09-13T12:16:54.5790497' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":10,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (120, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 8, CAST(N'2021-09-13T12:16:56.3823100' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (121, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 3, CAST(N'2021-09-13T12:18:08.4703578' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (122, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 2396, CAST(N'2021-09-13T12:18:09.0229474' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (123, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 3, CAST(N'2021-09-13T12:18:41.8442867' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (124, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 10, CAST(N'2021-09-13T12:18:42.3824149' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (125, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 3, CAST(N'2021-09-13T12:18:55.2896906' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (126, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 15, CAST(N'2021-09-13T12:18:55.7739792' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (127, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 24, CAST(N'2021-09-13T12:19:06.0186506' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":"United States","sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (128, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 10, CAST(N'2021-09-13T12:19:07.8826072' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (129, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 11, CAST(N'2021-09-13T12:19:13.5037057' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (130, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 10, CAST(N'2021-09-14T10:49:40.3428402' AS DateTime2), NULL, NULL, N'Index', N'{}', N'ProvincesManagement.Web.Host.Controllers.HomeController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (131, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 10, CAST(N'2021-09-14T10:49:40.3428465' AS DateTime2), NULL, NULL, N'Index', N'{}', N'ProvincesManagement.Web.Host.Controllers.HomeController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (132, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 12, CAST(N'2021-09-14T10:49:41.1953631' AS DateTime2), NULL, NULL, N'SetCookie', N'{}', N'ProvincesManagement.Web.Host.Controllers.AntiForgeryController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (133, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 2, CAST(N'2021-09-14T11:53:50.3011526' AS DateTime2), NULL, NULL, N'SetCookie', N'{}', N'ProvincesManagement.Web.Host.Controllers.AntiForgeryController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (134, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 1471, CAST(N'2021-09-14T14:44:41.7683071' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (135, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 1365, CAST(N'2021-09-14T14:44:48.3660908' AS DateTime2), NULL, NULL, N'Authenticate', N'{"model":{"userNameOrEmailAddress":"admin","rememberClient":false}}', N'ProvincesManagement.Controllers.TokenAuthController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (136, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 289, CAST(N'2021-09-14T14:44:50.3139954' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (137, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 4, CAST(N'2021-09-14T14:50:15.7276293' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (138, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 4, CAST(N'2021-09-14T14:50:42.0186351' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (139, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 5, CAST(N'2021-09-14T14:50:57.9990284' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (140, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 33164, CAST(N'2021-09-14T14:50:59.8772461' AS DateTime2), NULL, NULL, N'GetAllCountries', N'{}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (141, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 9379, CAST(N'2021-09-14T14:51:24.4055989' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"stateName":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (142, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 3, CAST(N'2021-09-14T14:52:44.2237182' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (143, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 8, CAST(N'2021-09-14T14:52:45.0659793' AS DateTime2), NULL, NULL, N'GetAllCountries', N'{}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (144, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 4, CAST(N'2021-09-14T14:53:32.6649312' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (145, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 18, CAST(N'2021-09-14T14:53:33.0789957' AS DateTime2), NULL, NULL, N'GetAllCountries', N'{}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (146, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 61, CAST(N'2021-09-14T14:53:33.0951396' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"stateName":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (147, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 4, CAST(N'2021-09-14T14:53:48.3769173' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (148, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 12, CAST(N'2021-09-14T14:53:48.8256066' AS DateTime2), NULL, NULL, N'GetAllCountries', N'{}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (149, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 17, CAST(N'2021-09-14T14:53:48.8371441' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"stateName":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (150, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 3, CAST(N'2021-09-14T14:54:31.7419904' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (151, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 38, CAST(N'2021-09-14T14:54:32.2226353' AS DateTime2), NULL, NULL, N'GetAllCountries', N'{}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (152, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 29, CAST(N'2021-09-14T14:54:32.2314640' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"stateName":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (153, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 4, CAST(N'2021-09-14T14:55:22.7877431' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (154, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 8, CAST(N'2021-09-14T14:55:23.1901343' AS DateTime2), NULL, NULL, N'GetAllCountries', N'{}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (155, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 14, CAST(N'2021-09-14T14:55:23.2304272' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"stateName":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (156, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 23, CAST(N'2021-09-14T14:56:54.6926833' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (157, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 10, CAST(N'2021-09-14T14:56:55.5935859' AS DateTime2), NULL, NULL, N'GetAllCountries', N'{}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (158, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 18, CAST(N'2021-09-14T14:56:56.2537112' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"stateName":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (159, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 9, CAST(N'2021-09-14T14:58:52.3920637' AS DateTime2), NULL, NULL, N'Index', N'{}', N'ProvincesManagement.Web.Host.Controllers.HomeController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (160, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 11, CAST(N'2021-09-14T14:58:53.1988726' AS DateTime2), NULL, NULL, N'SetCookie', N'{}', N'ProvincesManagement.Web.Host.Controllers.AntiForgeryController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (161, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 640, CAST(N'2021-09-14T14:58:52.7514941' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (162, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 34, CAST(N'2021-09-14T14:58:54.0436413' AS DateTime2), NULL, NULL, N'GetAllCountries', N'{}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (163, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 5, CAST(N'2021-09-14T14:59:04.0895668' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (164, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 28, CAST(N'2021-09-14T14:59:04.6970342' AS DateTime2), NULL, NULL, N'GetAllCountries', N'{}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (165, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 4, CAST(N'2021-09-14T14:59:15.3818703' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (166, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 11, CAST(N'2021-09-14T14:59:16.0036248' AS DateTime2), NULL, NULL, N'GetAllCountries', N'{}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (167, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 475, CAST(N'2021-09-14T14:59:19.0497436' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"stateName":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (168, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 9, CAST(N'2021-09-14T14:59:20.8859378' AS DateTime2), NULL, NULL, N'GetAllCountries', N'{}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (169, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 858, CAST(N'2021-09-14T14:59:41.0848569' AS DateTime2), NULL, NULL, N'CreateOrEdit', N'{"input":{"countryId":2,"stateName":"California","id":null}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (170, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 18, CAST(N'2021-09-14T14:59:43.7730895' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"stateName":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (171, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 11, CAST(N'2021-09-14T14:59:48.0120590' AS DateTime2), NULL, NULL, N'GetAllCountries', N'{}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (172, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 35, CAST(N'2021-09-14T14:59:48.0238429' AS DateTime2), NULL, NULL, N'GetStateForEdit', N'{"input":{"id":2}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (173, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 4, CAST(N'2021-09-14T15:00:13.6251234' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (174, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 17, CAST(N'2021-09-14T15:00:14.2881998' AS DateTime2), NULL, NULL, N'GetAllCountries', N'{}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (175, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 3, CAST(N'2021-09-14T15:00:27.6725996' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (176, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 13, CAST(N'2021-09-14T15:00:28.1220336' AS DateTime2), NULL, NULL, N'GetAllCountries', N'{}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (177, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 18, CAST(N'2021-09-14T15:00:36.2788544' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"stateName":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (178, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 6, CAST(N'2021-09-14T15:00:46.1397330' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (179, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 18, CAST(N'2021-09-14T15:00:46.6250980' AS DateTime2), NULL, NULL, N'GetAllCountries', N'{}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (180, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 18, CAST(N'2021-09-14T15:00:46.6426063' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"stateName":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (181, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 11, CAST(N'2021-09-14T15:00:48.1942774' AS DateTime2), NULL, NULL, N'GetAllCountries', N'{}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (182, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 14, CAST(N'2021-09-14T15:00:48.1947475' AS DateTime2), NULL, NULL, N'GetStateForEdit', N'{"input":{"id":2}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (183, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 10, CAST(N'2021-09-14T15:00:51.5037381' AS DateTime2), NULL, NULL, N'GetAllCountries', N'{}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (184, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 30, CAST(N'2021-09-14T15:00:51.5133759' AS DateTime2), NULL, NULL, N'GetStateForEdit', N'{"input":{"id":1}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (185, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 49, CAST(N'2021-09-14T15:00:58.3146204' AS DateTime2), NULL, NULL, N'Delete', N'{"input":{"id":1}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (186, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 9, CAST(N'2021-09-14T15:00:58.4119828' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"stateName":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (187, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 54, CAST(N'2021-09-14T15:01:05.3450360' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"stateName":"dsds","countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (188, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 14, CAST(N'2021-09-14T15:01:05.5970641' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"stateName":"dsds","countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (189, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 14, CAST(N'2021-09-14T15:01:07.7672868' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"stateName":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (190, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 4, CAST(N'2021-09-14T15:07:18.6891407' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (191, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 8, CAST(N'2021-09-14T15:07:19.1747311' AS DateTime2), NULL, NULL, N'GetAllCountries', N'{}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (192, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 11, CAST(N'2021-09-14T15:07:19.2156513' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"stateName":null,"countryName":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (193, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 83, CAST(N'2021-09-14T17:08:03.1297930' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10130, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 8, CAST(N'2021-09-14T18:18:28.6379253' AS DateTime2), NULL, NULL, N'Index', N'{}', N'ProvincesManagement.Web.Host.Controllers.HomeController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10131, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 10, CAST(N'2021-09-14T18:18:29.6607650' AS DateTime2), NULL, NULL, N'SetCookie', N'{}', N'ProvincesManagement.Web.Host.Controllers.AntiForgeryController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10132, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'127.0.0.1', NULL, NULL, NULL, 10, CAST(N'2021-09-14T18:46:39.1041040' AS DateTime2), NULL, NULL, N'Index', N'{}', N'ProvincesManagement.Web.Host.Controllers.HomeController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10133, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'127.0.0.1', NULL, NULL, NULL, 1, CAST(N'2021-09-14T18:46:39.4465917' AS DateTime2), NULL, NULL, N'Index', N'{}', N'ProvincesManagement.Web.Host.Controllers.HomeController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10134, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'127.0.0.1', NULL, NULL, NULL, 11, CAST(N'2021-09-14T18:46:39.9846793' AS DateTime2), NULL, NULL, N'SetCookie', N'{}', N'ProvincesManagement.Web.Host.Controllers.AntiForgeryController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10135, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'127.0.0.1', NULL, NULL, NULL, 1, CAST(N'2021-09-14T18:46:40.3381418' AS DateTime2), NULL, NULL, N'SetCookie', N'{}', N'ProvincesManagement.Web.Host.Controllers.AntiForgeryController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10136, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 503, CAST(N'2021-09-14T18:50:03.0030530' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10137, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, N'Abp.UI.UserFriendlyException: Login failed!
   at ProvincesManagement.Controllers.TokenAuthController.GetLoginResultAsync(String usernameOrEmailAddress, String password, String tenancyName) in F:\Projects\MIX\ProvincesManagement\6.4.0\aspnet-core\src\ProvincesManagement.Web.Core\Controllers\TokenAuthController.cs:line 195
   at ProvincesManagement.Controllers.TokenAuthController.Authenticate(AuthenticateModel model) in F:\Projects\MIX\ProvincesManagement\6.4.0\aspnet-core\src\ProvincesManagement.Web.Core\Controllers\TokenAuthController.cs:line 55
   at lambda_method1217(Closure , Object )
   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.AwaitableObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeActionMethodAsync>g__Awaited|12_0(ControllerActionInvoker invoker, ValueTask`1 actionResultValueTask)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeNextActionFilterAsync>g__Awaited|10_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)

UserFriendlyException.Code:0
UserFriendlyException.Details:Invalid user name or password', 738, CAST(N'2021-09-14T18:50:08.7255754' AS DateTime2), NULL, NULL, N'Authenticate', N'{"model":{"userNameOrEmailAddress":"admin","rememberClient":false}}', N'ProvincesManagement.Controllers.TokenAuthController', NULL, NULL, NULL, N'Login failed!')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10138, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 1134, CAST(N'2021-09-14T18:50:19.7213064' AS DateTime2), NULL, NULL, N'Authenticate', N'{"model":{"userNameOrEmailAddress":"admin","rememberClient":false}}', N'ProvincesManagement.Controllers.TokenAuthController', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10139, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 196, CAST(N'2021-09-14T18:50:22.7088061' AS DateTime2), NULL, NULL, N'GetAll', N'{}', N'Abp.AspNetCore.Mvc.Controllers.AbpUserConfigurationController', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10140, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 62, CAST(N'2021-09-14T18:50:26.0106240' AS DateTime2), NULL, NULL, N'GetAllCountries', N'{}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10141, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 6178, CAST(N'2021-09-14T18:50:26.0629435' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10142, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 11572, CAST(N'2021-09-14T18:50:37.5565251' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":"unites","sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10143, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 10567, CAST(N'2021-09-14T18:50:52.6710196' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":"united","sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10144, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 16, CAST(N'2021-09-14T18:51:06.4361752' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":"California","sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10145, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 11, CAST(N'2021-09-14T18:51:07.0328505' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":"California","sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10146, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 11, CAST(N'2021-09-14T18:51:07.7685905' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":"California","sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10147, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 11, CAST(N'2021-09-14T18:51:07.9450643' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":"California","sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10148, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 13, CAST(N'2021-09-14T18:51:09.1346107' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":"Californiadfgsdfg","sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10149, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 16, CAST(N'2021-09-14T18:51:12.5377835' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":"sxdfg","sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10150, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 10, CAST(N'2021-09-14T18:51:13.8909940' AS DateTime2), NULL, NULL, N'GetAll', N'{"input":{"filter":null,"sorting":null,"skipCount":0,"maxResultCount":10}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10151, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 16, CAST(N'2021-09-14T18:51:15.4553073' AS DateTime2), NULL, NULL, N'GetAllCountries', N'{}', N'ProvincesManagement.Countries.CountryAppService', NULL, 1, NULL, NULL)
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue], [ExceptionMessage]) VALUES (10152, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, NULL, NULL, 49, CAST(N'2021-09-14T18:51:15.4712800' AS DateTime2), NULL, NULL, N'GetStateForEdit', N'{"input":{"id":2}}', N'ProvincesManagement.States.StateAppService', NULL, 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[AbpAuditLogs] OFF
GO
SET IDENTITY_INSERT [dbo].[AbpEditions] ON 
GO
INSERT [dbo].[AbpEditions] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name]) VALUES (1, CAST(N'2021-09-10T11:28:48.6457155' AS DateTime2), NULL, NULL, NULL, N'Standard', 0, NULL, NULL, N'Standard')
GO
SET IDENTITY_INSERT [dbo].[AbpEditions] OFF
GO
SET IDENTITY_INSERT [dbo].[AbpEntityChanges] ON 
GO
INSERT [dbo].[AbpEntityChanges] ([Id], [ChangeTime], [ChangeType], [EntityChangeSetId], [EntityId], [EntityTypeFullName], [TenantId]) VALUES (1, CAST(N'2021-09-11T15:46:39.1351842' AS DateTime2), 0, 1, N'1', N'ProvincesManagement.Countries.Country', NULL)
GO
INSERT [dbo].[AbpEntityChanges] ([Id], [ChangeTime], [ChangeType], [EntityChangeSetId], [EntityId], [EntityTypeFullName], [TenantId]) VALUES (2, CAST(N'2021-09-11T15:51:51.4828701' AS DateTime2), 0, 2, N'2', N'ProvincesManagement.Countries.Country', NULL)
GO
INSERT [dbo].[AbpEntityChanges] ([Id], [ChangeTime], [ChangeType], [EntityChangeSetId], [EntityId], [EntityTypeFullName], [TenantId]) VALUES (3, CAST(N'2021-09-11T15:56:16.1406102' AS DateTime2), 0, 3, N'1', N'ProvincesManagement.States.State', NULL)
GO
INSERT [dbo].[AbpEntityChanges] ([Id], [ChangeTime], [ChangeType], [EntityChangeSetId], [EntityId], [EntityTypeFullName], [TenantId]) VALUES (4, CAST(N'2021-09-13T12:12:18.0873584' AS DateTime2), 1, 4, N'1', N'ProvincesManagement.Countries.Country', NULL)
GO
INSERT [dbo].[AbpEntityChanges] ([Id], [ChangeTime], [ChangeType], [EntityChangeSetId], [EntityId], [EntityTypeFullName], [TenantId]) VALUES (5, CAST(N'2021-09-13T12:14:14.8153756' AS DateTime2), 1, 5, N'1', N'ProvincesManagement.Countries.Country', NULL)
GO
INSERT [dbo].[AbpEntityChanges] ([Id], [ChangeTime], [ChangeType], [EntityChangeSetId], [EntityId], [EntityTypeFullName], [TenantId]) VALUES (6, CAST(N'2021-09-13T12:16:26.4912298' AS DateTime2), 0, 6, N'3', N'ProvincesManagement.Countries.Country', NULL)
GO
INSERT [dbo].[AbpEntityChanges] ([Id], [ChangeTime], [ChangeType], [EntityChangeSetId], [EntityId], [EntityTypeFullName], [TenantId]) VALUES (7, CAST(N'2021-09-13T12:16:29.5224422' AS DateTime2), 0, 7, N'4', N'ProvincesManagement.Countries.Country', NULL)
GO
INSERT [dbo].[AbpEntityChanges] ([Id], [ChangeTime], [ChangeType], [EntityChangeSetId], [EntityId], [EntityTypeFullName], [TenantId]) VALUES (8, CAST(N'2021-09-13T12:16:32.4208934' AS DateTime2), 0, 8, N'5', N'ProvincesManagement.Countries.Country', NULL)
GO
INSERT [dbo].[AbpEntityChanges] ([Id], [ChangeTime], [ChangeType], [EntityChangeSetId], [EntityId], [EntityTypeFullName], [TenantId]) VALUES (9, CAST(N'2021-09-13T12:16:35.4602131' AS DateTime2), 0, 9, N'6', N'ProvincesManagement.Countries.Country', NULL)
GO
INSERT [dbo].[AbpEntityChanges] ([Id], [ChangeTime], [ChangeType], [EntityChangeSetId], [EntityId], [EntityTypeFullName], [TenantId]) VALUES (10, CAST(N'2021-09-13T12:16:38.4994579' AS DateTime2), 0, 10, N'7', N'ProvincesManagement.Countries.Country', NULL)
GO
INSERT [dbo].[AbpEntityChanges] ([Id], [ChangeTime], [ChangeType], [EntityChangeSetId], [EntityId], [EntityTypeFullName], [TenantId]) VALUES (11, CAST(N'2021-09-13T12:16:42.2963026' AS DateTime2), 0, 11, N'8', N'ProvincesManagement.Countries.Country', NULL)
GO
INSERT [dbo].[AbpEntityChanges] ([Id], [ChangeTime], [ChangeType], [EntityChangeSetId], [EntityId], [EntityTypeFullName], [TenantId]) VALUES (12, CAST(N'2021-09-13T12:16:45.4873889' AS DateTime2), 0, 12, N'9', N'ProvincesManagement.Countries.Country', NULL)
GO
INSERT [dbo].[AbpEntityChanges] ([Id], [ChangeTime], [ChangeType], [EntityChangeSetId], [EntityId], [EntityTypeFullName], [TenantId]) VALUES (13, CAST(N'2021-09-13T12:16:48.7277588' AS DateTime2), 0, 13, N'10', N'ProvincesManagement.Countries.Country', NULL)
GO
INSERT [dbo].[AbpEntityChanges] ([Id], [ChangeTime], [ChangeType], [EntityChangeSetId], [EntityId], [EntityTypeFullName], [TenantId]) VALUES (14, CAST(N'2021-09-13T12:16:52.0203833' AS DateTime2), 0, 14, N'11', N'ProvincesManagement.Countries.Country', NULL)
GO
INSERT [dbo].[AbpEntityChanges] ([Id], [ChangeTime], [ChangeType], [EntityChangeSetId], [EntityId], [EntityTypeFullName], [TenantId]) VALUES (15, CAST(N'2021-09-14T14:59:41.0885499' AS DateTime2), 0, 15, N'2', N'ProvincesManagement.States.State', NULL)
GO
INSERT [dbo].[AbpEntityChanges] ([Id], [ChangeTime], [ChangeType], [EntityChangeSetId], [EntityId], [EntityTypeFullName], [TenantId]) VALUES (16, CAST(N'2021-09-14T15:00:58.3468023' AS DateTime2), 2, 16, N'1', N'ProvincesManagement.States.State', NULL)
GO
SET IDENTITY_INSERT [dbo].[AbpEntityChanges] OFF
GO
SET IDENTITY_INSERT [dbo].[AbpEntityChangeSets] ON 
GO
INSERT [dbo].[AbpEntityChangeSets] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [ExtensionData], [ImpersonatorTenantId], [ImpersonatorUserId], [Reason], [TenantId], [UserId]) VALUES (1, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, CAST(N'2021-09-11T15:46:42.4920962' AS DateTime2), NULL, NULL, NULL, N'https://localhost:44311/api/services/app/Country/CreateOrEdit', NULL, 1)
GO
INSERT [dbo].[AbpEntityChangeSets] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [ExtensionData], [ImpersonatorTenantId], [ImpersonatorUserId], [Reason], [TenantId], [UserId]) VALUES (2, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, CAST(N'2021-09-11T15:51:53.2372159' AS DateTime2), NULL, NULL, NULL, N'https://localhost:44311/api/services/app/Country/CreateOrEdit', NULL, 1)
GO
INSERT [dbo].[AbpEntityChangeSets] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [ExtensionData], [ImpersonatorTenantId], [ImpersonatorUserId], [Reason], [TenantId], [UserId]) VALUES (3, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, CAST(N'2021-09-11T15:56:18.1065136' AS DateTime2), NULL, NULL, NULL, N'https://localhost:44311/api/services/app/State/CreateOrEdit', NULL, 1)
GO
INSERT [dbo].[AbpEntityChangeSets] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [ExtensionData], [ImpersonatorTenantId], [ImpersonatorUserId], [Reason], [TenantId], [UserId]) VALUES (4, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, CAST(N'2021-09-13T12:12:18.1670364' AS DateTime2), NULL, NULL, NULL, N'https://localhost:44311/api/services/app/Country/CreateOrEdit', NULL, 1)
GO
INSERT [dbo].[AbpEntityChangeSets] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [ExtensionData], [ImpersonatorTenantId], [ImpersonatorUserId], [Reason], [TenantId], [UserId]) VALUES (5, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, CAST(N'2021-09-13T12:14:14.8232534' AS DateTime2), NULL, NULL, NULL, N'https://localhost:44311/api/services/app/Country/CreateOrEdit', NULL, 1)
GO
INSERT [dbo].[AbpEntityChangeSets] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [ExtensionData], [ImpersonatorTenantId], [ImpersonatorUserId], [Reason], [TenantId], [UserId]) VALUES (6, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, CAST(N'2021-09-13T12:16:26.5119308' AS DateTime2), NULL, NULL, NULL, N'https://localhost:44311/api/services/app/Country/CreateOrEdit', NULL, 1)
GO
INSERT [dbo].[AbpEntityChangeSets] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [ExtensionData], [ImpersonatorTenantId], [ImpersonatorUserId], [Reason], [TenantId], [UserId]) VALUES (7, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, CAST(N'2021-09-13T12:16:29.5345750' AS DateTime2), NULL, NULL, NULL, N'https://localhost:44311/api/services/app/Country/CreateOrEdit', NULL, 1)
GO
INSERT [dbo].[AbpEntityChangeSets] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [ExtensionData], [ImpersonatorTenantId], [ImpersonatorUserId], [Reason], [TenantId], [UserId]) VALUES (8, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, CAST(N'2021-09-13T12:16:32.4307365' AS DateTime2), NULL, NULL, NULL, N'https://localhost:44311/api/services/app/Country/CreateOrEdit', NULL, 1)
GO
INSERT [dbo].[AbpEntityChangeSets] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [ExtensionData], [ImpersonatorTenantId], [ImpersonatorUserId], [Reason], [TenantId], [UserId]) VALUES (9, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, CAST(N'2021-09-13T12:16:35.4715075' AS DateTime2), NULL, NULL, NULL, N'https://localhost:44311/api/services/app/Country/CreateOrEdit', NULL, 1)
GO
INSERT [dbo].[AbpEntityChangeSets] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [ExtensionData], [ImpersonatorTenantId], [ImpersonatorUserId], [Reason], [TenantId], [UserId]) VALUES (10, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, CAST(N'2021-09-13T12:16:38.5090980' AS DateTime2), NULL, NULL, NULL, N'https://localhost:44311/api/services/app/Country/CreateOrEdit', NULL, 1)
GO
INSERT [dbo].[AbpEntityChangeSets] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [ExtensionData], [ImpersonatorTenantId], [ImpersonatorUserId], [Reason], [TenantId], [UserId]) VALUES (11, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, CAST(N'2021-09-13T12:16:42.3070681' AS DateTime2), NULL, NULL, NULL, N'https://localhost:44311/api/services/app/Country/CreateOrEdit', NULL, 1)
GO
INSERT [dbo].[AbpEntityChangeSets] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [ExtensionData], [ImpersonatorTenantId], [ImpersonatorUserId], [Reason], [TenantId], [UserId]) VALUES (12, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, CAST(N'2021-09-13T12:16:45.4972401' AS DateTime2), NULL, NULL, NULL, N'https://localhost:44311/api/services/app/Country/CreateOrEdit', NULL, 1)
GO
INSERT [dbo].[AbpEntityChangeSets] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [ExtensionData], [ImpersonatorTenantId], [ImpersonatorUserId], [Reason], [TenantId], [UserId]) VALUES (13, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, CAST(N'2021-09-13T12:16:48.7375878' AS DateTime2), NULL, NULL, NULL, N'https://localhost:44311/api/services/app/Country/CreateOrEdit', NULL, 1)
GO
INSERT [dbo].[AbpEntityChangeSets] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [ExtensionData], [ImpersonatorTenantId], [ImpersonatorUserId], [Reason], [TenantId], [UserId]) VALUES (14, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, CAST(N'2021-09-13T12:16:52.0312984' AS DateTime2), NULL, NULL, NULL, N'https://localhost:44311/api/services/app/Country/CreateOrEdit', NULL, 1)
GO
INSERT [dbo].[AbpEntityChangeSets] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [ExtensionData], [ImpersonatorTenantId], [ImpersonatorUserId], [Reason], [TenantId], [UserId]) VALUES (15, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, CAST(N'2021-09-14T14:59:41.1928010' AS DateTime2), NULL, NULL, NULL, N'https://localhost:44311/api/services/app/State/CreateOrEdit', NULL, 1)
GO
INSERT [dbo].[AbpEntityChangeSets] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [ExtensionData], [ImpersonatorTenantId], [ImpersonatorUserId], [Reason], [TenantId], [UserId]) VALUES (16, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, CAST(N'2021-09-14T15:00:58.3499762' AS DateTime2), NULL, NULL, NULL, N'https://localhost:44311/api/services/app/State/Delete?Id=1', NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[AbpEntityChangeSets] OFF
GO
SET IDENTITY_INSERT [dbo].[AbpEntityPropertyChanges] ON 
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (1, 1, N'"2021-09-11T15:46:39.1351842+05:30"', NULL, N'CreationTime', N'System.DateTime', NULL, N'EBCBFE8F79E708AE854A1F61EA719D74', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (2, 1, N'1', NULL, N'CreatorUserId', N'System.Nullable`1[[System.Int64, System.Private.CoreLib, Version=5.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]', NULL, N'C4CA4238A0B923820DCC509A6F75849B', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (3, 2, N'"United States"', NULL, N'CountryName', N'System.String', NULL, N'7C6ECDEDFADBFD4A0035BE412BAF43F9', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (4, 2, N'"2021-09-11T15:51:51.4828701+05:30"', NULL, N'CreationTime', N'System.DateTime', NULL, N'9530C0A820596EC60C64DF2846E88BDC', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (5, 2, N'1', NULL, N'CreatorUserId', N'System.Nullable`1[[System.Int64, System.Private.CoreLib, Version=5.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]', NULL, N'C4CA4238A0B923820DCC509A6F75849B', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (6, 3, N'1', NULL, N'CountryId', N'System.Int32', NULL, N'C4CA4238A0B923820DCC509A6F75849B', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (7, 3, N'"2021-09-11T15:56:16.1406102+05:30"', NULL, N'CreationTime', N'System.DateTime', NULL, N'52F5EEF9D35488D7038DE4B06E7E51F3', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (8, 3, N'1', NULL, N'CreatorUserId', N'System.Nullable`1[[System.Int64, System.Private.CoreLib, Version=5.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]', NULL, N'C4CA4238A0B923820DCC509A6F75849B', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (9, 3, N'"Gujarat"', NULL, N'StateName', N'System.String', NULL, N'47FB2F27AE1EC3ED1B4B308F970AE692', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (10, 4, N'"India"', NULL, N'CountryName', N'System.String', NULL, N'67235353F025821F6255EC7F93ED8732', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (11, 4, N'"2021-09-13T12:12:18.0873584+05:30"', NULL, N'LastModificationTime', N'System.Nullable`1[[System.DateTime, System.Private.CoreLib, Version=5.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]', NULL, N'86D362A4A9BC4561E2663BDDBEE84F44', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (12, 4, N'1', NULL, N'LastModifierUserId', N'System.Nullable`1[[System.Int64, System.Private.CoreLib, Version=5.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]', NULL, N'C4CA4238A0B923820DCC509A6F75849B', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (13, 5, N'"India343w4"', N'"India"', N'CountryName', N'System.String', NULL, N'9373FDCE9AF9B2D9F8405667E8551228', N'67235353F025821F6255EC7F93ED8732')
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (14, 5, N'"2021-09-13T12:14:14.8153756+05:30"', N'"2021-09-13T12:12:18.0873584"', N'LastModificationTime', N'System.Nullable`1[[System.DateTime, System.Private.CoreLib, Version=5.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]', NULL, N'1C960D255EF179AA2B3B262DAFA82EEC', N'FF75CDF2CF67186B2274EDF9A145592A')
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (15, 6, N'"asdsa"', NULL, N'CountryName', N'System.String', NULL, N'BE598E9BBC566E61FA17AA9DE74CC4E2', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (16, 6, N'"2021-09-13T12:16:26.4912298+05:30"', NULL, N'CreationTime', N'System.DateTime', NULL, N'F325701F808EA9B3A22A00C02993CEF4', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (17, 6, N'1', NULL, N'CreatorUserId', N'System.Nullable`1[[System.Int64, System.Private.CoreLib, Version=5.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]', NULL, N'C4CA4238A0B923820DCC509A6F75849B', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (18, 7, N'"adsfadsf"', NULL, N'CountryName', N'System.String', NULL, N'5A75539E052527CFB1991C80E8320F89', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (19, 7, N'"2021-09-13T12:16:29.5224422+05:30"', NULL, N'CreationTime', N'System.DateTime', NULL, N'ECDFE2BD645A59F4F510AE9E06A7542D', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (20, 7, N'1', NULL, N'CreatorUserId', N'System.Nullable`1[[System.Int64, System.Private.CoreLib, Version=5.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]', NULL, N'C4CA4238A0B923820DCC509A6F75849B', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (21, 8, N'"jtwrjsdfhsgdf"', NULL, N'CountryName', N'System.String', NULL, N'421E585C035804CE21B0B006081D58B0', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (22, 8, N'"2021-09-13T12:16:32.4208934+05:30"', NULL, N'CreationTime', N'System.DateTime', NULL, N'BC2C083CDAB8FACEA9B3586A00055071', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (23, 8, N'1', NULL, N'CreatorUserId', N'System.Nullable`1[[System.Int64, System.Private.CoreLib, Version=5.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]', NULL, N'C4CA4238A0B923820DCC509A6F75849B', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (24, 9, N'"srtjnerbhsdfbv"', NULL, N'CountryName', N'System.String', NULL, N'3860752AC0185DC60AF74F466B5E3703', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (25, 9, N'"2021-09-13T12:16:35.4602131+05:30"', NULL, N'CreationTime', N'System.DateTime', NULL, N'B1E03977CF6CD0E0C5755999A15838D1', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (26, 9, N'1', NULL, N'CreatorUserId', N'System.Nullable`1[[System.Int64, System.Private.CoreLib, Version=5.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]', NULL, N'C4CA4238A0B923820DCC509A6F75849B', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (27, 10, N'"ksfgkmdfgnbdfb"', NULL, N'CountryName', N'System.String', NULL, N'3351A15AE7089DECD72EB9DF85A10860', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (28, 10, N'"2021-09-13T12:16:38.4994579+05:30"', NULL, N'CreationTime', N'System.DateTime', NULL, N'AF609297CFD73571BD9BBDA74523F9C4', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (29, 10, N'1', NULL, N'CreatorUserId', N'System.Nullable`1[[System.Int64, System.Private.CoreLib, Version=5.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]', NULL, N'C4CA4238A0B923820DCC509A6F75849B', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (30, 11, N'"afdjadfjasdfj"', NULL, N'CountryName', N'System.String', NULL, N'E72991D7B3815D920BF27BCE6B18F890', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (31, 11, N'"2021-09-13T12:16:42.2963026+05:30"', NULL, N'CreationTime', N'System.DateTime', NULL, N'11454D87E06C4347DD528763F4245293', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (32, 11, N'1', NULL, N'CreatorUserId', N'System.Nullable`1[[System.Int64, System.Private.CoreLib, Version=5.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]', NULL, N'C4CA4238A0B923820DCC509A6F75849B', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (33, 12, N'"rtujwerfhbdfb"', NULL, N'CountryName', N'System.String', NULL, N'1CF1E1E313293E44BEF16F5E8E105B61', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (34, 12, N'"2021-09-13T12:16:45.4873889+05:30"', NULL, N'CreationTime', N'System.DateTime', NULL, N'E49295F381E7BADE29F5EF4D55E76B97', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (35, 12, N'1', NULL, N'CreatorUserId', N'System.Nullable`1[[System.Int64, System.Private.CoreLib, Version=5.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]', NULL, N'C4CA4238A0B923820DCC509A6F75849B', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (36, 13, N'"lsdfksfghdfh"', NULL, N'CountryName', N'System.String', NULL, N'6DC4E91AA48C5F0152A1F253BA779226', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (37, 13, N'"2021-09-13T12:16:48.7277588+05:30"', NULL, N'CreationTime', N'System.DateTime', NULL, N'FD9D8085E1DD19C308750733179CCC82', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (38, 13, N'1', NULL, N'CreatorUserId', N'System.Nullable`1[[System.Int64, System.Private.CoreLib, Version=5.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]', NULL, N'C4CA4238A0B923820DCC509A6F75849B', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (39, 14, N'"qerhwerbgvefd"', NULL, N'CountryName', N'System.String', NULL, N'53A3FB9544C61F6E08A9EDE1AA1F4356', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (40, 14, N'"2021-09-13T12:16:52.0203833+05:30"', NULL, N'CreationTime', N'System.DateTime', NULL, N'06A5F74852CDE7C59AA69AECEA621CBB', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (41, 14, N'1', NULL, N'CreatorUserId', N'System.Nullable`1[[System.Int64, System.Private.CoreLib, Version=5.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]', NULL, N'C4CA4238A0B923820DCC509A6F75849B', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (42, 15, N'2', NULL, N'CountryId', N'System.Int32', NULL, N'C81E728D9D4C2F636F067F89CC14862C', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (43, 15, N'"2021-09-14T14:59:41.0885499+05:30"', NULL, N'CreationTime', N'System.DateTime', NULL, N'01F5405F50007193432557EE0D2F600E', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (44, 15, N'1', NULL, N'CreatorUserId', N'System.Nullable`1[[System.Int64, System.Private.CoreLib, Version=5.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]', NULL, N'C4CA4238A0B923820DCC509A6F75849B', NULL)
GO
INSERT [dbo].[AbpEntityPropertyChanges] ([Id], [EntityChangeId], [NewValue], [OriginalValue], [PropertyName], [PropertyTypeFullName], [TenantId], [NewValueHash], [OriginalValueHash]) VALUES (45, 15, N'"California"', NULL, N'StateName', N'System.String', NULL, N'C3FE602468CBDA880E1D3216EF3E1AE1', NULL)
GO
SET IDENTITY_INSERT [dbo].[AbpEntityPropertyChanges] OFF
GO
SET IDENTITY_INSERT [dbo].[AbpLanguages] ON 
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (1, CAST(N'2021-09-10T11:28:48.8700850' AS DateTime2), NULL, NULL, NULL, N'English', N'famfamfam-flags us', 0, NULL, NULL, N'en', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (2, CAST(N'2021-09-10T11:28:48.8702876' AS DateTime2), NULL, NULL, NULL, N'العربية', N'famfamfam-flags sa', 0, NULL, NULL, N'ar', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (3, CAST(N'2021-09-10T11:28:48.8702884' AS DateTime2), NULL, NULL, NULL, N'German', N'famfamfam-flags de', 0, NULL, NULL, N'de', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (4, CAST(N'2021-09-10T11:28:48.8702886' AS DateTime2), NULL, NULL, NULL, N'Italiano', N'famfamfam-flags it', 0, NULL, NULL, N'it', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (5, CAST(N'2021-09-10T11:28:48.8702887' AS DateTime2), NULL, NULL, NULL, N'فارسی', N'famfamfam-flags ir', 0, NULL, NULL, N'fa', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (6, CAST(N'2021-09-10T11:28:48.8702894' AS DateTime2), NULL, NULL, NULL, N'Français', N'famfamfam-flags fr', 0, NULL, NULL, N'fr', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (7, CAST(N'2021-09-10T11:28:48.8702896' AS DateTime2), NULL, NULL, NULL, N'Português', N'famfamfam-flags br', 0, NULL, NULL, N'pt-BR', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (8, CAST(N'2021-09-10T11:28:48.8702899' AS DateTime2), NULL, NULL, NULL, N'Türkçe', N'famfamfam-flags tr', 0, NULL, NULL, N'tr', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (9, CAST(N'2021-09-10T11:28:48.8702901' AS DateTime2), NULL, NULL, NULL, N'Русский', N'famfamfam-flags ru', 0, NULL, NULL, N'ru', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (10, CAST(N'2021-09-10T11:28:48.8702920' AS DateTime2), NULL, NULL, NULL, N'简体中文', N'famfamfam-flags cn', 0, NULL, NULL, N'zh-Hans', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (11, CAST(N'2021-09-10T11:28:48.8702921' AS DateTime2), NULL, NULL, NULL, N'Español México', N'famfamfam-flags mx', 0, NULL, NULL, N'es-MX', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (12, CAST(N'2021-09-10T11:28:48.8702923' AS DateTime2), NULL, NULL, NULL, N'Nederlands', N'famfamfam-flags nl', 0, NULL, NULL, N'nl', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (13, CAST(N'2021-09-10T11:28:48.8702925' AS DateTime2), NULL, NULL, NULL, N'日本語', N'famfamfam-flags jp', 0, NULL, NULL, N'ja', NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[AbpLanguages] OFF
GO
SET IDENTITY_INSERT [dbo].[AbpPermissions] ON 
GO
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (1, CAST(N'2021-09-10T11:28:49.3650416' AS DateTime2), NULL, N'RolePermissionSetting', 1, N'Pages.Users', NULL, 1, NULL)
GO
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (2, CAST(N'2021-09-10T11:28:49.3894766' AS DateTime2), NULL, N'RolePermissionSetting', 1, N'Pages.Users.Activation', NULL, 1, NULL)
GO
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (3, CAST(N'2021-09-10T11:28:49.3896494' AS DateTime2), NULL, N'RolePermissionSetting', 1, N'Pages.Roles', NULL, 1, NULL)
GO
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (4, CAST(N'2021-09-10T11:28:49.3896907' AS DateTime2), NULL, N'RolePermissionSetting', 1, N'Pages.Tenants', NULL, 1, NULL)
GO
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (5, CAST(N'2021-09-10T11:28:50.6421074' AS DateTime2), NULL, N'RolePermissionSetting', 1, N'Pages.Roles', 1, 2, NULL)
GO
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (6, CAST(N'2021-09-10T11:28:50.6420638' AS DateTime2), NULL, N'RolePermissionSetting', 1, N'Pages.Users.Activation', 1, 2, NULL)
GO
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (7, CAST(N'2021-09-10T11:28:50.6419237' AS DateTime2), NULL, N'RolePermissionSetting', 1, N'Pages.Users', 1, 2, NULL)
GO
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (8, CAST(N'2021-09-11T16:04:30.3623742' AS DateTime2), NULL, N'RolePermissionSetting', 1, N'Pages.Countries', NULL, 1, NULL)
GO
INSERT [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (9, CAST(N'2021-09-11T16:04:30.4178063' AS DateTime2), NULL, N'RolePermissionSetting', 1, N'Pages.States', NULL, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[AbpPermissions] OFF
GO
SET IDENTITY_INSERT [dbo].[AbpRoles] ON 
GO
INSERT [dbo].[AbpRoles] ([Id], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [IsDefault], [IsDeleted], [IsStatic], [LastModificationTime], [LastModifierUserId], [Name], [NormalizedName], [TenantId], [Description]) VALUES (1, N'a953dd05-5e8f-47cb-a81e-39fcfee7e10a', CAST(N'2021-09-10T11:28:49.0990908' AS DateTime2), NULL, NULL, NULL, N'Admin', 1, 0, 1, NULL, NULL, N'Admin', N'ADMIN', NULL, NULL)
GO
INSERT [dbo].[AbpRoles] ([Id], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [IsDefault], [IsDeleted], [IsStatic], [LastModificationTime], [LastModifierUserId], [Name], [NormalizedName], [TenantId], [Description]) VALUES (2, N'fffde1db-ed14-4eb0-8195-9ac532d0f49c', CAST(N'2021-09-10T11:28:50.5911640' AS DateTime2), NULL, NULL, NULL, N'Admin', 0, 0, 1, NULL, NULL, N'Admin', N'ADMIN', 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[AbpRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[AbpSettings] ON 
GO
INSERT [dbo].[AbpSettings] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [UserId], [Value]) VALUES (1, CAST(N'2021-09-10T11:28:50.1984835' AS DateTime2), NULL, NULL, NULL, N'Abp.Net.Mail.DefaultFromAddress', NULL, NULL, N'admin@mydomain.com')
GO
INSERT [dbo].[AbpSettings] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [UserId], [Value]) VALUES (2, CAST(N'2021-09-10T11:28:50.3447189' AS DateTime2), NULL, NULL, NULL, N'Abp.Net.Mail.DefaultFromDisplayName', NULL, NULL, N'mydomain.com mailer')
GO
INSERT [dbo].[AbpSettings] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [UserId], [Value]) VALUES (3, CAST(N'2021-09-10T11:28:50.3515607' AS DateTime2), NULL, NULL, NULL, N'Abp.Localization.DefaultLanguageName', NULL, NULL, N'en')
GO
INSERT [dbo].[AbpSettings] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [UserId], [Value]) VALUES (4, CAST(N'2021-09-11T15:39:43.6519691' AS DateTime2), 1, NULL, NULL, N'Abp.Localization.DefaultLanguageName', NULL, 1, N'null')
GO
SET IDENTITY_INSERT [dbo].[AbpSettings] OFF
GO
SET IDENTITY_INSERT [dbo].[AbpTenants] ON 
GO
INSERT [dbo].[AbpTenants] ([Id], [ConnectionString], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EditionId], [IsActive], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenancyName]) VALUES (1, NULL, CAST(N'2021-09-10T11:28:50.3658985' AS DateTime2), NULL, NULL, NULL, 1, 1, 0, NULL, NULL, N'Default', N'Default')
GO
SET IDENTITY_INSERT [dbo].[AbpTenants] OFF
GO
SET IDENTITY_INSERT [dbo].[AbpUserLoginAttempts] ON 
GO
INSERT [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (1, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, CAST(N'2021-09-11T15:29:26.8857652' AS DateTime2), 1, NULL, NULL, 1, N'admin')
GO
INSERT [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (2, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, CAST(N'2021-09-11T15:40:49.9803225' AS DateTime2), 1, NULL, NULL, 1, N'admin')
GO
INSERT [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (3, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, CAST(N'2021-09-13T12:10:19.5432085' AS DateTime2), 1, NULL, NULL, 1, N'admin')
GO
INSERT [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (4, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, CAST(N'2021-09-14T14:44:49.2777892' AS DateTime2), 1, NULL, NULL, 1, N'admin')
GO
INSERT [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (10004, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, CAST(N'2021-09-14T18:50:09.0988699' AS DateTime2), 3, NULL, NULL, 1, N'admin')
GO
INSERT [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (10005, N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', N'::1', NULL, CAST(N'2021-09-14T18:50:20.1253821' AS DateTime2), 1, NULL, NULL, 1, N'admin')
GO
SET IDENTITY_INSERT [dbo].[AbpUserLoginAttempts] OFF
GO
SET IDENTITY_INSERT [dbo].[AbpUserRoles] ON 
GO
INSERT [dbo].[AbpUserRoles] ([Id], [CreationTime], [CreatorUserId], [RoleId], [TenantId], [UserId]) VALUES (1, CAST(N'2021-09-10T11:28:50.0662957' AS DateTime2), NULL, 1, NULL, 1)
GO
INSERT [dbo].[AbpUserRoles] ([Id], [CreationTime], [CreatorUserId], [RoleId], [TenantId], [UserId]) VALUES (2, CAST(N'2021-09-10T11:28:50.6743249' AS DateTime2), NULL, 2, 1, 2)
GO
SET IDENTITY_INSERT [dbo].[AbpUserRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[AbpUsers] ON 
GO
INSERT [dbo].[AbpUsers] ([Id], [AccessFailedCount], [AuthenticationSource], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [EmailConfirmationCode], [IsActive], [IsDeleted], [IsEmailConfirmed], [IsLockoutEnabled], [IsPhoneNumberConfirmed], [IsTwoFactorEnabled], [LastModificationTime], [LastModifierUserId], [LockoutEndDateUtc], [Name], [NormalizedEmailAddress], [NormalizedUserName], [Password], [PasswordResetCode], [PhoneNumber], [SecurityStamp], [Surname], [TenantId], [UserName]) VALUES (1, 0, NULL, N'384635aa-3f10-41f7-b826-d46b046890f5', CAST(N'2021-09-10T11:28:49.7950287' AS DateTime2), NULL, NULL, NULL, N'admin@aspnetboilerplate.com', NULL, 1, 0, 1, 0, 0, 0, CAST(N'2021-09-14T18:50:19.7544049' AS DateTime2), NULL, NULL, N'admin', N'ADMIN@ASPNETBOILERPLATE.COM', N'ADMIN', N'AQAAAAEAACcQAAAAEJ939/qrQ7Azg2bXru1LqmtR2a5MEp284hpnbklweuKXNsmVSe5FvCZsZKLQW/ZOFg==', NULL, NULL, N'9c99a5a8-362b-6018-17b2-39fee0765cc4', N'admin', NULL, N'admin')
GO
INSERT [dbo].[AbpUsers] ([Id], [AccessFailedCount], [AuthenticationSource], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [EmailConfirmationCode], [IsActive], [IsDeleted], [IsEmailConfirmed], [IsLockoutEnabled], [IsPhoneNumberConfirmed], [IsTwoFactorEnabled], [LastModificationTime], [LastModifierUserId], [LockoutEndDateUtc], [Name], [NormalizedEmailAddress], [NormalizedUserName], [Password], [PasswordResetCode], [PhoneNumber], [SecurityStamp], [Surname], [TenantId], [UserName]) VALUES (2, 0, NULL, N'b2456e56-e710-4891-a5f2-63eeb141aea7', CAST(N'2021-09-10T11:28:50.6605943' AS DateTime2), NULL, NULL, NULL, N'admin@defaulttenant.com', NULL, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, N'admin', N'ADMIN@DEFAULTTENANT.COM', N'ADMIN', N'AQAAAAEAACcQAAAAEOHX8sXmh2ti3MwzCYVowUO0fpcuNwWiZ1rqe1+b2h9KH7mez5iHGqz6JkRqDvRujQ==', NULL, NULL, N'7bc426b0-6e7e-6f82-8a5f-39fee0766024', N'admin', 1, N'admin')
GO
SET IDENTITY_INSERT [dbo].[AbpUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[AppCountries] ON 
GO
INSERT [dbo].[AppCountries] ([Id], [CountryName], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId]) VALUES (1, N'India343w4', CAST(N'2021-09-11T15:46:39.1351842' AS DateTime2), 1, CAST(N'2021-09-13T12:14:14.8153756' AS DateTime2), 1)
GO
INSERT [dbo].[AppCountries] ([Id], [CountryName], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId]) VALUES (2, N'United States', CAST(N'2021-09-11T15:51:51.4828701' AS DateTime2), 1, NULL, NULL)
GO
INSERT [dbo].[AppCountries] ([Id], [CountryName], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId]) VALUES (3, N'asdsa', CAST(N'2021-09-13T12:16:26.4912298' AS DateTime2), 1, NULL, NULL)
GO
INSERT [dbo].[AppCountries] ([Id], [CountryName], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId]) VALUES (4, N'adsfadsf', CAST(N'2021-09-13T12:16:29.5224422' AS DateTime2), 1, NULL, NULL)
GO
INSERT [dbo].[AppCountries] ([Id], [CountryName], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId]) VALUES (5, N'jtwrjsdfhsgdf', CAST(N'2021-09-13T12:16:32.4208934' AS DateTime2), 1, NULL, NULL)
GO
INSERT [dbo].[AppCountries] ([Id], [CountryName], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId]) VALUES (6, N'srtjnerbhsdfbv', CAST(N'2021-09-13T12:16:35.4602131' AS DateTime2), 1, NULL, NULL)
GO
INSERT [dbo].[AppCountries] ([Id], [CountryName], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId]) VALUES (7, N'ksfgkmdfgnbdfb', CAST(N'2021-09-13T12:16:38.4994579' AS DateTime2), 1, NULL, NULL)
GO
INSERT [dbo].[AppCountries] ([Id], [CountryName], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId]) VALUES (8, N'afdjadfjasdfj', CAST(N'2021-09-13T12:16:42.2963026' AS DateTime2), 1, NULL, NULL)
GO
INSERT [dbo].[AppCountries] ([Id], [CountryName], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId]) VALUES (9, N'rtujwerfhbdfb', CAST(N'2021-09-13T12:16:45.4873889' AS DateTime2), 1, NULL, NULL)
GO
INSERT [dbo].[AppCountries] ([Id], [CountryName], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId]) VALUES (10, N'lsdfksfghdfh', CAST(N'2021-09-13T12:16:48.7277588' AS DateTime2), 1, NULL, NULL)
GO
INSERT [dbo].[AppCountries] ([Id], [CountryName], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId]) VALUES (11, N'qerhwerbgvefd', CAST(N'2021-09-13T12:16:52.0203833' AS DateTime2), 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[AppCountries] OFF
GO
SET IDENTITY_INSERT [dbo].[AppStates] ON 
GO
INSERT [dbo].[AppStates] ([Id], [CountryId], [StateName], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId]) VALUES (2, 2, N'California', CAST(N'2021-09-14T14:59:41.0885499' AS DateTime2), 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[AppStates] OFF
GO
/****** Object:  Index [IX_AbpAuditLogs_TenantId_ExecutionDuration]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpAuditLogs_TenantId_ExecutionDuration] ON [dbo].[AbpAuditLogs]
(
	[TenantId] ASC,
	[ExecutionDuration] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpAuditLogs_TenantId_ExecutionTime]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpAuditLogs_TenantId_ExecutionTime] ON [dbo].[AbpAuditLogs]
(
	[TenantId] ASC,
	[ExecutionTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpAuditLogs_TenantId_UserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpAuditLogs_TenantId_UserId] ON [dbo].[AbpAuditLogs]
(
	[TenantId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpBackgroundJobs_IsAbandoned_NextTryTime]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpBackgroundJobs_IsAbandoned_NextTryTime] ON [dbo].[AbpBackgroundJobs]
(
	[IsAbandoned] ASC,
	[NextTryTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpDynamicEntityProperties_DynamicPropertyId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpDynamicEntityProperties_DynamicPropertyId] ON [dbo].[AbpDynamicEntityProperties]
(
	[DynamicPropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpDynamicEntityProperties_EntityFullName_DynamicPropertyId_TenantId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AbpDynamicEntityProperties_EntityFullName_DynamicPropertyId_TenantId] ON [dbo].[AbpDynamicEntityProperties]
(
	[EntityFullName] ASC,
	[DynamicPropertyId] ASC,
	[TenantId] ASC
)
WHERE ([EntityFullName] IS NOT NULL AND [TenantId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpDynamicEntityPropertyValues_DynamicEntityPropertyId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpDynamicEntityPropertyValues_DynamicEntityPropertyId] ON [dbo].[AbpDynamicEntityPropertyValues]
(
	[DynamicEntityPropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpDynamicProperties_PropertyName_TenantId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AbpDynamicProperties_PropertyName_TenantId] ON [dbo].[AbpDynamicProperties]
(
	[PropertyName] ASC,
	[TenantId] ASC
)
WHERE ([PropertyName] IS NOT NULL AND [TenantId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpDynamicPropertyValues_DynamicPropertyId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpDynamicPropertyValues_DynamicPropertyId] ON [dbo].[AbpDynamicPropertyValues]
(
	[DynamicPropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpEntityChanges_EntityChangeSetId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpEntityChanges_EntityChangeSetId] ON [dbo].[AbpEntityChanges]
(
	[EntityChangeSetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpEntityChanges_EntityTypeFullName_EntityId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpEntityChanges_EntityTypeFullName_EntityId] ON [dbo].[AbpEntityChanges]
(
	[EntityTypeFullName] ASC,
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpEntityChangeSets_TenantId_CreationTime]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpEntityChangeSets_TenantId_CreationTime] ON [dbo].[AbpEntityChangeSets]
(
	[TenantId] ASC,
	[CreationTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpEntityChangeSets_TenantId_Reason]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpEntityChangeSets_TenantId_Reason] ON [dbo].[AbpEntityChangeSets]
(
	[TenantId] ASC,
	[Reason] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpEntityChangeSets_TenantId_UserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpEntityChangeSets_TenantId_UserId] ON [dbo].[AbpEntityChangeSets]
(
	[TenantId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpEntityPropertyChanges_EntityChangeId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpEntityPropertyChanges_EntityChangeId] ON [dbo].[AbpEntityPropertyChanges]
(
	[EntityChangeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpFeatures_EditionId_Name]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpFeatures_EditionId_Name] ON [dbo].[AbpFeatures]
(
	[EditionId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpFeatures_TenantId_Name]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpFeatures_TenantId_Name] ON [dbo].[AbpFeatures]
(
	[TenantId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpLanguages_TenantId_Name]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpLanguages_TenantId_Name] ON [dbo].[AbpLanguages]
(
	[TenantId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpLanguageTexts_TenantId_Source_LanguageName_Key]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpLanguageTexts_TenantId_Source_LanguageName_Key] ON [dbo].[AbpLanguageTexts]
(
	[TenantId] ASC,
	[Source] ASC,
	[LanguageName] ASC,
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpNotificationSubscriptions_NotificationName_EntityTypeName_EntityId_UserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpNotificationSubscriptions_NotificationName_EntityTypeName_EntityId_UserId] ON [dbo].[AbpNotificationSubscriptions]
(
	[NotificationName] ASC,
	[EntityTypeName] ASC,
	[EntityId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpNotificationSubscriptions_TenantId_NotificationName_EntityTypeName_EntityId_UserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpNotificationSubscriptions_TenantId_NotificationName_EntityTypeName_EntityId_UserId] ON [dbo].[AbpNotificationSubscriptions]
(
	[TenantId] ASC,
	[NotificationName] ASC,
	[EntityTypeName] ASC,
	[EntityId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpOrganizationUnitRoles_TenantId_OrganizationUnitId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpOrganizationUnitRoles_TenantId_OrganizationUnitId] ON [dbo].[AbpOrganizationUnitRoles]
(
	[TenantId] ASC,
	[OrganizationUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpOrganizationUnitRoles_TenantId_RoleId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpOrganizationUnitRoles_TenantId_RoleId] ON [dbo].[AbpOrganizationUnitRoles]
(
	[TenantId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpOrganizationUnits_ParentId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpOrganizationUnits_ParentId] ON [dbo].[AbpOrganizationUnits]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpOrganizationUnits_TenantId_Code]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpOrganizationUnits_TenantId_Code] ON [dbo].[AbpOrganizationUnits]
(
	[TenantId] ASC,
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpPermissions_RoleId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpPermissions_RoleId] ON [dbo].[AbpPermissions]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpPermissions_TenantId_Name]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpPermissions_TenantId_Name] ON [dbo].[AbpPermissions]
(
	[TenantId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpPermissions_UserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpPermissions_UserId] ON [dbo].[AbpPermissions]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpRoleClaims_RoleId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpRoleClaims_RoleId] ON [dbo].[AbpRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpRoleClaims_TenantId_ClaimType]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpRoleClaims_TenantId_ClaimType] ON [dbo].[AbpRoleClaims]
(
	[TenantId] ASC,
	[ClaimType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpRoles_CreatorUserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpRoles_CreatorUserId] ON [dbo].[AbpRoles]
(
	[CreatorUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpRoles_DeleterUserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpRoles_DeleterUserId] ON [dbo].[AbpRoles]
(
	[DeleterUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpRoles_LastModifierUserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpRoles_LastModifierUserId] ON [dbo].[AbpRoles]
(
	[LastModifierUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpRoles_TenantId_NormalizedName]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpRoles_TenantId_NormalizedName] ON [dbo].[AbpRoles]
(
	[TenantId] ASC,
	[NormalizedName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpSettings_TenantId_Name_UserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AbpSettings_TenantId_Name_UserId] ON [dbo].[AbpSettings]
(
	[TenantId] ASC,
	[Name] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpSettings_UserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpSettings_UserId] ON [dbo].[AbpSettings]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpTenantNotifications_TenantId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpTenantNotifications_TenantId] ON [dbo].[AbpTenantNotifications]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpTenants_CreatorUserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpTenants_CreatorUserId] ON [dbo].[AbpTenants]
(
	[CreatorUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpTenants_DeleterUserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpTenants_DeleterUserId] ON [dbo].[AbpTenants]
(
	[DeleterUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpTenants_EditionId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpTenants_EditionId] ON [dbo].[AbpTenants]
(
	[EditionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpTenants_LastModifierUserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpTenants_LastModifierUserId] ON [dbo].[AbpTenants]
(
	[LastModifierUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpTenants_TenancyName]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpTenants_TenancyName] ON [dbo].[AbpTenants]
(
	[TenancyName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUserAccounts_EmailAddress]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserAccounts_EmailAddress] ON [dbo].[AbpUserAccounts]
(
	[EmailAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUserAccounts_TenantId_EmailAddress]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserAccounts_TenantId_EmailAddress] ON [dbo].[AbpUserAccounts]
(
	[TenantId] ASC,
	[EmailAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserAccounts_TenantId_UserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserAccounts_TenantId_UserId] ON [dbo].[AbpUserAccounts]
(
	[TenantId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUserAccounts_TenantId_UserName]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserAccounts_TenantId_UserName] ON [dbo].[AbpUserAccounts]
(
	[TenantId] ASC,
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUserAccounts_UserName]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserAccounts_UserName] ON [dbo].[AbpUserAccounts]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUserClaims_TenantId_ClaimType]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserClaims_TenantId_ClaimType] ON [dbo].[AbpUserClaims]
(
	[TenantId] ASC,
	[ClaimType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserClaims_UserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserClaims_UserId] ON [dbo].[AbpUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUserLoginAttempts_TenancyName_UserNameOrEmailAddress_Result]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserLoginAttempts_TenancyName_UserNameOrEmailAddress_Result] ON [dbo].[AbpUserLoginAttempts]
(
	[TenancyName] ASC,
	[UserNameOrEmailAddress] ASC,
	[Result] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserLoginAttempts_UserId_TenantId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserLoginAttempts_UserId_TenantId] ON [dbo].[AbpUserLoginAttempts]
(
	[UserId] ASC,
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUserLogins_ProviderKey_TenantId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AbpUserLogins_ProviderKey_TenantId] ON [dbo].[AbpUserLogins]
(
	[ProviderKey] ASC,
	[TenantId] ASC
)
WHERE ([TenantId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUserLogins_TenantId_LoginProvider_ProviderKey]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserLogins_TenantId_LoginProvider_ProviderKey] ON [dbo].[AbpUserLogins]
(
	[TenantId] ASC,
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserLogins_TenantId_UserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserLogins_TenantId_UserId] ON [dbo].[AbpUserLogins]
(
	[TenantId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserLogins_UserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserLogins_UserId] ON [dbo].[AbpUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserNotifications_UserId_State_CreationTime]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserNotifications_UserId_State_CreationTime] ON [dbo].[AbpUserNotifications]
(
	[UserId] ASC,
	[State] ASC,
	[CreationTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserOrganizationUnits_TenantId_OrganizationUnitId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserOrganizationUnits_TenantId_OrganizationUnitId] ON [dbo].[AbpUserOrganizationUnits]
(
	[TenantId] ASC,
	[OrganizationUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserOrganizationUnits_TenantId_UserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserOrganizationUnits_TenantId_UserId] ON [dbo].[AbpUserOrganizationUnits]
(
	[TenantId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserRoles_TenantId_RoleId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserRoles_TenantId_RoleId] ON [dbo].[AbpUserRoles]
(
	[TenantId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserRoles_TenantId_UserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserRoles_TenantId_UserId] ON [dbo].[AbpUserRoles]
(
	[TenantId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserRoles_UserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserRoles_UserId] ON [dbo].[AbpUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUsers_CreatorUserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUsers_CreatorUserId] ON [dbo].[AbpUsers]
(
	[CreatorUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUsers_DeleterUserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUsers_DeleterUserId] ON [dbo].[AbpUsers]
(
	[DeleterUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUsers_LastModifierUserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUsers_LastModifierUserId] ON [dbo].[AbpUsers]
(
	[LastModifierUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUsers_TenantId_NormalizedEmailAddress]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUsers_TenantId_NormalizedEmailAddress] ON [dbo].[AbpUsers]
(
	[TenantId] ASC,
	[NormalizedEmailAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUsers_TenantId_NormalizedUserName]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUsers_TenantId_NormalizedUserName] ON [dbo].[AbpUsers]
(
	[TenantId] ASC,
	[NormalizedUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserTokens_TenantId_UserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserTokens_TenantId_UserId] ON [dbo].[AbpUserTokens]
(
	[TenantId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserTokens_UserId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserTokens_UserId] ON [dbo].[AbpUserTokens]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpWebhookSendAttempts_WebhookEventId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AbpWebhookSendAttempts_WebhookEventId] ON [dbo].[AbpWebhookSendAttempts]
(
	[WebhookEventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppStates_CountryId]    Script Date: 14-09-2021 18:57:53 ******/
CREATE NONCLUSTERED INDEX [IX_AppStates_CountryId] ON [dbo].[AppStates]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AbpLanguages] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDisabled]
GO
ALTER TABLE [dbo].[AbpUserOrganizationUnits] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AbpDynamicEntityProperties]  WITH CHECK ADD  CONSTRAINT [FK_AbpDynamicEntityProperties_AbpDynamicProperties_DynamicPropertyId] FOREIGN KEY([DynamicPropertyId])
REFERENCES [dbo].[AbpDynamicProperties] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpDynamicEntityProperties] CHECK CONSTRAINT [FK_AbpDynamicEntityProperties_AbpDynamicProperties_DynamicPropertyId]
GO
ALTER TABLE [dbo].[AbpDynamicEntityPropertyValues]  WITH CHECK ADD  CONSTRAINT [FK_AbpDynamicEntityPropertyValues_AbpDynamicEntityProperties_DynamicEntityPropertyId] FOREIGN KEY([DynamicEntityPropertyId])
REFERENCES [dbo].[AbpDynamicEntityProperties] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpDynamicEntityPropertyValues] CHECK CONSTRAINT [FK_AbpDynamicEntityPropertyValues_AbpDynamicEntityProperties_DynamicEntityPropertyId]
GO
ALTER TABLE [dbo].[AbpDynamicPropertyValues]  WITH CHECK ADD  CONSTRAINT [FK_AbpDynamicPropertyValues_AbpDynamicProperties_DynamicPropertyId] FOREIGN KEY([DynamicPropertyId])
REFERENCES [dbo].[AbpDynamicProperties] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpDynamicPropertyValues] CHECK CONSTRAINT [FK_AbpDynamicPropertyValues_AbpDynamicProperties_DynamicPropertyId]
GO
ALTER TABLE [dbo].[AbpEntityChanges]  WITH CHECK ADD  CONSTRAINT [FK_AbpEntityChanges_AbpEntityChangeSets_EntityChangeSetId] FOREIGN KEY([EntityChangeSetId])
REFERENCES [dbo].[AbpEntityChangeSets] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpEntityChanges] CHECK CONSTRAINT [FK_AbpEntityChanges_AbpEntityChangeSets_EntityChangeSetId]
GO
ALTER TABLE [dbo].[AbpEntityPropertyChanges]  WITH CHECK ADD  CONSTRAINT [FK_AbpEntityPropertyChanges_AbpEntityChanges_EntityChangeId] FOREIGN KEY([EntityChangeId])
REFERENCES [dbo].[AbpEntityChanges] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpEntityPropertyChanges] CHECK CONSTRAINT [FK_AbpEntityPropertyChanges_AbpEntityChanges_EntityChangeId]
GO
ALTER TABLE [dbo].[AbpFeatures]  WITH CHECK ADD  CONSTRAINT [FK_AbpFeatures_AbpEditions_EditionId] FOREIGN KEY([EditionId])
REFERENCES [dbo].[AbpEditions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpFeatures] CHECK CONSTRAINT [FK_AbpFeatures_AbpEditions_EditionId]
GO
ALTER TABLE [dbo].[AbpOrganizationUnits]  WITH CHECK ADD  CONSTRAINT [FK_AbpOrganizationUnits_AbpOrganizationUnits_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[AbpOrganizationUnits] ([Id])
GO
ALTER TABLE [dbo].[AbpOrganizationUnits] CHECK CONSTRAINT [FK_AbpOrganizationUnits_AbpOrganizationUnits_ParentId]
GO
ALTER TABLE [dbo].[AbpPermissions]  WITH CHECK ADD  CONSTRAINT [FK_AbpPermissions_AbpRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AbpRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpPermissions] CHECK CONSTRAINT [FK_AbpPermissions_AbpRoles_RoleId]
GO
ALTER TABLE [dbo].[AbpPermissions]  WITH CHECK ADD  CONSTRAINT [FK_AbpPermissions_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpPermissions] CHECK CONSTRAINT [FK_AbpPermissions_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AbpRoleClaims_AbpRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AbpRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpRoleClaims] CHECK CONSTRAINT [FK_AbpRoleClaims_AbpRoles_RoleId]
GO
ALTER TABLE [dbo].[AbpRoles]  WITH CHECK ADD  CONSTRAINT [FK_AbpRoles_AbpUsers_CreatorUserId] FOREIGN KEY([CreatorUserId])
REFERENCES [dbo].[AbpUsers] ([Id])
GO
ALTER TABLE [dbo].[AbpRoles] CHECK CONSTRAINT [FK_AbpRoles_AbpUsers_CreatorUserId]
GO
ALTER TABLE [dbo].[AbpRoles]  WITH CHECK ADD  CONSTRAINT [FK_AbpRoles_AbpUsers_DeleterUserId] FOREIGN KEY([DeleterUserId])
REFERENCES [dbo].[AbpUsers] ([Id])
GO
ALTER TABLE [dbo].[AbpRoles] CHECK CONSTRAINT [FK_AbpRoles_AbpUsers_DeleterUserId]
GO
ALTER TABLE [dbo].[AbpRoles]  WITH CHECK ADD  CONSTRAINT [FK_AbpRoles_AbpUsers_LastModifierUserId] FOREIGN KEY([LastModifierUserId])
REFERENCES [dbo].[AbpUsers] ([Id])
GO
ALTER TABLE [dbo].[AbpRoles] CHECK CONSTRAINT [FK_AbpRoles_AbpUsers_LastModifierUserId]
GO
ALTER TABLE [dbo].[AbpSettings]  WITH CHECK ADD  CONSTRAINT [FK_AbpSettings_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
GO
ALTER TABLE [dbo].[AbpSettings] CHECK CONSTRAINT [FK_AbpSettings_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpTenants]  WITH CHECK ADD  CONSTRAINT [FK_AbpTenants_AbpEditions_EditionId] FOREIGN KEY([EditionId])
REFERENCES [dbo].[AbpEditions] ([Id])
GO
ALTER TABLE [dbo].[AbpTenants] CHECK CONSTRAINT [FK_AbpTenants_AbpEditions_EditionId]
GO
ALTER TABLE [dbo].[AbpTenants]  WITH CHECK ADD  CONSTRAINT [FK_AbpTenants_AbpUsers_CreatorUserId] FOREIGN KEY([CreatorUserId])
REFERENCES [dbo].[AbpUsers] ([Id])
GO
ALTER TABLE [dbo].[AbpTenants] CHECK CONSTRAINT [FK_AbpTenants_AbpUsers_CreatorUserId]
GO
ALTER TABLE [dbo].[AbpTenants]  WITH CHECK ADD  CONSTRAINT [FK_AbpTenants_AbpUsers_DeleterUserId] FOREIGN KEY([DeleterUserId])
REFERENCES [dbo].[AbpUsers] ([Id])
GO
ALTER TABLE [dbo].[AbpTenants] CHECK CONSTRAINT [FK_AbpTenants_AbpUsers_DeleterUserId]
GO
ALTER TABLE [dbo].[AbpTenants]  WITH CHECK ADD  CONSTRAINT [FK_AbpTenants_AbpUsers_LastModifierUserId] FOREIGN KEY([LastModifierUserId])
REFERENCES [dbo].[AbpUsers] ([Id])
GO
ALTER TABLE [dbo].[AbpTenants] CHECK CONSTRAINT [FK_AbpTenants_AbpUsers_LastModifierUserId]
GO
ALTER TABLE [dbo].[AbpUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserClaims_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserClaims] CHECK CONSTRAINT [FK_AbpUserClaims_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserLogins_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserLogins] CHECK CONSTRAINT [FK_AbpUserLogins_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserRoles_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserRoles] CHECK CONSTRAINT [FK_AbpUserRoles_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpUsers]  WITH CHECK ADD  CONSTRAINT [FK_AbpUsers_AbpUsers_CreatorUserId] FOREIGN KEY([CreatorUserId])
REFERENCES [dbo].[AbpUsers] ([Id])
GO
ALTER TABLE [dbo].[AbpUsers] CHECK CONSTRAINT [FK_AbpUsers_AbpUsers_CreatorUserId]
GO
ALTER TABLE [dbo].[AbpUsers]  WITH CHECK ADD  CONSTRAINT [FK_AbpUsers_AbpUsers_DeleterUserId] FOREIGN KEY([DeleterUserId])
REFERENCES [dbo].[AbpUsers] ([Id])
GO
ALTER TABLE [dbo].[AbpUsers] CHECK CONSTRAINT [FK_AbpUsers_AbpUsers_DeleterUserId]
GO
ALTER TABLE [dbo].[AbpUsers]  WITH CHECK ADD  CONSTRAINT [FK_AbpUsers_AbpUsers_LastModifierUserId] FOREIGN KEY([LastModifierUserId])
REFERENCES [dbo].[AbpUsers] ([Id])
GO
ALTER TABLE [dbo].[AbpUsers] CHECK CONSTRAINT [FK_AbpUsers_AbpUsers_LastModifierUserId]
GO
ALTER TABLE [dbo].[AbpUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserTokens_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserTokens] CHECK CONSTRAINT [FK_AbpUserTokens_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpWebhookSendAttempts]  WITH CHECK ADD  CONSTRAINT [FK_AbpWebhookSendAttempts_AbpWebhookEvents_WebhookEventId] FOREIGN KEY([WebhookEventId])
REFERENCES [dbo].[AbpWebhookEvents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpWebhookSendAttempts] CHECK CONSTRAINT [FK_AbpWebhookSendAttempts_AbpWebhookEvents_WebhookEventId]
GO
ALTER TABLE [dbo].[AppStates]  WITH CHECK ADD  CONSTRAINT [FK_AppStates_AppCountries_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[AppCountries] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppStates] CHECK CONSTRAINT [FK_AppStates_AppCountries_CountryId]
GO
