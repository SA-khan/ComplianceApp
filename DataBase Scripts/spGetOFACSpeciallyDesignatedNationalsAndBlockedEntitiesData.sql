USE [DemoDatabase]
GO

/****** Object:  StoredProcedure [dbo].[GetOFACSpeciallyDesignatedNationalsAndBlockedEntitiesData]    Script Date: 10/3/2019 5:54:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[GetOFACSpeciallyDesignatedNationalsAndBlockedEntitiesData]
As
BEGIN
    select * from OFACSpeciallyDesignatedNationalsAndBlockedEntities
END
GO


