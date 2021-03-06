USE [AppleIncProject1]
GO
/****** Object:  View [dbo].[view_ProductReturnHistory]    Script Date: 2/2/2021 11:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_ProductReturnHistory] AS
		select productNo as [Serial Number], productName as [Product Name], productType as [Product Type], returnLogDate as [Transfer Date], returnLogDescription as [Description], returnLogSource as [Source], returnLogDestination as [Destination]
		from ProductList, Product, ReturnLog
		where
			productListProduct = productID AND 
			productNo = returnLogProduct
GO
