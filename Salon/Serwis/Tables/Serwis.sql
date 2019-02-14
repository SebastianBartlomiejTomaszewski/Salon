CREATE TABLE [Serwis].[Serwis] (
    [Serwis_Id]    INT           IDENTITY (1, 1) NOT NULL,
    [Serwis_Nazwa] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Serwis] PRIMARY KEY CLUSTERED ([Serwis_Id] ASC)
);

