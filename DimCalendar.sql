-- Clean DimDate Table 
SELECT 
  DateKey, 
  FullDateAlternateKey AS Date, 
  EnglishDayNameOfWeek AS Day, 
  WeekNumberOfYear AS WeekNum, 
  EnglishMonthName AS Month, 
  LEFT(EnglishMonthName, 3) AS MonthShort,
  MonthNumberOfYear AS MonthNum, 
  CalendarQuarter AS Quarter, 
  CalendarYear AS Year 
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate] -- Requested that we only look back 2 years
WHERE 
  CalendarYear >= 2022