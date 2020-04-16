USE [DFNB3]
GO

/****** Object:  Table [dbo].[tblOrgHier]    Script Date: 4/16/2020 2:32:00 AM ******/
DROP TABLE [dbo].[tblOrgHier]
GO

/****** Object:  Table [dbo].[tblOrgHier]    Script Date: 4/16/2020 2:32:00 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblOrgHier](
	[branch_id] [smallint] NOT NULL,
	[branch_code] [varchar](5) NOT NULL,
	[branch_desc] [varchar](25) NOT NULL,
	[region_id] [smallint] NOT NULL,
	[region_desc] [varchar](25) NOT NULL,
	[area_id] [smallint] NOT NULL,
	[area_desc] [varchar](25) NOT NULL,
 CONSTRAINT [PK_tblOrgHier] PRIMARY KEY CLUSTERED 
(
	[branch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


