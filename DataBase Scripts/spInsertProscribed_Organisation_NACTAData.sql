USE [DemoDatabase]
GO

/****** Object:  StoredProcedure [dbo].[InsertProscribed_Organisation_NACTAData]    Script Date: 10/3/2019 6:00:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[InsertProscribed_Organisation_NACTAData]
   @FIRSTNAME varchar(max)
AS

BEGIN

INSERT INTO Proscribed_Organisation_NACTA(FIRST_NAME) VALUES (@FIRSTNAME);

END
GO


