USE [AppleIncProject1]
GO
/****** Object:  Table [dbo].[ProductionHouseInv]    Script Date: 2/2/2021 11:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionHouseInv](
	[ph_InvID] [int] IDENTITY(1,1) NOT NULL,
	[ph_InvQuantity] [int] NULL,
	[ph_Source] [int] NULL,
	[ph_Product] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ph_InvID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductionHouseInv]  WITH CHECK ADD  CONSTRAINT [fk_ph_Product] FOREIGN KEY([ph_Product])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[ProductionHouseInv] CHECK CONSTRAINT [fk_ph_Product]
GO
ALTER TABLE [dbo].[ProductionHouseInv]  WITH CHECK ADD  CONSTRAINT [fk_ph_Source] FOREIGN KEY([ph_Source])
REFERENCES [dbo].[ProductionHouse] ([p_HouseID])
GO
ALTER TABLE [dbo].[ProductionHouseInv] CHECK CONSTRAINT [fk_ph_Source]
GO
