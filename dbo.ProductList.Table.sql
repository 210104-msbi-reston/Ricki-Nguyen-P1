USE [AppleIncProject1]
GO
/****** Object:  Table [dbo].[ProductList]    Script Date: 2/2/2021 11:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductList](
	[productNo] [int] IDENTITY(1,1) NOT NULL,
	[productListProduct] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[productNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductList]  WITH CHECK ADD  CONSTRAINT [fk_productListProduct] FOREIGN KEY([productListProduct])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[ProductList] CHECK CONSTRAINT [fk_productListProduct]
GO
