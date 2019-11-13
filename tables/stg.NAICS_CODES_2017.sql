/*****************************************************************************************************************
NAME:    stg.NAICS_CODES_2017
PURPOSE: Create and stg.NAICS_CODES_2017 table

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/12/2019   JJAUSSI       1. Built this table for LDS BC IT240



RUNTIME: 
Approx. 1 sec

Test123

NOTES:
The data source for this table is the US Census by way of these links...

https://www.census.gov/eos/www/naics/downloadables/downloadables.html
https://www.census.gov/eos/www/naics/2017NAICS/2-6%20digit_2017_Codes.xlsx


LICENSE: 
This code is covered by the GNU General Public License which guarantees end users
the freedom to run, study, share, and modify the code. This license grants the recipients
of the code the rights of the Free Software Definition. All derivative work can only be
distributed under the same license terms.
 
******************************************************************************************************************/

USE [DFNB3]
GO

/****** Object:  Table [stg].[NAICS_CODES_2017]    Script Date: 11/12/2019 8:36:45 PM ******/
DROP TABLE [stg].[NAICS_CODES_2017]
GO

/****** Object:  Table [stg].[NAICS_CODES_2017]    Script Date: 11/12/2019 8:36:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [stg].[NAICS_CODES_2017](
	[seq_no] [float] NULL,
	[2017_NAICS_US_code] [float] NULL,
	[2017_NAICS_US_title] [nvarchar](500) NULL
) ON [PRIMARY]
GO


