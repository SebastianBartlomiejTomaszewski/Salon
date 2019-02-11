CREATE TABLE [dbo].[Cennik] (
    [Cennik_Id]     INT             IDENTITY (1, 1) NOT NULL,
    [Cennik_Cena]   DECIMAL (12, 2) NOT NULL,
    [Cennik_DataOd] DATE            NOT NULL,
    [Cennik_DataDo] DATE            NULL,
    PRIMARY KEY CLUSTERED ([Cennik_Id] ASC)
);

