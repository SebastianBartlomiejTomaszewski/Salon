CREATE TABLE [HR].[Zespol] (
    [Zespol_Id]    INT           IDENTITY (1, 1) NOT NULL,
    [Zespol_Nazwa] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Zespol] PRIMARY KEY CLUSTERED ([Zespol_Id] ASC),
    UNIQUE NONCLUSTERED ([Zespol_Nazwa] ASC),
    CONSTRAINT [UQ_Zespol_Nazwa] UNIQUE NONCLUSTERED ([Zespol_Nazwa] ASC)
);

