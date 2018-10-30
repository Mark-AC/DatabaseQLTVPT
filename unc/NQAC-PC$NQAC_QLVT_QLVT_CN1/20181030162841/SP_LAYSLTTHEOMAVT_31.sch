drop Procedure [dbo].[SP_LAYSLTTHEOMAVT]
go

SET QUOTED_IDENTIFIER ON
go
SET ANSI_NULLS ON
go
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_LAYSLTTHEOMAVT] 
	@MAVT NCHAR(4)
AS
BEGIN
	DECLARE @SLT INT
	SELECT @SLT = SOLUONGTON FROM DBO.Vattu WHERE MAVT = @MAVT
	RETURN @SLT
END

go
