drop Procedure [dbo].[sp_KiemTraNhanVienLapPhieu]
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
CREATE PROCEDURE [dbo].[sp_KiemTraNhanVienLapPhieu]
	@MANV INT
AS
BEGIN
  DECLARE @DEM INT = 0
	SELECT @DEM = COUNT(*)
     FROM dbo.DatHang as dathang
     WHERE dathang.MANV= @MANV 

	SELECT @DEM = @DEM + COUNT(*)
     FROM dbo.PhieuNhap as phieunhap
     WHERE phieunhap.MANV= @MANV 

	SELECT @DEM =  @DEM + COUNT(*)
     FROM dbo.PhieuXuat as phieuxuat
     WHERE phieuxuat.MANV= @MANV 
	RETURN @DEM
END

go
