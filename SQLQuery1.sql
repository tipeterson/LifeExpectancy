/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Country]
      ,[Region ]
      ,[GDP Per Capita 2019 (USD)]
      ,[Life Expectancy 2019]
      ,[Life Expectancy Range]
      ,[GDP 2019 ($USD Millions)]
      ,[Class Range]
      ,[Population 2019 (by millions)]
      ,[Education Spending]
      ,[Research and Development Expenditure (% of GDP)]
      ,[Gini Index (2021)]
      ,[HealthCare Spending Per Capita ($USD)]
      ,[CPI Score]
      ,[CPI Score Range]
      ,[Sanitation (World Bank)]
      ,[Population Access to Clean Water (%)]
  FROM [LifeExpectancy].[dbo].[Sheet1$]

  --looking at Life Expectancy to Sanitation Score
  --show likihood of increased life expectancy depending on sanitation score


select country, region, [life expectancy 2019], [sanitation (world bank)], ([life expectancy 2019]/[sanitation (world bank)]) *100 as SanitationLifeExpectancy
 from LifeExpectancy..Sheet1$
 where region like '%Eastern Mediterranean%'


select country, region, [life expectancy 2019], [sanitation (world bank)], ([life expectancy 2019]/[sanitation (world bank)]) *100 as SanitationLifeExpectancy
 from LifeExpectancy..Sheet1$
 where region like '%African%'


select country, region, [life expectancy 2019], [sanitation (world bank)], ([life expectancy 2019]/[sanitation (world bank)]) *100 as SanitationLifeExpectancy
 from LifeExpectancy..Sheet1$
 where region like '%Americas%'


select country, region, [life expectancy 2019], [sanitation (world bank)], ([life expectancy 2019]/[sanitation (world bank)]) *100 as SanitationLifeExpectancy
 from LifeExpectancy..Sheet1$
 where region like '%West Pacific%'


select country, region, [life expectancy 2019], [sanitation (world bank)], ([life expectancy 2019]/[sanitation (world bank)]) *100 as SanitationLifeExpectancy
 from LifeExpectancy..Sheet1$
 where region like '%South-East Asian%'


select country, region, [life expectancy 2019], [sanitation (world bank)], ([life expectancy 2019]/[sanitation (world bank)]) *100 as SanitationLifeExpectancy
 from LifeExpectancy..Sheet1$
 where region like '%European%'
 
 
 --show correlation of access to clean water to the life expectancy

select country, region, [life expectancy 2019], [Population Access to Clean Water (%)], ([life expectancy 2019]/[Population Access to Clean Water (%)]) *100 as CleanWaterImpact
 from LifeExpectancy..Sheet1$
 where region like '%Eastern Mediterranean%'
 order by CleanWaterImpact desc


select country, region, [life expectancy 2019], [Population Access to Clean Water (%)], ([life expectancy 2019]/[Population Access to Clean Water (%)]) *100 as CleanWaterImpact
 from LifeExpectancy..Sheet1$
 where region like '%African%'
 order by CleanWaterImpact desc

 
select country, region, [life expectancy 2019], [Population Access to Clean Water (%)], ([life expectancy 2019]/[Population Access to Clean Water (%)]) *100 as CleanWaterImpact
 from LifeExpectancy..Sheet1$
 where region like '%EAmericas%'
 order by CleanWaterImpact desc


select country, region, [life expectancy 2019], [Population Access to Clean Water (%)], ([life expectancy 2019]/[Population Access to Clean Water (%)]) *100 as CleanWaterImpact
 from LifeExpectancy..Sheet1$
 where region like '%West Pacific%'
 order by CleanWaterImpact desc


select country, region, [life expectancy 2019], [Population Access to Clean Water (%)], ([life expectancy 2019]/[Population Access to Clean Water (%)]) *100 as CleanWaterImpact
 from LifeExpectancy..Sheet1$
 where region like '%South-East Asian%'
 order by CleanWaterImpact desc


--produce a smaller chart with the previously produced data and the region of the world the results correspond with

select country, region, [life expectancy 2019], [Population Access to Clean Water (%)], ([life expectancy 2019]/[Population Access to Clean Water (%)]) *100 as CleanWaterImpact
 from LifeExpectancy..Sheet1$
 where region like '%European%'
 order by CleanWaterImpact desc
