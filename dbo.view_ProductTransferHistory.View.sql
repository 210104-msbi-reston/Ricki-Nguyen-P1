USE [AppleIncProject1]
GO
/****** Object:  View [dbo].[view_ProductTransferHistory]    Script Date: 2/2/2021 11:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE VIEW [dbo].[view_ProductTransferHistory] AS
		select productNo as [Serial Number], productName as [Product Name], productType as [Product Type], productionLogDate as [Transfer Date], productionLogDescription as [Description], productionLogSource as [Source], productionLogDestination as [Destination]
		from ProductList, Product, ProductionLog
		where
			productListProduct = productID AND 
			productNo = productionLogProduct
GO
