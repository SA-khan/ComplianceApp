/****** Object:  StoredProcedure [dbo].[GetEUConsolidatedFinancialSanctionsData]    Script Date: 10/5/2019 10:54:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[GetEUConsolidatedFinancialSanctionsData]
As
BEGIN
    select * from EUConsolidatedFinancialSanctions
END

GO