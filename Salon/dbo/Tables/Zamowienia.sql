CREATE TABLE [dbo].[Zamowienia] (
    [Zamowienia_Id]             INT             IDENTITY (1, 1) NOT NULL,
    [Zamowienia_Cena]           DECIMAL (12, 2) NOT NULL,
    [Zamowienia_DataOdbioru]    DATETIME        NOT NULL,
    [Zamowienia_DataZamowienia] DATETIME        NULL,
    [Zamowienia_Zrealizowane]   BIT             DEFAULT ((0)) NOT NULL,
    [Zamowienia_Zaplacone]      BIT             DEFAULT ((0)) NOT NULL,
    [Model_Id]                  INT             DEFAULT ((-1)) NOT NULL,
    [Pracownik_Id]              INT             DEFAULT ((-1)) NOT NULL,
    [Klient_Id]                 INT             DEFAULT ((-1)) NOT NULL,
    CONSTRAINT [PK_Zamowienia] PRIMARY KEY CLUSTERED ([Zamowienia_Id] ASC),
    CONSTRAINT [CH_Cena] CHECK ([Zamowienia_Cena]>(0)),
    CONSTRAINT [FK_Klient] FOREIGN KEY ([Klient_Id]) REFERENCES [dbo].[Klient] ([Klient_Id]) ON DELETE SET DEFAULT,
    CONSTRAINT [FK_Model] FOREIGN KEY ([Model_Id]) REFERENCES [dbo].[Model] ([Model_Id]) ON DELETE SET DEFAULT,
    CONSTRAINT [FK_Pracownik] FOREIGN KEY ([Pracownik_Id]) REFERENCES [dbo].[Pracownik] ([Pracownik_Id]) ON DELETE SET DEFAULT
);

