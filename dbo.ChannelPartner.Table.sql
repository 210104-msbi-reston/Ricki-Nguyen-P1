USE [AppleIncProject1]
GO
/****** Object:  Table [dbo].[ChannelPartner]    Script Date: 2/2/2021 11:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChannelPartner](
	[partnerID] [int] IDENTITY(1,1) NOT NULL,
	[partnerName] [varchar](20) NULL,
	[partnerDistributor] [int] NULL,
	[partnerZone] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[partnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChannelPartner]  WITH CHECK ADD  CONSTRAINT [fk_partnerDistributor] FOREIGN KEY([partnerDistributor])
REFERENCES [dbo].[SubDistributor] ([s_distributorID])
GO
ALTER TABLE [dbo].[ChannelPartner] CHECK CONSTRAINT [fk_partnerDistributor]
GO
