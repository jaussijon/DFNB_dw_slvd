USE [DFNB3]
GO

/****** Object:  StoredProcedure [dbo].[usp_LoadAccountFact]    Script Date: 11/23/2019 11:57:48 AM ******/
DROP PROCEDURE [dbo].[usp_LoadAccountFact]
GO

/****** Object:  StoredProcedure [dbo].[usp_LoadAccountFact]    Script Date: 11/23/2019 11:57:48 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[usp_LoadAccountFact]
AS

/*****************************************************************************************************************
NAME:    dbo.usp_LoadAccountFact
PURPOSE: Load Account Fact

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/23/2019   JJAUSSI       1. Built this table for LDS BC IT243



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
		
		TRUNCATE TABLE dbo.tblAccountFact;

   

		-- 2) Reload data

        INSERT INTO dbo.tblAccountFact
        SELECT DISTINCT 
               s.as_of_date
             , s.acct_id3 AS acct_id
             , s.cur_bal
          FROM dbo.stg_p1 AS s
         WHERE s.acct_cust_role_id = 1;
                

    END;



GO

