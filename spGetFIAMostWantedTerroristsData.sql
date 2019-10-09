/****** Object:  StoredProcedure [dbo].[GetFIAMostWantedTerroristsData]    Script Date: 10/5/2019 10:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[GetFIAMostWantedTerroristsData]
As
BEGIN
    select * from FIAMostWantedTerrorists
END

GO