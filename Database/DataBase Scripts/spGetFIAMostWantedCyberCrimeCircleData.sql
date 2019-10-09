/****** Object:  StoredProcedure [dbo].[GetFIAMostWantedCyberCrimeCircleData]    Script Date: 10/5/2019 10:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[GetFIAMostWantedCyberCrimeCircleData]
As
BEGIN
    select * from FIAMostWantedCyberCrimeCircle
END