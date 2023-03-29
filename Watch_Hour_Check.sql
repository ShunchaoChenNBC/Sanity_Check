# Overall Hours
SELECT Adobe_Date, round(sum(Final_Watch_Time)/3600,2) as Overall_Hours 
FROM `nbcu-ds-sandbox-a-001.Shunchao_Sandbox_Final.Auto_Binge_Metadata_Beta` group by 1 order by 1 desc

#Title Breakdown
SELECT Adobe_Date, round(sum(Final_Watch_Time)/3600,2) as Overall_Hours FROM `nbcu-ds-sandbox-a-001.Shunchao_Sandbox_Final.Auto_Binge_Metadata_Beta` 
where lower(Display_Name) like "%grand%crew%" and Final_Watch_Time > 0
group by 1 order by 1 desc

