/****** Object:  StoredProcedure [dbo].[GetMatchedData]    Script Date: 10/5/2019 10:57:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[GetMatchedData]
AS
BEGIN
	SELECT * from MatchedData;
END

GO
