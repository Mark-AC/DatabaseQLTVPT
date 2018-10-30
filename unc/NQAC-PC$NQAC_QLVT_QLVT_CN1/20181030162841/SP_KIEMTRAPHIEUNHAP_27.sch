drop Procedure [dbo].[SP_KIEMTRAPHIEUNHAP]
go

SET QUOTED_IDENTIFIER ON
go
SET ANSI_NULLS ON
go
CREATE PROC [dbo].[SP_KIEMTRAPHIEUNHAP]
@VALUE int OUTPUT
AS
DECLARE @GIATRI int
SET @GIATRI = (select COUNT(*) from DatHang as DH where DH.MasoDDH not in (select MasoDDH from PhieuNhap)
)
IF(@GIATRI>0)
SET @VALUE = 1
ELSE 
SET @VALUE = 0
go
