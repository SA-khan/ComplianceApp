USE [DemoDatabase]
GO

/****** Object:  StoredProcedure [dbo].[InsertFIAMostWantedTerroristsData]    Script Date: 10/3/2019 5:58:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[InsertFIAMostWantedTerroristsData]
   @FIRSTNAME varchar(max)
AS

BEGIN

INSERT INTO FIAMostWantedTerrorists(FIRST_NAME) VALUES (@FIRSTNAME);

END
GO


