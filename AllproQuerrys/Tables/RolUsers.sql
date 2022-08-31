USE [AllPro]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RolUsers]') AND type in (N'U'))
DROP TABLE [dbo].[RolUsers]
GO

CREATE TABLE [dbo].[RolUsers](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


