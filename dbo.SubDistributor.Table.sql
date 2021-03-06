USE [AppleIncProject1]
GO
/****** Object:  Table [dbo].[SubDistributor]    Script Date: 2/2/2021 11:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubDistributor](
	[s_distributorID] [int] IDENTITY(1,1) NOT NULL,
	[s_distributorName] [varchar](20) NULL,
	[s_distributorMain] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[s_distributorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SubDistributor]  WITH CHECK ADD  CONSTRAINT [fk_s_distributorMain] FOREIGN KEY([s_distributorMain])
REFERENCES [dbo].[Distributor] ([distributorID])
GO
ALTER TABLE [dbo].[SubDistributor] CHECK CONSTRAINT [fk_s_distributorMain]
GO
