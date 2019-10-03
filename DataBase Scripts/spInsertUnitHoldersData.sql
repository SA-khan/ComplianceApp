USE [DemoDatabase]
GO

/****** Object:  StoredProcedure [dbo].[InsertUnitHoldersData]    Script Date: 10/3/2019 6:00:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[InsertUnitHoldersData]
   @FIRSTNAME varchar(max)
AS

BEGIN

INSERT INTO UnitHoldersData(FIRST_NAME) VALUES (@FIRSTNAME);

END
GO


