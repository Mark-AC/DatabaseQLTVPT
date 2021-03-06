drop Procedure [dbo].[SP_KIEMTRAMAKHOTRONGPHIEU]
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
CREATE PROCEDURE [dbo].[SP_KIEMTRAMAKHOTRONGPHIEU]
@MAKHO NCHAR(4)
AS
BEGIN
  DECLARE @DEM INT = 0
	SELECT @DEM = COUNT(*)
     FROM dbo.DatHang as dathang
     WHERE dathang.MAKHO= @MAKHO 

	SELECT @DEM = @DEM + COUNT(*)
     FROM dbo.PhieuNhap as phieunhap
     WHERE phieunhap.MAKHO= @MAKHO 

	SELECT @DEM =  @DEM + COUNT(*)
     FROM dbo.PhieuXuat as phieuxuat
     WHERE phieuxuat.MAKHO= @MAKHO 
	RETURN @DEM
END

go
