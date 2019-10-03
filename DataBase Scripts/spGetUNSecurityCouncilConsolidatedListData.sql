USE [DemoDatabase]
GO

/****** Object:  StoredProcedure [dbo].[GetUNSecurityCouncilConsolidatedListData]    Script Date: 10/3/2019 5:56:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[GetUNSecurityCouncilConsolidatedListData]
As
BEGIN
    select * from UNSecurityCouncilConsolidatedList
END
GO


