USE [DemoDatabase]
GO

/****** Object:  StoredProcedure [dbo].[MatchingRecord]    Script Date: 10/3/2019 6:02:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[MatchingRecord]
   @UnitHolderData_ID varchar(MAX),
   @UnitHolderData_PASSPORT varchar(MAX),
   @UnitHolderData_FIRSTNAME varchar(MAX),
   @UnitHolderData_LASTNAME varchar(MAX),
   @UnitHolderData_ADDRESS varchar(MAX),
   @UnitHolderData_PHONE varchar(MAX),
   @UnitHolderData_CITY varchar(MAX),
   @UnitHolderData_COUNTRY varchar(MAX)
AS

   Declare @occuredIn VARCHAR(MAX)

   BEGIN

   SET @occuredIn = ''

   if not exists (select [FIRST_NAME] from EUConsolidatedFinancialSanctions where [FIRST_NAME]=@UnitHolderData_FIRSTNAME)
	    BEGIN
		   SET @occuredIn = ''
		END
   else
        BEGIN
        SET @occuredIn = 'EU Consolidated Financial Sanctions'
		insert into MatchedData (UNIT_HOLDER_FIRST_NAME, LIST_NAME) values (@UnitHolderData_FIRSTNAME,@occuredIn)
		END

   if not exists (select [FIRST_NAME] from FIAMostWantedCyberCrimeCircle where [FIRST_NAME]=@UnitHolderData_FIRSTNAME)
	    BEGIN
		   SET @occuredIn = ''
		END
   else
        BEGIN
        SET @occuredIn = 'FIA Most Wanted Cyber Crime Circle'
		insert into MatchedData ([UNIT_HOLDER_FIRST_NAME], [LIST_NAME]) values (@UnitHolderData_FIRSTNAME,@occuredIn)
		END

   if not exists (select [FIRST_NAME] from FIAMostWantedHumanSmugglersAndTraffickers where [FIRST_NAME]=@UnitHolderData_FIRSTNAME)
	    BEGIN
		   SET @occuredIn = ''
		END
   else
        BEGIN
        SET @occuredIn = '@FIA Most Wanted Human Smugglers And Traffickers'
		insert into MatchedData ([UNIT_HOLDER_FIRST_NAME], [LIST_NAME]) values (@UnitHolderData_FIRSTNAME,@occuredIn)
		END

   if not exists (select [FIRST_NAME] from FIAMostWantedTerrorists where [FIRST_NAME]=@UnitHolderData_FIRSTNAME)
	    BEGIN
		   SET @occuredIn = ''
		END
   else
        BEGIN
        SET @occuredIn = 'FIA Most Wanted Terrorists'
		insert into MatchedData ([UNIT_HOLDER_FIRST_NAME], [LIST_NAME]) values (@UnitHolderData_FIRSTNAME,@occuredIn)
		END

   if not exists (select [FIRST_NAME] from OFACSpeciallyDesignatedNationalsAndBlockedEntities where [FIRST_NAME]=@UnitHolderData_FIRSTNAME)
	    BEGIN
		   SET @occuredIn = ''
		END
   else
        BEGIN
        SET @occuredIn = 'OFAC Specially Designated Nationals And Blocked Entities'
		insert into MatchedData ([UNIT_HOLDER_FIRST_NAME], [LIST_NAME]) values (@UnitHolderData_FIRSTNAME,@occuredIn)
		END

   if not exists (select [FIRST_NAME] from Proscribed_Organisation_NACTA where [FIRST_NAME]=@UnitHolderData_FIRSTNAME)
	    BEGIN
		   SET @occuredIn = ''
		END
   else
        BEGIN
        SET @occuredIn = 'Proscribed Organisation NACTA'
		insert into MatchedData ([UNIT_HOLDER_FIRST_NAME], [LIST_NAME]) values (@UnitHolderData_FIRSTNAME,@occuredIn)
		END

   if not exists (select [FIRST_NAME] from UNSecurityCouncilConsolidatedList where [FIRST_NAME]=@UnitHolderData_FIRSTNAME)
	    BEGIN
		   SET @occuredIn = ''
		END
   else
        BEGIN
        SET @occuredIn = 'UN Security Council Consolidated List'
		insert into MatchedData ([UNIT_HOLDER_FIRST_NAME], [LIST_NAME]) values (@UnitHolderData_FIRSTNAME,@occuredIn)
		END
        

   END
GO


