USE [DemoDatabase]
GO

/****** Object:  StoredProcedure [dbo].[GetFIAMostWantedTerroristsData]    Script Date: 10/3/2019 5:52:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[GetFIAMostWantedTerroristsData]
As
BEGIN
    select * from FIAMostWantedTerrorists
END
GO


