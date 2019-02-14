CREATE TABLE [HR].[Wyplata] (
    [Wyplata_Id]          INT             IDENTITY (1, 1) NOT NULL,
    [Wyplata_Kwota]       DECIMAL (12, 2) NOT NULL,
    [Wyplata_DataOd]      DATE            NOT NULL,
    [Wyplata_DataDo]      DATE            NOT NULL,
    [Pracownik_Id]        INT             NOT NULL,
    [TypWynagrodzenia_Id] INT             NOT NULL,
    CONSTRAINT [PK_Wyplata] PRIMARY KEY CLUSTERED ([Wyplata_Id] ASC),
    CONSTRAINT [FK_Wyplata_Pracownik] FOREIGN KEY ([Pracownik_Id]) REFERENCES [dbo].[Pracownik] ([Pracownik_Id]),
    CONSTRAINT [FK_Wyplata_TypWynagrodzenia] FOREIGN KEY ([TypWynagrodzenia_Id]) REFERENCES [HR].[TypWynagrodzenia] ([TypWynagrodzenia_Id])
);

