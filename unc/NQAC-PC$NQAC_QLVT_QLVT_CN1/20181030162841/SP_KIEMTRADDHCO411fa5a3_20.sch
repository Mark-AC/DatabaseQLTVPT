drop Procedure [dbo].[SP_KIEMTRADDHCOTRONGPHIEUNHAP]
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
CREATE PROCEDURE [dbo].[SP_KIEMTRADDHCOTRONGPHIEUNHAP]
@MADDH NCHAR(8)
AS
BEGIN
  DECLARE @DEM INT = 0
	SELECT @DEM = COUNT(*)
     FROM dbo.PhieuNhap as PN
     WHERE PN.MasoDDH= @MADDH 
	RETURN @DEM
END
go
