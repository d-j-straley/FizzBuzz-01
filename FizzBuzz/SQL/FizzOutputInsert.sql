USE [FizzBuzz]
GO

/****** Object:  StoredProcedure [dbo].[FizzOutputInsert]    Script Date: 8/1/2024 10:32:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

-- Insert record into table

CREATE PROCEDURE [dbo].[FizzOutputInsert]
	-- Add the parameters for the stored procedure here
@Results nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

insert into FizzOutput
(Results)

values

(@Results)

END
GO


