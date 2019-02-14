CREATE TABLE [HR].[Wynagrodzenie] (
    [Wynagrodzenie_Id]     INT             IDENTITY (1, 1) NOT NULL,
    [Wynagrodzenie_Kwota]  DECIMAL (12, 2) NOT NULL,
    [Wynagrodzenie_DataOd] DATE            NOT NULL,
    [Wynagrodzenie_DataDo] DATE            NULL,
    [Pracownik_Id]         INT             NOT NULL,
    CONSTRAINT [PK_Wynagrodzenie] PRIMARY KEY CLUSTERED ([Wynagrodzenie_Id] ASC),
    CONSTRAINT [FK_Wynagrodzenie_Pracownik] FOREIGN KEY ([Pracownik_Id]) REFERENCES [dbo].[Pracownik] ([Pracownik_Id])
);

