USE [DemoDatabase]
GO

/****** Object:  StoredProcedure [dbo].[InsertFIAMostWantedCyberCrimeCircleData]    Script Date: 10/3/2019 5:57:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[InsertFIAMostWantedCyberCrimeCircleData]
   @FIRSTNAME varchar(max)
AS

BEGIN

INSERT INTO FIAMostWantedCyberCrimeCircle(FIRST_NAME) VALUES (@FIRSTNAME);

END
GO


