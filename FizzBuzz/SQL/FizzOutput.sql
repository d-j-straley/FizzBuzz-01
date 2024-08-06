USE [FizzBuzz]
GO

/****** Object:  Table [dbo].[FizzOutput]    Script Date: 8/1/2024 10:31:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FizzOutput](
	[FizzID] [int] IDENTITY(1,1) NOT NULL,
	[Results] [nvarchar](50) NULL
) ON [PRIMARY]
GO


