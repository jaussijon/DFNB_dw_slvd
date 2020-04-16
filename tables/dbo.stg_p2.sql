USE [DFNB3]
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2', @level2type=N'COLUMN',@level2name=N'tran_fee_amt'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2', @level2type=N'COLUMN',@level2name=N'tran_amt'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2', @level2type=N'COLUMN',@level2name=N'cur_cust_req_ind'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2', @level2type=N'COLUMN',@level2name=N'tran_fee_prct'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2', @level2type=N'COLUMN',@level2name=N'tran_type_desc'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2', @level2type=N'COLUMN',@level2name=N'tran_type_code'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2', @level2type=N'COLUMN',@level2name=N'tran_type_id'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2', @level2type=N'COLUMN',@level2name=N'tran_time'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2', @level2type=N'COLUMN',@level2name=N'tran_date'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2', @level2type=N'COLUMN',@level2name=N'acct_id'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2', @level2type=N'COLUMN',@level2name=N'branch_id'
GO

/****** Object:  Table [dbo].[stg_p2]    Script Date: 4/16/2020 2:12:41 AM ******/
DROP TABLE [dbo].[stg_p2]
GO

/****** Object:  Table [dbo].[stg_p2]    Script Date: 4/16/2020 2:12:41 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stg_p2](
	[branch_id] [smallint] NOT NULL,
	[acct_id] [int] NOT NULL,
	[tran_date] [date] NOT NULL,
	[tran_time] [time](7) NOT NULL,
	[tran_type_id] [smallint] NOT NULL,
	[tran_type_code] [varchar](5) NOT NULL,
	[tran_type_desc] [varchar](100) NOT NULL,
	[tran_fee_prct] [decimal](4, 3) NOT NULL,
	[cur_cust_req_ind] [varchar](1) NOT NULL,
	[tran_amt] [int] NOT NULL,
	[tran_fee_amt] [decimal](15, 3) NOT NULL
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Branch ID.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2', @level2type=N'COLUMN',@level2name=N'branch_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Account ID.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2', @level2type=N'COLUMN',@level2name=N'acct_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Transaction date.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2', @level2type=N'COLUMN',@level2name=N'tran_date'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Transaction time.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2', @level2type=N'COLUMN',@level2name=N'tran_time'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Transaction type ID.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2', @level2type=N'COLUMN',@level2name=N'tran_type_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Transaction type Code.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2', @level2type=N'COLUMN',@level2name=N'tran_type_code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Transaction type description.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2', @level2type=N'COLUMN',@level2name=N'tran_type_desc'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Transaction fee percent.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2', @level2type=N'COLUMN',@level2name=N'tran_fee_prct'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Current c ustomer required index.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2', @level2type=N'COLUMN',@level2name=N'cur_cust_req_ind'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Transaction amount.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2', @level2type=N'COLUMN',@level2name=N'tran_amt'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Transaction fee amount.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2', @level2type=N'COLUMN',@level2name=N'tran_fee_amt'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Stage Project 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'stg_p2'
GO


