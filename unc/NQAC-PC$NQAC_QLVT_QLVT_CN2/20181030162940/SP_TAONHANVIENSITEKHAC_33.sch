drop Procedure [dbo].[SP_TAONHANVIENSITEKHAC]
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
CREATE PROCEDURE [dbo].[SP_TAONHANVIENSITEKHAC] 
	@MANV INT,
	@HO nvarchar(40),
	@TEN nvarchar(10),
	@DIACHI nvarchar(100),
	@NGAYSINH datetime,
	@LUONG float,
	@MACN nchar(10)
AS
BEGIN
	INSERT INTO LINK.QLVT.dbo.NhanVien(MANV, HO, TEN, DIACHI, NGAYSINH, LUONG, MACN, TrangThaiXoa)
	VALUES (@MANV, @HO, @TEN, @DIACHI,@NGAYSINH,@LUONG,@MACN,0);
END

go
