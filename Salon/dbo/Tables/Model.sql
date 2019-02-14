CREATE TABLE [dbo].[Model] (
    [Model_Id]    INT           IDENTITY (1, 1) NOT NULL,
    [Model_Kod]   NCHAR (10)    NOT NULL,
    [Model_Nazwa] NVARCHAR (50) NOT NULL,
    [Marka_Id]    INT           DEFAULT ((-1)) NOT NULL,
    CONSTRAINT [PK_Model] PRIMARY KEY CLUSTERED ([Model_Id] ASC),
    CONSTRAINT [FK_Marka] FOREIGN KEY ([Marka_Id]) REFERENCES [dbo].[Marka] ([Marka_Id]) ON DELETE SET DEFAULT,
    CONSTRAINT [UQ_Model_Kod] UNIQUE NONCLUSTERED ([Model_Kod] ASC)
);

