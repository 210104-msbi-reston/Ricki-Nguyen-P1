USE [AppleIncProject1]
GO
/****** Object:  Table [dbo].[Warehouse]    Script Date: 2/2/2021 11:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse](
	[w_HouseID] [int] IDENTITY(1,1) NOT NULL,
	[w_HouseCountry] [varchar](20) NULL,
	[w_HousePH] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[w_HouseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Warehouse]  WITH CHECK ADD  CONSTRAINT [fk_w_HousePH] FOREIGN KEY([w_HousePH])
REFERENCES [dbo].[ProductionHouse] ([p_HouseID])
GO
ALTER TABLE [dbo].[Warehouse] CHECK CONSTRAINT [fk_w_HousePH]
GO
