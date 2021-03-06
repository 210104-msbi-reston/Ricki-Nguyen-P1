USE [AppleIncProject1]
GO
/****** Object:  Table [dbo].[ReturnLog]    Script Date: 2/2/2021 11:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnLog](
	[returnLogID] [int] IDENTITY(1,1) NOT NULL,
	[returnLogDate] [datetime] NULL,
	[returnLogSource] [varchar](20) NULL,
	[returnLogDestination] [varchar](20) NULL,
	[returnLogDescription] [varchar](50) NULL,
	[returnLogProduct] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[returnLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReturnLog]  WITH CHECK ADD  CONSTRAINT [fk_returnLogProduct] FOREIGN KEY([returnLogProduct])
REFERENCES [dbo].[ProductList] ([productNo])
GO
ALTER TABLE [dbo].[ReturnLog] CHECK CONSTRAINT [fk_returnLogProduct]
GO
