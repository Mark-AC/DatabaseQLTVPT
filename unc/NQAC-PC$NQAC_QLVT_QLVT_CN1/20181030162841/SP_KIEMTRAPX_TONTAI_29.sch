drop Procedure [dbo].[SP_KIEMTRAPX_TONTAI]
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
CREATE PROCEDURE [dbo].[SP_KIEMTRAPX_TONTAI]
@MAPX NCHAR(8) 
AS
BEGIN
	IF EXISTS( SELECT 1 FROM DBO.PhieuXuat WHERE DBO.PhieuXuat.MAPX= @MAPX)
	BEGIN 
		RETURN 1;
	END
	IF EXISTS( SELECT 1 FROM LINK.QLVT.DBO.PhieuXuat ma WHERE ma.MAPX=@MAPX)
	BEGIN
		RETURN 1; 
	END 

	RETURN 0;
END
go
