USE [AppleIncProject1]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 2/2/2021 11:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[brandID] [int] IDENTITY(1,1) NOT NULL,
	[brandName] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[brandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
