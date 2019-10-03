USE [DemoDatabase]
GO

/****** Object:  StoredProcedure [dbo].[InsertOFACSpeciallyDesignatedNationalsAndBlockedEntitiesData]    Script Date: 10/3/2019 5:59:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[InsertOFACSpeciallyDesignatedNationalsAndBlockedEntitiesData]
   @FIRSTNAME varchar(max)
AS

BEGIN

INSERT INTO OFACSpeciallyDesignatedNationalsAndBlockedEntities(FIRST_NAME) VALUES (@FIRSTNAME);

END
GO


