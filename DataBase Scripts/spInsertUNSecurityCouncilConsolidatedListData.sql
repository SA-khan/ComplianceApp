USE [DemoDatabase]
GO

/****** Object:  StoredProcedure [dbo].[InsertUNSecurityCouncilConsolidatedListData]    Script Date: 10/3/2019 6:01:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[InsertUNSecurityCouncilConsolidatedListData]
   @FIRSTNAME varchar(max)
AS

BEGIN

INSERT INTO UNSecurityCouncilConsolidatedList(FIRST_NAME) VALUES (@FIRSTNAME);

END
GO


