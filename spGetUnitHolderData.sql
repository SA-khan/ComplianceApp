/****** Object:  StoredProcedure [dbo].[GetUnitHolderData]    Script Date: 10/3/2019 5:55:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[GetUnitHolderData]
As
BEGIN
    select * from UnitHoldersData
END
GO


