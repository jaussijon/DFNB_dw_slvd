-- https://docs.microsoft.com/en-us/sql/relational-databases/xml/for-xml-sql-server?redirectedfrom=MSDN&view=sql-server-ver15

 SELECT CAST(n.industry_sector_code as nvarchar(500)) as industry_sector_code
       ,n.industry_sector_desc
       ,CAST(n.industry_sub_sector_code as nvarchar(500)) as industry_sub_sector_code
       ,n.industry_sub_sector_desc as industry_sub_sector_desc
       ,CAST(n.industry_group_code as nvarchar(500)) as industry_group_code
       ,n.industry_group_desc
       ,CAST(n.industry_code as nvarchar(500)) as industry_code
       ,n.industry_desc
       ,CAST(n.nation_industry_code as nvarchar(500)) as nation_industry_code
       ,n.nation_industry_desc
  FROM dbo.tblNAICSCodeHier as n
  FOR XML AUTO, ELEMENTS;




DECLARE @xml XML
 
SET @xml = 
(
SELECT CAST(MY_XML AS xml) as MY_XML
  FROM OPENROWSET(BULK 'C:\Users\z035330\Documents\JJAUSSI\Other\JC\projects\LDSBC\IT_243\repos\DFNB_dw_slvd\xml_files\NAICS_code_hier.xml', SINGLE_BLOB) AS T(MY_XML)
  --FROM OPENROWSET(BULK 'C:\NAICS_code_hier.xml', SINGLE_BLOB) AS T(MY_XML)
)

TRUNCATE TABLE dbo.tblNAICSCodeHier;

INSERT INTO dbo.tblNAICSCodeHier
SELECT my_col.query('industry_sector_code').value('.', 'float') AS industry_sector_code
      ,my_col.query('industry_sector_desc').value('.', 'nvarchar(500)') AS industry_sector_desc
      ,my_col.query('industry_sub_sector_code').value('.', 'float') AS industry_sub_sector_code
      ,my_col.query('industry_sub_sector_desc').value('.', 'nvarchar(500)') AS industry_sub_sector_desc
	  ,my_col.query('industry_group_code').value('.', 'float') AS industry_group_code
      ,my_col.query('industry_group_desc').value('.', 'nvarchar(500)') AS industry_group_desc
	  ,my_col.query('industry_code').value('.', 'float') AS industry_code
      ,my_col.query('industry_desc').value('.', 'nvarchar(500)') AS industry_desc
	  ,my_col.query('nation_industry_code').value('.', 'float') AS nation_industry_code
      ,my_col.query('nation_industry_desc').value('.', 'nvarchar(500)') AS nation_industry_desc
	  --,my_col.query('./child::node()') AS node_value
FROM @xml.nodes('n') AS my_table(my_col);

