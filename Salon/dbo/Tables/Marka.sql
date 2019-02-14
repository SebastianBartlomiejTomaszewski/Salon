CREATE TABLE [dbo].[Marka] (
    [Marka_Id]    INT           IDENTITY (1, 1) NOT NULL,
    [Marka_Kod]   NVARCHAR (20) NOT NULL,
    [Marka_Nazwa] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Marka] PRIMARY KEY CLUSTERED ([Marka_Id] ASC),
    CONSTRAINT [UQ_Marka_Kod] UNIQUE NONCLUSTERED ([Marka_Kod] ASC)
);

