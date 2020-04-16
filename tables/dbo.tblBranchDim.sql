USE [DFNB3]
GO

ALTER TABLE [dbo].[tblBranchDim] DROP CONSTRAINT [FK_tblBranchDim_region_id_tblRegionDim_region_id]
GO

ALTER TABLE [dbo].[tblBranchDim] DROP CONSTRAINT [FK_tblBranchDim_branch_add_id_tblAddressDim_add_id]
GO

ALTER TABLE [dbo].[tblBranchDim] DROP CONSTRAINT [FK_tblBranchDim_area_id_tblAreaDim_area_id]
GO

/****** Object:  Table [dbo].[tblBranchDim]    Script Date: 4/16/2020 2:15:00 AM ******/
DROP TABLE [dbo].[tblBranchDim]
GO

/****** Object:  Table [dbo].[tblBranchDim]    Script Date: 4/16/2020 2:15:00 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblBranchDim](
	[branch_id] [smallint] NOT NULL,
	[branch_code] [varchar](5) NOT NULL,
	[branch_desc] [varchar](100) NOT NULL,
	[branch_add_id] [int] NOT NULL,
	[region_id] [int] NOT NULL,
	[area_id] [int] NOT NULL,
 CONSTRAINT [PK_tblBranchDim] PRIMARY KEY CLUSTERED 
(
	[branch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tblBranchDim]  WITH CHECK ADD  CONSTRAINT [FK_tblBranchDim_area_id_tblAreaDim_area_id] FOREIGN KEY([area_id])
REFERENCES [dbo].[tblAreaDim] ([area_id])
GO

ALTER TABLE [dbo].[tblBranchDim] CHECK CONSTRAINT [FK_tblBranchDim_area_id_tblAreaDim_area_id]
GO

ALTER TABLE [dbo].[tblBranchDim]  WITH CHECK ADD  CONSTRAINT [FK_tblBranchDim_branch_add_id_tblAddressDim_add_id] FOREIGN KEY([branch_add_id])
REFERENCES [dbo].[tblAddressDim] ([add_id])
GO

ALTER TABLE [dbo].[tblBranchDim] CHECK CONSTRAINT [FK_tblBranchDim_branch_add_id_tblAddressDim_add_id]
GO

ALTER TABLE [dbo].[tblBranchDim]  WITH CHECK ADD  CONSTRAINT [FK_tblBranchDim_region_id_tblRegionDim_region_id] FOREIGN KEY([region_id])
REFERENCES [dbo].[tblRegionDim] ([region_id])
GO

ALTER TABLE [dbo].[tblBranchDim] CHECK CONSTRAINT [FK_tblBranchDim_region_id_tblRegionDim_region_id]
GO


