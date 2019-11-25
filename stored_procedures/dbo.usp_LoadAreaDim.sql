USE [DFNB3]
GO

/****** Object:  StoredProcedure [dbo].[usp_LoadAreaDim]    Script Date: 11/25/2019 4:04:27 PM ******/
DROP PROCEDURE [dbo].[usp_LoadAreaDim]
GO

/****** Object:  StoredProcedure [dbo].[usp_LoadAreaDim]    Script Date: 11/25/2019 4:04:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[usp_LoadAreaDim]
AS

/*****************************************************************************************************************
NAME:    dbo.usp_LoadAreaDim
PURPOSE: Load Area Dimension

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
		
		TRUNCATE TABLE dbo.tblAreaDim;
			   


		-- 2) Reload data

        INSERT INTO dbo.tblAreaDim
        SELECT DISTINCT 
               s.acct_area_id AS area_id
             , oh.area_desc
          FROM dbo.stg_p1 AS s
		  INNER JOIN stg.ORG_HIER AS oh
		    ON s.acct_area_id = oh.area_id
         ORDER BY 1;



		-- 3) Load the Unknown Area

        INSERT INTO dbo.tblAreaDim
        SELECT DISTINCT oh.area_id
                      , oh.area_desc
          FROM stg.ORG_HIER AS oh
		 WHERE oh.area_id = -1;
                

    END;



GO


