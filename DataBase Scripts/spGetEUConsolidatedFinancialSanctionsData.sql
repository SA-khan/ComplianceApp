USE [DemoDatabase]
GO

/****** Object:  StoredProcedure [dbo].[GetEUConsolidatedFinancialSanctionsData]    Script Date: 10/3/2019 5:49:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[GetEUConsolidatedFinancialSanctionsData]
As
BEGIN
    select * from EUConsolidatedFinancialSanctions
END
GO


