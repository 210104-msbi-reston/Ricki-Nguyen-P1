USE [AppleIncProject1]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2/2/2021 11:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[customerID] [int] NOT NULL,
	[customerName] [varchar](30) NULL,
	[customerStore] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [fk_customerStore] FOREIGN KEY([customerStore])
REFERENCES [dbo].[Seller] ([sellerID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [fk_customerStore]
GO
