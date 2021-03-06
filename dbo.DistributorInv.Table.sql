USE [AppleIncProject1]
GO
/****** Object:  Table [dbo].[DistributorInv]    Script Date: 2/2/2021 11:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DistributorInv](
	[distributorInvID] [int] IDENTITY(1,1) NOT NULL,
	[distributorInvQuantity] [int] NULL,
	[distributorSource] [int] NULL,
	[distributorProduct] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[distributorInvID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DistributorInv]  WITH CHECK ADD  CONSTRAINT [fk_distributorProduct] FOREIGN KEY([distributorProduct])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[DistributorInv] CHECK CONSTRAINT [fk_distributorProduct]
GO
ALTER TABLE [dbo].[DistributorInv]  WITH CHECK ADD  CONSTRAINT [fk_distributorSource] FOREIGN KEY([distributorSource])
REFERENCES [dbo].[Distributor] ([distributorID])
GO
ALTER TABLE [dbo].[DistributorInv] CHECK CONSTRAINT [fk_distributorSource]
GO
