USE [DFNB3]
GO

/****** Object:  Table [dbo].[tblAccountCustomerRoleDim]    Script Date: 4/16/2020 2:13:25 AM ******/
DROP TABLE [dbo].[tblAccountCustomerRoleDim]
GO

/****** Object:  Table [dbo].[tblAccountCustomerRoleDim]    Script Date: 4/16/2020 2:13:25 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblAccountCustomerRoleDim](
	[acct_cust_role_id] [smallint] NOT NULL,
	[acct_cust_role_desc] [varchar](50) NULL,
 CONSTRAINT [PK_tblAccountCustomerRoleDim] PRIMARY KEY CLUSTERED 
(
	[acct_cust_role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


