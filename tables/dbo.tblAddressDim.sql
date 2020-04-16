USE [DFNB3]
GO

/****** Object:  Table [dbo].[tblAddressDim]    Script Date: 4/16/2020 2:14:16 AM ******/
DROP TABLE [dbo].[tblAddressDim]
GO

/****** Object:  Table [dbo].[tblAddressDim]    Script Date: 4/16/2020 2:14:16 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblAddressDim](
	[add_id] [int] NOT NULL,
	[add_lat] [decimal](16, 12) NOT NULL,
	[add_lon] [decimal](16, 12) NOT NULL,
	[add_type] [varchar](1) NOT NULL,
 CONSTRAINT [PK_tblAddressDim] PRIMARY KEY CLUSTERED 
(
	[add_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


