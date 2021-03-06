USE [AppleIncProject1]
GO
/****** Object:  Table [dbo].[Distributor]    Script Date: 2/2/2021 11:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distributor](
	[distributorID] [int] IDENTITY(1,1) NOT NULL,
	[distributorName] [varchar](20) NULL,
	[distributor_pHouse] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[distributorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Distributor]  WITH CHECK ADD  CONSTRAINT [fk_distributor_pHouse] FOREIGN KEY([distributor_pHouse])
REFERENCES [dbo].[ProductionHouse] ([p_HouseID])
GO
ALTER TABLE [dbo].[Distributor] CHECK CONSTRAINT [fk_distributor_pHouse]
GO
