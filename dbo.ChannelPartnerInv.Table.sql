USE [AppleIncProject1]
GO
/****** Object:  Table [dbo].[ChannelPartnerInv]    Script Date: 2/2/2021 11:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChannelPartnerInv](
	[partnerInvID] [int] IDENTITY(1,1) NOT NULL,
	[partnerInvQuantity] [int] NULL,
	[partnerSource] [int] NULL,
	[partnerProduct] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[partnerInvID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChannelPartnerInv]  WITH CHECK ADD  CONSTRAINT [fk_partnerProduct] FOREIGN KEY([partnerProduct])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[ChannelPartnerInv] CHECK CONSTRAINT [fk_partnerProduct]
GO
ALTER TABLE [dbo].[ChannelPartnerInv]  WITH CHECK ADD  CONSTRAINT [fk_partnerSource] FOREIGN KEY([partnerSource])
REFERENCES [dbo].[ChannelPartner] ([partnerID])
GO
ALTER TABLE [dbo].[ChannelPartnerInv] CHECK CONSTRAINT [fk_partnerSource]
GO
