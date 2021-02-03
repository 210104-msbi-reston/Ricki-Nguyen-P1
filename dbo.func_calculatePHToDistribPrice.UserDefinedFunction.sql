USE [AppleIncProject1]
GO
/****** Object:  UserDefinedFunction [dbo].[func_calculatePHToDistribPrice]    Script Date: 2/2/2021 11:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[func_calculatePHToDistribPrice]
( 
	@productPrice DECIMAL(5,2)
)
RETURNS DECIMAL(5,2)
BEGIN
	DECLARE @newPrice DECIMAL(5,2)
	SET @newPrice = @productPrice + (@productPrice * 0.08)
	RETURN @newPrice
END;
GO
