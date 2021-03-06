USE [AppleIncProject1]
GO
/****** Object:  Table [dbo].[SubDistributorInv]    Script Date: 2/2/2021 11:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubDistributorInv](
	[s_distributorInvID] [int] IDENTITY(1,1) NOT NULL,
	[s_distributorInvQuantity] [int] NULL,
	[s_distributorSource] [int] NULL,
	[s_distributorProduct] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[s_distributorInvID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SubDistributorInv]  WITH CHECK ADD  CONSTRAINT [fk_s_distributorProduct] FOREIGN KEY([s_distributorProduct])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[SubDistributorInv] CHECK CONSTRAINT [fk_s_distributorProduct]
GO
ALTER TABLE [dbo].[SubDistributorInv]  WITH CHECK ADD  CONSTRAINT [fk_s_distributorSource] FOREIGN KEY([s_distributorSource])
REFERENCES [dbo].[SubDistributor] ([s_distributorID])
GO
ALTER TABLE [dbo].[SubDistributorInv] CHECK CONSTRAINT [fk_s_distributorSource]
GO
