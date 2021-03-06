drop Procedure [dbo].[SP_KIEMTRAPN_TONTAI]
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
CREATE PROCEDURE [dbo].[SP_KIEMTRAPN_TONTAI]
@MAPN NCHAR(8) 
AS
BEGIN
	IF EXISTS( SELECT 1 FROM DBO.PhieuNhap WHERE DBO.PhieuNhap.MAPN= @MAPN)
	BEGIN 
		RETURN 1;
	END
	IF EXISTS( SELECT 1 FROM LINK.QLVT.DBO.PhieuNhap ma WHERE ma.MAPN=@MAPN)
	BEGIN
		RETURN 1; 
	END 

	RETURN 0;
END
go
