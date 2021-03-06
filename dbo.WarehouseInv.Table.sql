USE [AppleIncProject1]
GO
/****** Object:  Table [dbo].[WarehouseInv]    Script Date: 2/2/2021 11:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WarehouseInv](
	[wh_InvID] [int] IDENTITY(1,1) NOT NULL,
	[wh_InvQuantity] [int] NULL,
	[wh_Source] [int] NULL,
	[wh_Product] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[wh_InvID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WarehouseInv]  WITH CHECK ADD  CONSTRAINT [fk_wh_Product] FOREIGN KEY([wh_Product])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[WarehouseInv] CHECK CONSTRAINT [fk_wh_Product]
GO
ALTER TABLE [dbo].[WarehouseInv]  WITH CHECK ADD  CONSTRAINT [fk_wh_Source] FOREIGN KEY([wh_Source])
REFERENCES [dbo].[Warehouse] ([w_HouseID])
GO
ALTER TABLE [dbo].[WarehouseInv] CHECK CONSTRAINT [fk_wh_Source]
GO
