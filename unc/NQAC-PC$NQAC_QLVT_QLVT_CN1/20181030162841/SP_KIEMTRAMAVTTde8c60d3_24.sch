drop Procedure [dbo].[SP_KIEMTRAMAVTTRONGPHIEU]
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
CREATE PROCEDURE [dbo].[SP_KIEMTRAMAVTTRONGPHIEU] 
@MAVT NCHAR(4)
AS
BEGIN
  DECLARE @DEM INT = 0
	SELECT @DEM = COUNT(*)
     FROM dbo.CTDDH as ctddh
     WHERE ctddh.MAVT= @MAVT 

	SELECT @DEM = @DEM + COUNT(*)
     FROM dbo.CTPN as ctpn
     WHERE ctpn.MAVT= @MAVT 

	SELECT @DEM =  @DEM + COUNT(*)
     FROM dbo.CTPX as ctpx
     WHERE ctpx.MAVT= @MAVT 
	RETURN @DEM
END

go
