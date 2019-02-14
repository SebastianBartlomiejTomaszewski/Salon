CREATE TABLE [Serwis].[HistoriaZamowienia] (
    [HistoriaZamowienia_Id]   INT      NOT NULL,
    [HistoriaZamowienia_Data] DATETIME DEFAULT (getdate()) NOT NULL,
    [Zamowienia_Id]           INT      NOT NULL,
    [Pracownik_Id]            INT      NOT NULL,
    [StatusZamowienia_Id]     INT      NOT NULL,
    CONSTRAINT [PK_HistoriaZamowienia] PRIMARY KEY CLUSTERED ([HistoriaZamowienia_Id] ASC),
    CONSTRAINT [FK_HistoriaZamowienia_Pracownik] FOREIGN KEY ([Pracownik_Id]) REFERENCES [dbo].[Pracownik] ([Pracownik_Id]),
    CONSTRAINT [FK_HistoriaZamowienia_StatusZamowienia] FOREIGN KEY ([StatusZamowienia_Id]) REFERENCES [Serwis].[StatusZamowienia] ([StatusZamowienia_Id]),
    CONSTRAINT [FK_HistoriaZamowienia_Zamowienia] FOREIGN KEY ([Zamowienia_Id]) REFERENCES [Serwis].[Zamowienia] ([Zamowienia_Id])
);

