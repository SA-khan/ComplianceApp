/****** Object:  StoredProcedure [dbo].[MatchingRecord]    Script Date: 10/5/2019 11:06:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROC [dbo].[MatchingRecord]
   @UnitHolderData_FULLNAME varchar(MAX),
   @UnitHolderData_EMAIL varchar(MAX),
   @UnitHolderData_PHONE varchar(MAX)
AS

   Declare @occuredIn VARCHAR(MAX)
   Declare @Record VARCHAR(MAX)
   Declare @UNListID VARCHAR(MAX)

   BEGIN

   SET @occuredIn = ''
   SET @Record = ''
   SET @UNListID = ''

   if not exists (select [COLUMN1] from EUConsolidatedFinancialSanctions where [COLUMN1] like '%' + @UnitHolderData_FULLNAME + '%' OR [COLUMN1] like '%' + @UnitHolderData_EMAIL + '%' OR [COLUMN1] like '%' + @UnitHolderData_PHONE + '%')
	    BEGIN
		   SET @occuredIn = ''
		END
   else
        BEGIN
        SET @occuredIn = 'EU Consolidated Financial Sanctions'
		SET @Record = (select TOP 1 [COLUMN1] from EUConsolidatedFinancialSanctions where ([COLUMN1] like '%' + @UnitHolderData_FULLNAME + '%'))
		SET @UNListID = (select TOP 1 [ID] from EUConsolidatedFinancialSanctions where ([COLUMN1] like '%' + @UnitHolderData_FULLNAME + '%'))
		insert into MatchedData ([UNIT_HOLDER_FIRST_NAME], [LIST_NAME],LIST_ID,[REMARKS]) values (@UnitHolderData_FULLNAME,@occuredIn,@UNListID,@Record)
		END

   if not exists (select [COLUMN2] from FIAMostWantedCyberCrimeCircle where [COLUMN2] like '%' + @UnitHolderData_FULLNAME + '%' OR [COLUMN2] like '%' + @UnitHolderData_EMAIL + '%' OR [COLUMN2] like '%' + @UnitHolderData_PHONE + '%')
	    BEGIN
		   SET @occuredIn = ''
		END
   else
        BEGIN
        SET @occuredIn = 'FIA Most Wanted Cyber Crime Circle'
		SET @Record = (select TOP 1 [COLUMN2] from FIAMostWantedCyberCrimeCircle where ([COLUMN2] like '%' + @UnitHolderData_FULLNAME + '%' OR [COLUMN2] like '%' + @UnitHolderData_EMAIL + '%' OR [COLUMN2] like '%' + @UnitHolderData_PHONE + '%'))
		SET @UNListID = (select TOP 1 [ID] from FIAMostWantedCyberCrimeCircle where ([COLUMN2] like '%' + @UnitHolderData_FULLNAME + '%' OR [COLUMN2] like '%' + @UnitHolderData_EMAIL + '%' OR [COLUMN2] like '%' + @UnitHolderData_PHONE + '%'))
		insert into MatchedData ([UNIT_HOLDER_FIRST_NAME], [LIST_NAME],LIST_ID,[REMARKS]) values (@UnitHolderData_FULLNAME,@occuredIn,@UNListID,@Record)
		END

   if not exists (select [COLUMN2] from FIAMostWantedHumanSmugglersAndTraffickers where [COLUMN2] like '%' + @UnitHolderData_FULLNAME + '%' OR [COLUMN2] like '%' + @UnitHolderData_EMAIL + '%' OR [COLUMN2] like '%' + @UnitHolderData_PHONE + '%')
	    BEGIN
		   SET @occuredIn = ''
		END
   else
        BEGIN
        SET @occuredIn = 'FIA Most Wanted Human Smugglers And Traffickers'
		SET @Record = (select TOP 1 [COLUMN2] from FIAMostWantedHumanSmugglersAndTraffickers where ([COLUMN2] like '%' + @UnitHolderData_FULLNAME + '%' OR [COLUMN2] like '%' + @UnitHolderData_EMAIL + '%' OR [COLUMN2] like '%' + @UnitHolderData_PHONE + '%'))
		SET @UNListID = (select TOP 1 [ID] from FIAMostWantedHumanSmugglersAndTraffickers where ([COLUMN2] like '%' + @UnitHolderData_FULLNAME + '%' OR [COLUMN2] like '%' + @UnitHolderData_EMAIL + '%' OR [COLUMN2] like '%' + @UnitHolderData_PHONE + '%'))
		insert into MatchedData ([UNIT_HOLDER_FIRST_NAME], [LIST_NAME],LIST_ID,[REMARKS]) values (@UnitHolderData_FULLNAME,@occuredIn,@UNListID,@Record)
		END

   if not exists (select Column2 from FIAMostWantedTerrorists where Column2 like '%' + @UnitHolderData_FULLNAME + '%' OR [COLUMN2] like '%' + @UnitHolderData_EMAIL + '%' OR [COLUMN2] like '%' + @UnitHolderData_PHONE + '%')
	    BEGIN
		   SET @occuredIn = ''
		END
   else
        BEGIN
        SET @occuredIn = 'FIA Most Wanted Terrorists'
		SET @Record = (select TOP 1 Column2 from FIAMostWantedTerrorists where (Column2 like '%' + @UnitHolderData_FULLNAME + '%' OR [COLUMN2] like '%' + @UnitHolderData_EMAIL + '%' OR [COLUMN2] like '%' + @UnitHolderData_PHONE + '%'))
		SET @UNListID = (select TOP 1 [ID] from FIAMostWantedTerrorists where (Column2 like '%' + @UnitHolderData_FULLNAME + '%' OR [COLUMN2] like '%' + @UnitHolderData_EMAIL + '%' OR [COLUMN2] like '%' + @UnitHolderData_PHONE + '%'))
		insert into MatchedData ([UNIT_HOLDER_FIRST_NAME], [LIST_NAME],LIST_ID,[REMARKS]) values (@UnitHolderData_FULLNAME,@occuredIn,@UNListID,@Record)
		END

   if not exists (select [COLUMN2] from OFACSpeciallyDesignatedNationalsAndBlockedEntities where [COLUMN2] like '%' + @UnitHolderData_FULLNAME + '%' OR [COLUMN2] like '%' + @UnitHolderData_EMAIL + '%' OR [COLUMN2] like '%' + @UnitHolderData_PHONE + '%')
	    BEGIN
		   SET @occuredIn = ''
		END
   else
        BEGIN
        SET @occuredIn = 'OFAC Specially Designated Nationals And Blocked Entities'
		SET @Record = (select TOP 1 Column2 from OFACSpeciallyDesignatedNationalsAndBlockedEntities where (Column2 like '%' + @UnitHolderData_FULLNAME + '%' OR [COLUMN2] like '%' + @UnitHolderData_EMAIL + '%' OR [COLUMN2] like '%' + @UnitHolderData_PHONE + '%'))
		SET @UNListID = (select TOP 1 [ID] from OFACSpeciallyDesignatedNationalsAndBlockedEntities where (Column2 like '%' + @UnitHolderData_FULLNAME + '%' OR [COLUMN2] like '%' + @UnitHolderData_EMAIL + '%' OR [COLUMN2] like '%' + @UnitHolderData_PHONE + '%'))
		insert into MatchedData ([UNIT_HOLDER_FIRST_NAME], [LIST_NAME],LIST_ID,[REMARKS]) values (@UnitHolderData_FULLNAME,@occuredIn,@UNListID,@Record)
		END

   if not exists (select [COLUMN2] from Proscribed_Organisation_NACTA where [COLUMN2] like '%' + @UnitHolderData_FULLNAME + '%' OR [COLUMN2] like '%' + @UnitHolderData_EMAIL + '%' OR [COLUMN2] like '%' + @UnitHolderData_PHONE + '%')
	    BEGIN
		   SET @occuredIn = ''
		END
   else
        BEGIN
        SET @occuredIn = 'Proscribed Organisation NACTA'
		SET @Record = (select TOP 1 Column2 from Proscribed_Organisation_NACTA where (Column2 like '%' + @UnitHolderData_FULLNAME + '%' OR [COLUMN2] like '%' + @UnitHolderData_EMAIL + '%' OR [COLUMN2] like '%' + @UnitHolderData_PHONE + '%'))
		SET @UNListID = (select TOP 1 [ID] from Proscribed_Organisation_NACTA where (Column2 like '%' + @UnitHolderData_FULLNAME + '%' OR [COLUMN2] like '%' + @UnitHolderData_EMAIL + '%' OR [COLUMN2] like '%' + @UnitHolderData_PHONE + '%'))
		insert into MatchedData ([UNIT_HOLDER_FIRST_NAME], [LIST_NAME],LIST_ID,[REMARKS]) values (@UnitHolderData_FULLNAME,@occuredIn,@UNListID,@Record)
		END

   if not exists (select TOP 1 [COLUMN1] from UNSecurityCouncilConsolidatedList where [COLUMN1] like '%' + @UnitHolderData_FULLNAME + '%' OR [COLUMN1] like '%' + @UnitHolderData_EMAIL + '%' OR [COLUMN1] like '%' + @UnitHolderData_PHONE + '%')
	    BEGIN
		   SET @occuredIn = ''
		END
   else
        BEGIN
        SET @occuredIn = 'UN Security Council Consolidated List'
		SET @Record = (select TOP 1 [COLUMN1] from UNSecurityCouncilConsolidatedList where ([COLUMN1] like '%' + @UnitHolderData_FULLNAME + '%' OR [COLUMN1] like '%' + @UnitHolderData_EMAIL + '%' OR [COLUMN1] like '%' + @UnitHolderData_PHONE + '%'))
		SET @UNListID = (select TOP 1 [ID] from UNSecurityCouncilConsolidatedList where ([COLUMN1] like '%' + @UnitHolderData_FULLNAME + '%' OR [COLUMN1] like '%' + @UnitHolderData_EMAIL + '%' OR [COLUMN1] like '%' + @UnitHolderData_PHONE + '%'))
		insert into MatchedData ([UNIT_HOLDER_FIRST_NAME], [LIST_NAME],LIST_ID,[REMARKS]) values (@UnitHolderData_FULLNAME,@occuredIn,@UNListID,@Record)
		END
        

   END

GO