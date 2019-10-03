USE [DemoDatabase]
GO

/****** Object:  StoredProcedure [dbo].[GetProscribed_Organisation_NACTAData]    Script Date: 10/3/2019 5:55:04 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[GetProscribed_Organisation_NACTAData]
As
BEGIN
    select * from Proscribed_Organisation_NACTA
END
GO


