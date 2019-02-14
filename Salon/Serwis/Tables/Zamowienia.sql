CREATE TABLE [Serwis].[Zamowienia] (
    [Zamowienia_Id] INT IDENTITY (1, 1) NOT NULL,
    [Model_Id]      INT NOT NULL,
    [Serwis_Id]     INT NOT NULL,
    CONSTRAINT [PK_SerOrder] PRIMARY KEY CLUSTERED ([Zamowienia_Id] ASC),
    CONSTRAINT [FK_SerOrder_Model] FOREIGN KEY ([Model_Id]) REFERENCES [dbo].[Model] ([Model_Id]),
    CONSTRAINT [FK_SerOrder_Service] FOREIGN KEY ([Serwis_Id]) REFERENCES [Serwis].[Serwis] ([Serwis_Id])
);

