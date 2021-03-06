drop Procedure [dbo].[SP_INSERTPHIEUNHAP]
go

SET QUOTED_IDENTIFIER ON
go
SET ANSI_NULLS ON
go
CREATE PROC [dbo].[SP_INSERTPHIEUNHAP]
@MAPN	nchar(8),	
@Ngay date,
@MSDDH	nvarchar(8),	
@MANV	int,	
@MAKHO	nchar(4)	
AS

	INSERT INTO PhieuNhap(MAPN,NGAY,MasoDDH,MANV,MAKHO)
	VALUES(@MAPN,@Ngay,@MSDDH,@MANV,@MAKHO)
	
RETURN 0  -- THANH CONG

go
