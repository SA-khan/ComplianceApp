USE [DemoDatabase]
GO

/****** Object:  StoredProcedure [dbo].[InsertEUConsolidatedFinancialSanctionsData]    Script Date: 10/3/2019 5:56:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[InsertEUConsolidatedFinancialSanctionsData]
   @FIRSTNAME varchar(max)
AS

BEGIN

INSERT INTO EUConsolidatedFinancialSanctions(FIRST_NAME) VALUES (@FIRSTNAME);

END
GO


