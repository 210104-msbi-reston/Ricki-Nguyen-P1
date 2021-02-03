USE [AppleIncProject1]
GO
/****** Object:  StoredProcedure [dbo].[proc_updateRLogCPToSDist]    Script Date: 2/2/2021 11:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_updateRLogCPToSDist]
(
	@productID int,
	@description varchar(50)
)
AS
BEGIN
	
	insert into ReturnLog values(GETDATE(),'Channel Partner','SubDistributor',@description,@productID)
	
END
GO
