/****** Object:  StoredProcedure [dbo].[InsertFIAMostWantedHumanSmugglersAndTraffickersData]    Script Date: 10/5/2019 11:03:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROC [dbo].[InsertFIAMostWantedHumanSmugglersAndTraffickersData]
   @COLUMN1 varchar(max),
   @COLUMN2 varchar(max),
   @COLUMN3 varchar(max),
   @COLUMN4 varchar(max)
AS

BEGIN

INSERT INTO FIAMostWantedHumanSmugglersAndTraffickers(Column1, Column2, Column3, Column4) VALUES (@COLUMN1, @COLUMN2, @COLUMN3, @COLUMN4);

END

GO