/****** Object:  StoredProcedure [dbo].[GetFIAMostWantedHumanSmugglersAndTraffickersData]    Script Date: 10/5/2019 10:55:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[GetFIAMostWantedHumanSmugglersAndTraffickersData]
As
BEGIN
    select * from FIAMostWantedHumanSmugglersAndTraffickers
END

GO