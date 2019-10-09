/****** Object:  StoredProcedure [dbo].[InsertProscribed_Organisation_NACTAData]    Script Date: 10/5/2019 11:04:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROC [dbo].[InsertProscribed_Organisation_NACTAData]
   @COLUMN1 varchar(max),
   @COLUMN2 varchar(max),
   @COLUMN3 varchar(max),
   @COLUMN4 varchar(max)
AS

BEGIN

INSERT INTO Proscribed_Organisation_NACTA(COLUMN1,COLUMN2,COLUMN3,COLUMN4) VALUES (@COLUMN1,@COLUMN2,@COLUMN3,@COLUMN4);

END

GO