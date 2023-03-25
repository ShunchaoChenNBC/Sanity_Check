
select
count(distinct Adobe_Tracking_ID) as Binge_Accounts,
round(sum(New_Watch_Time)/3600,2) as Watch_Hours
FROM `nbcu-ds-sandbox-a-001.Shunchao_Sandbox_Final.Auto_Binge_Metadata_V2` 
where lower(Feeder_Video) = "night court" and lower(Display_Name) = "american auto" and New_Watch_Time > 0
and Video_Start_Type in ("Auto-Play", "Clicked-Up-Next") and Adobe_Date between "2023-01-18" and "2023-02-27";



select
count(distinct Adobe_Tracking_ID) as Binge_Accounts,
round(sum(New_Watch_Time)/3600,2) as Watch_Hours
FROM `nbcu-ds-sandbox-a-001.Shunchao_Sandbox_Final.Auto_Binge_Metadata_V2` 
where lower(Feeder_Video) = "bel-air" and lower(Display_Name) = "grand crew" and New_Watch_Time > 0
and Video_Start_Type in ("Auto-Play", "Clicked-Up-Next") and Adobe_Date between "2023-02-15" and "2023-03-16";



##################################################
select
count(distinct Adobe_Tracking_ID) as Binge_Accounts,
round(sum(New_Watch_Time)/3600,2) as Watch_Hours
FROM `nbcu-ds-sandbox-a-001.Shunchao_Sandbox_Final.Auto_Binge_Metadata_V2` 
where lower(Display_Name) = "grand crew" and New_Watch_Time > 0
and Adobe_Date between "2023-02-15" and "2023-03-16";



# SV
select 
count(distinct Adobe_Tracking_ID) as Binge_Accounts,
round(sum(num_seconds_played_no_ads)/3600,2) as Watch_Hours
FROM `nbcu-ds-prod-001.PeacockDataMartSilver.SILVER_VIDEO` 
where lower(Display_Name) = "grand crew" 
and Adobe_Date between "2023-02-15" and "2023-03-16" and num_seconds_played_no_ads>0;


# all accounts
select
count(distinct Adobe_Tracking_ID) as Binge_Accounts,
round(sum(New_Watch_Time)/3600,2) as Watch_Hours
FROM `nbcu-ds-sandbox-a-001.Shunchao_Sandbox_Final.Auto_Binge_Metadata_V2` 
where lower(Display_Name) = "american auto" and New_Watch_Time > 0
and Adobe_Date between "2023-01-18" and "2023-02-27";

# SV
select 
count(distinct Adobe_Tracking_ID) as Binge_Accounts,
round(sum(num_seconds_played_no_ads)/3600,2) as Watch_Hours
FROM `nbcu-ds-prod-001.PeacockDataMartSilver.SILVER_VIDEO` 
where lower(Display_Name) = "american auto" 
and Adobe_Date between "2023-01-18" and "2023-02-27" and num_seconds_played_no_ads>0;



