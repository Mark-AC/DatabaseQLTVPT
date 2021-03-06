drop Table [dbo].[NhanVien]
go
SET ANSI_PADDING OFF
go

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MANV] [int] NOT NULL,
	[HO] [nvarchar](40) NOT NULL,
	[TEN] [nvarchar](10) NOT NULL,
	[DIACHI] [nvarchar](100) NULL,
	[NGAYSINH] [datetime] NULL,
	[LUONG] [float] NULL,
	[MACN] [nchar](10) NULL,
	[TrangThaiXoa] [int] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL
)

GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [DF_NhanVien_TrangThaiXoa]  DEFAULT ((0)) FOR [TrangThaiXoa]
GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [MSmerge_df_rowguid_181EB235BC8543D18F431C99B41881A8]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
SET ANSI_NULLS ON

go

SET QUOTED_IDENTIFIER ON

go

ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
