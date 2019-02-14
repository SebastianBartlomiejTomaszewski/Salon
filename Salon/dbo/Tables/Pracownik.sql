CREATE TABLE [dbo].[Pracownik] (
    [Pracownik_Id]       INT           IDENTITY (1, 1) NOT NULL,
    [Pracownik_PESEL]    NCHAR (11)    NOT NULL,
    [Pracownik_Nazwisko] NVARCHAR (50) NOT NULL,
    [Pracownik_Imie]     NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Pracownik] PRIMARY KEY CLUSTERED ([Pracownik_Id] ASC),
    CONSTRAINT [UQ_Pracownik_PESEL] UNIQUE NONCLUSTERED ([Pracownik_PESEL] ASC)
);

