USE [DemoDatabase]
GO

/****** Object:  StoredProcedure [dbo].[GetFIAMostWantedHumanSmugglersAndTraffickersData]    Script Date: 10/3/2019 5:52:04 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[GetFIAMostWantedHumanSmugglersAndTraffickersData]
As
BEGIN
    select * from FIAMostWantedHumanSmugglersAndTraffickers
END
GO


