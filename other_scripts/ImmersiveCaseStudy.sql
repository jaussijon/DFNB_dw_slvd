SELECT n.seq_no
      ,n.[2017_NAICS_US_code]
      ,n.[2017_NAICS_US_title]
  FROM stg.NAICS_CODES_2017 as n
WHERE 1 = 1 
  --AND n.[2017_NAICS_US_title] like '%lumber%'
  AND n.[2017_NAICS_US_code] IN ( 423310, 42331, 4233, 423, 42)
 ORDER BY 1;

 SELECT n.*
   FROM dbo.tblNAICSCodeHier as n
 WHERE n.nation_industry_code = 423310;

