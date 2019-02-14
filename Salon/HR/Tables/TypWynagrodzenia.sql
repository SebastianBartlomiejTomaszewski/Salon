CREATE TABLE [HR].[TypWynagrodzenia] (
    [TypWynagrodzenia_Id]    INT           IDENTITY (1, 1) NOT NULL,
    [TypWynagrodzenia_Nazwa] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_ZTypWynagrodzenia] PRIMARY KEY CLUSTERED ([TypWynagrodzenia_Id] ASC),
    UNIQUE NONCLUSTERED ([TypWynagrodzenia_Nazwa] ASC),
    CONSTRAINT [UQ_TypWynagrodzenia_Nazwa] UNIQUE NONCLUSTERED ([TypWynagrodzenia_Nazwa] ASC)
);

