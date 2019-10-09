/****** Object:  StoredProcedure [dbo].[InsertUnitHoldersData]    Script Date: 10/5/2019 11:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER PROC [dbo].[InsertUnitHoldersData]
   @FULLNAME varchar(max),
   @EMAIL varchar(max),
   @PHONE varchar(max)
AS

BEGIN

INSERT INTO UnitHoldersData(FULLNAME,EMAIL,PHONE) VALUES (@FULLNAME,@EMAIL,@PHONE);

END

GO