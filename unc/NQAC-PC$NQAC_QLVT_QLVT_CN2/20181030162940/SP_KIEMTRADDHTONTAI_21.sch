drop Procedure [dbo].[SP_KIEMTRADDHTONTAI]
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
CREATE PROCEDURE [dbo].[SP_KIEMTRADDHTONTAI]
@MADDH NCHAR(8) 
AS
BEGIN
	IF EXISTS( SELECT 1 FROM DBO.DatHang WHERE DBO.DatHang.MasoDDH= @MADDH)
	BEGIN 
		RETURN 1;
	END
	IF EXISTS( SELECT 1 FROM LINK.QLVT.DBO.DatHang ma WHERE ma.MasoDDH=@MADDH)
	BEGIN
		RETURN 1; 
	END 

	RETURN 0;
END
go
