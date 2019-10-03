USE [DemoDatabase]
GO

/****** Object:  StoredProcedure [dbo].[GetFIAMostWantedCyberCrimeCircleData]    Script Date: 10/3/2019 5:51:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[GetFIAMostWantedCyberCrimeCircleData]
As
BEGIN
    select * from FIAMostWantedCyberCrimeCircle
END
GO


