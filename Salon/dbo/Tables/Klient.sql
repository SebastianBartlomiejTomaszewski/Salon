CREATE TABLE [dbo].[Klient] (
    [Klient_Id]       INT           IDENTITY (1, 1) NOT NULL,
    [Klient_No]       NCHAR (9)     NOT NULL,
    [Klient_Nazwisko] NVARCHAR (50) NOT NULL,
    [Klient_Imie]     NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Klient] PRIMARY KEY CLUSTERED ([Klient_Id] ASC),
    CONSTRAINT [UQ_Klient_No] UNIQUE NONCLUSTERED ([Klient_No] ASC)
);

