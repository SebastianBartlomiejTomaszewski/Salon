CREATE TABLE [HR].[Stanowisko] (
    [Stanowisko_Id]    INT           IDENTITY (1, 1) NOT NULL,
    [Stanowisko_Nazwa] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Stanowisko] PRIMARY KEY CLUSTERED ([Stanowisko_Id] ASC),
    UNIQUE NONCLUSTERED ([Stanowisko_Nazwa] ASC),
    CONSTRAINT [UQ_Stanowisko_Nazwa] UNIQUE NONCLUSTERED ([Stanowisko_Nazwa] ASC)
);

