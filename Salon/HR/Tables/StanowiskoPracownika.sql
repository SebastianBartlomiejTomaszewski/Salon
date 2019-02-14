CREATE TABLE [HR].[StanowiskoPracownika] (
    [StanowiskoPracownika_Id]     INT  IDENTITY (1, 1) NOT NULL,
    [StanowiskoPracownika_DataOd] DATE NOT NULL,
    [StanowiskoPracownika_DataDo] DATE NULL,
    [Pracownik_Id]                INT  NOT NULL,
    [Stanowisko_Id]               INT  NOT NULL,
    CONSTRAINT [PK_StanowiskoPracownika] PRIMARY KEY CLUSTERED ([StanowiskoPracownika_Id] ASC),
    CONSTRAINT [CH_StanowiskoPracownika_Data] CHECK ([StanowiskoPracownika_DataOd]>[StanowiskoPracownika_DataDo]),
    CONSTRAINT [FK_StanowiskoPracownika_Pracownik] FOREIGN KEY ([Pracownik_Id]) REFERENCES [dbo].[Pracownik] ([Pracownik_Id]),
    CONSTRAINT [FK_StanowiskoPracownika_Stanowisko] FOREIGN KEY ([Stanowisko_Id]) REFERENCES [HR].[Stanowisko] ([Stanowisko_Id])
);

