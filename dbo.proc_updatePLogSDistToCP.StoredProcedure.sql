USE [AppleIncProject1]
GO
/****** Object:  StoredProcedure [dbo].[proc_updatePLogSDistToCP]    Script Date: 2/2/2021 11:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_updatePLogSDistToCP]
(
	@productID int
)
AS
BEGIN

	declare @productPrice decimal(5,2)
	set @productPrice = (select productPrice from Product,ProductList where productNo = @productID AND productListProduct = productID )
	
	insert into ProductionLog values (GETDATE(),dbo.func_calculateSDistToCPPrice(@productPrice),'SubDistributor','Channel Partner','Product Shipped',@productID)
END
GO
