USE [AppleIncProject1]
GO
/****** Object:  Table [dbo].[ProductionLog]    Script Date: 2/2/2021 11:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionLog](
	[productionLogID] [int] IDENTITY(1,1) NOT NULL,
	[productionLogDate] [datetime] NULL,
	[productionLogCurrentPrice] [decimal](5, 2) NULL,
	[productionLogSource] [varchar](20) NULL,
	[productionLogDestination] [varchar](20) NULL,
	[productionLogDescription] [varchar](50) NULL,
	[productionLogProduct] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[productionLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductionLog]  WITH CHECK ADD  CONSTRAINT [fk_productionLogProduct] FOREIGN KEY([productionLogProduct])
REFERENCES [dbo].[ProductList] ([productNo])
GO
ALTER TABLE [dbo].[ProductionLog] CHECK CONSTRAINT [fk_productionLogProduct]
GO
