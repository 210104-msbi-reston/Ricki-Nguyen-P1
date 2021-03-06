USE [AppleIncProject1]
GO
/****** Object:  Table [dbo].[StoreInv]    Script Date: 2/2/2021 11:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoreInv](
	[storeInvID] [int] IDENTITY(1,1) NOT NULL,
	[storeInvQuantity] [int] NULL,
	[storeSource] [int] NULL,
	[storeProduct] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[storeInvID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StoreInv]  WITH CHECK ADD  CONSTRAINT [fk_storeProduct] FOREIGN KEY([storeProduct])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[StoreInv] CHECK CONSTRAINT [fk_storeProduct]
GO
ALTER TABLE [dbo].[StoreInv]  WITH CHECK ADD  CONSTRAINT [fk_storeSource] FOREIGN KEY([storeSource])
REFERENCES [dbo].[Seller] ([sellerID])
GO
ALTER TABLE [dbo].[StoreInv] CHECK CONSTRAINT [fk_storeSource]
GO
