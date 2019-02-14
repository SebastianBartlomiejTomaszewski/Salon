CREATE TABLE [Serwis].[StatusZamowienia] (
    [StatusZamowienia_Id]    INT           IDENTITY (1, 1) NOT NULL,
    [StatusZamowienia_Nazwa] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED ([StatusZamowienia_Id] ASC)
);

