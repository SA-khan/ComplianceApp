USE [DemoDatabase]
GO

/****** Object:  StoredProcedure [dbo].[InsertFIAMostWantedHumanSmugglersAndTraffickersData]    Script Date: 10/3/2019 5:58:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[InsertFIAMostWantedHumanSmugglersAndTraffickersData]
   @FIRSTNAME varchar(max)
AS

BEGIN

INSERT INTO FIAMostWantedHumanSmugglersAndTraffickers(FIRST_NAME) VALUES (@FIRSTNAME);

END
GO


