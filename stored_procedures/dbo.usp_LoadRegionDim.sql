USE [DFNB3]
GO

/****** Object:  StoredProcedure [dbo].[usp_LoadRegionDim]    Script Date: 11/25/2019 4:06:55 PM ******/
DROP PROCEDURE [dbo].[usp_LoadRegionDim]
GO

/****** Object:  StoredProcedure [dbo].[usp_LoadRegionDim]    Script Date: 11/25/2019 4:06:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[usp_LoadRegionDim]
AS

/*****************************************************************************************************************
NAME:    dbo.usp_LoadRegionDim
PURPOSE: Load Region Dimension

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
		
		TRUNCATE TABLE dbo.tblRegionDim;



		-- 2) Reload data

        INSERT INTO dbo.tblRegionDim
        SELECT DISTINCT 
               s.acct_region_id AS region_id
             , oh.region_desc
          FROM dbo.stg_p1 AS s
		  INNER JOIN stg.ORG_HIER AS oh
		     ON oh.region_id = s.acct_region_id
         ORDER BY 1;



		-- 3) Load the Unknown Region

        INSERT INTO dbo.tblRegionDim
        SELECT DISTINCT oh.region_id
                      , oh.region_desc
          FROM stg.ORG_HIER AS oh
		 WHERE oh.region_id = -1;
                

    END;



GO


