USE [AppleIncProject1]
GO
/****** Object:  Table [dbo].[Seller]    Script Date: 2/2/2021 11:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seller](
	[sellerID] [int] IDENTITY(1,1) NOT NULL,
	[sellerName] [varchar](20) NULL,
	[sellerPartner] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[sellerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Seller]  WITH CHECK ADD  CONSTRAINT [fk_sellerPartner] FOREIGN KEY([sellerPartner])
REFERENCES [dbo].[ChannelPartner] ([partnerID])
GO
ALTER TABLE [dbo].[Seller] CHECK CONSTRAINT [fk_sellerPartner]
GO
