USE [DFNB3]
GO

/****** Object:  StoredProcedure [dbo].[usp_LoadAddressDim]    Script Date: 11/23/2019 11:57:48 AM ******/
DROP PROCEDURE [dbo].[usp_LoadAddressDim]
GO

/****** Object:  StoredProcedure [dbo].[usp_LoadAddressDim]    Script Date: 11/23/2019 11:57:48 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[usp_LoadAddressDim]
AS

/*****************************************************************************************************************
NAME:    dbo.usp_LoadAddressDim
PURPOSE: Load Address Dimension

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/23/2019   JJAUSSI       1. Built this table for LDS BC IT243
1.1     11/25/2019   JJAUSSI       1. Added Org Hierarchy enhancements



RUNTIME: 
Approx. 1 sec

NOTES: 



LICENSE: 
This code is covered by the GNU General Public License which guarantees end users
the freedom to run, study, share, and modify the code. This license grants the recipients
of the code the rights of the Free Software Definition. All derivative work can only be
distributed under the same license terms.
 
******************************************************************************************************************/

    BEGIN

        -- 1) Truncate existing data
		
		TRUNCATE TABLE dbo.tblAddressDim;
			   
   

		-- 2) Reload data

        INSERT INTO dbo.tblAddressDim
        SELECT s.acct_branch_add_id AS add_id
             , s.acct_branch_add_lat AS add_lat
             , s.acct_branch_add_lon AS add_lon
             , s.acct_branch_add_type AS add_type
          FROM dbo.stg_p1 AS s
        UNION
        SELECT s.cust_add_id AS add_id
             , s.cust_add_lat AS add_lat
             , s.cust_add_lon AS add_lon
             , s.cust_add_type AS add_type
          FROM dbo.stg_p1 AS s;
			   
   

		-- 3) Load Unknown Address

        INSERT INTO dbo.tblAddressDim
        SELECT -1 AS add_id
             , 0 AS add_lat
             , 0 AS add_lon
             , 'U' AS add_type;
                

    END;



GO


