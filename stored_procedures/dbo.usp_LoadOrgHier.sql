USE [DFNB3]
GO

/****** Object:  StoredProcedure [dbo].[usp_LoadOrgHier]    Script Date: 4/16/2020 2:33:02 AM ******/
DROP PROCEDURE [dbo].[usp_LoadOrgHier]
GO

/****** Object:  StoredProcedure [dbo].[usp_LoadOrgHier]    Script Date: 4/16/2020 2:33:02 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_LoadOrgHier]
AS

/*****************************************************************************************************************
NAME:    dbo.usp_LoadOrgHier
PURPOSE: Load Area Dimension

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/16/2020   JJAUSSI       1. Built this table for LDS BC IT243



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
		
		TRUNCATE TABLE dbo.tblOrgHier;
			   


		-- 2) Reload data

        INSERT INTO dbo.tblOrgHier
        SELECT DISTINCT o.*
          FROM stg.ORG_HIER as o
         ORDER BY 1;
                

    END;



GO


