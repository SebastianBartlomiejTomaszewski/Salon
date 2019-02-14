CREATE TABLE [dbo].[Cennik] (
    [Cennik_Id]     INT             IDENTITY (1, 1) NOT NULL,
    [Cennik_Cena]   DECIMAL (12, 2) NOT NULL,
    [Cennik_DataOd] DATE            NOT NULL,
    [Cennik_DataDo] DATE            NULL,
    [Model_Id]      INT             DEFAULT ((-1)) NOT NULL,
    CONSTRAINT [PK_Cennik] PRIMARY KEY CLUSTERED ([Cennik_Id] ASC),
    CONSTRAINT [FL_Model] FOREIGN KEY ([Model_Id]) REFERENCES [dbo].[Model] ([Model_Id]) ON DELETE SET DEFAULT
);

