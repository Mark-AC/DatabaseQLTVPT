drop Procedure [dbo].[SP_INSERTDATHANG]
go

SET QUOTED_IDENTIFIER ON
go
SET ANSI_NULLS ON
go
CREATE PROC [dbo].[SP_INSERTDATHANG]
@MasoDDH	nchar(8),	
@Ngay date,
@NhaCC	nvarchar(100),	
@MANV	int,	
@MAKHO	nchar(4)	
AS

	INSERT INTO DatHang(MasoDDH,NGAY,NhaCC,MANV,MAKHO)
	VALUES(@MasoDDH,@Ngay,@NhaCC,@MANV,@MAKHO)
	
RETURN 0  -- THANH CONG

go
