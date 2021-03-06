USE [AppleIncProject1]
GO
/****** Object:  Table [dbo].[ProductionHouse]    Script Date: 2/2/2021 11:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionHouse](
	[p_HouseID] [int] IDENTITY(1,1) NOT NULL,
	[p_HouseContinent] [varchar](20) NULL,
	[p_HouseBrand] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[p_HouseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductionHouse]  WITH CHECK ADD  CONSTRAINT [fk_p_HouseBrand] FOREIGN KEY([p_HouseBrand])
REFERENCES [dbo].[Brand] ([brandID])
GO
ALTER TABLE [dbo].[ProductionHouse] CHECK CONSTRAINT [fk_p_HouseBrand]
GO
