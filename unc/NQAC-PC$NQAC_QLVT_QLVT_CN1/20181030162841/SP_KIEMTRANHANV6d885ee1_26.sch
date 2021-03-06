drop Procedure [dbo].[SP_KIEMTRANHANVIENTONTAI]
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
CREATE PROCEDURE [dbo].[SP_KIEMTRANHANVIENTONTAI] 
	@MANV INT 
AS
BEGIN
	IF EXISTS( SELECT 1 FROM DBO.NhanVien WHERE DBO.NhanVien.MANV= @MANV)
	BEGIN 
		RETURN 1;
	END
	IF EXISTS( SELECT 1 FROM LINK.QLVT.DBO.NhanVien NV WHERE NV.MANV=@MANV)
	BEGIN
		RETURN 1; 
	END 

	RETURN 0;
END

go
