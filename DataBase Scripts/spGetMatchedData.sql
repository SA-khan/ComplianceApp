USE [DemoDatabase]
GO

/****** Object:  StoredProcedure [dbo].[GetMatchedData]    Script Date: 10/3/2019 5:53:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetMatchedData]
AS
BEGIN
	SELECT * from MatchedData;
END
GO


