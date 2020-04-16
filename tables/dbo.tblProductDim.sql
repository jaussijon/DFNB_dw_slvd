USE [DFNB3]
GO

/****** Object:  Table [dbo].[tblProductDim]    Script Date: 4/16/2020 2:16:00 AM ******/
DROP TABLE [dbo].[tblProductDim]
GO

/****** Object:  Table [dbo].[tblProductDim]    Script Date: 4/16/2020 2:16:00 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblProductDim](
	[prod_id] [smallint] NOT NULL,
    [prod_code] [varchar](10) NOT NULL,
	[prod_desc] [varchar](50) NOT NULL,
	[revolve_ind] [varchar](50) NOT NULL,
	[loan_amt_lmt] numeric(20,4) NOT NULL,
 CONSTRAINT [PK_tblProductDim] PRIMARY KEY CLUSTERED 
(
	[prod_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


