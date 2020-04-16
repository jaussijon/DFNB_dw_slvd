USE [DFNB3]
GO

/****** Object:  StoredProcedure [dbo].[usp_LoadProductDim]    Script Date: 11/25/2019 3:57:22 PM ******/
DROP PROCEDURE [dbo].[usp_LoadProductDim]
GO

/****** Object:  StoredProcedure [dbo].[usp_LoadProductDim]    Script Date: 11/25/2019 3:57:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[usp_LoadProductDim]
AS

/*****************************************************************************************************************
NAME:    dbo.usp_LoadProductDim
PURPOSE: Load Product Dimension

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/23/2019   JJAUSSI       1. Built this table for LDS BC IT243
1.1     11/25/2019   JJAUSSI       1. Added Product Profile enhancements



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
		
		TRUNCATE TABLE dbo.tblProductDim;

		   

		-- 2) Reload data

        INSERT INTO dbo.tblProductDim
        SELECT DISTINCT 
               s.prod_id
             , p.prod_code
			 , p.prod_desc
			 , p.revolve_ind
			 , p.loan_amt_lmt
          FROM dbo.stg_p1 AS s
		  INNER JOIN stg.PRODUCT_PROFILES AS p
		          ON s.prod_id = p.prod_id
         ORDER BY 1;



		 -- 3) Load the Unknown record
		 
        INSERT INTO dbo.tblProductDim
        SELECT p.prod_id
             , p.prod_code
			 , p.prod_desc
			 , p.revolve_ind
			 , p.loan_amt_lmt
          FROM stg.PRODUCT_PROFILES AS p
         WHERE p.prod_id = -1;
                

    END;



GO


