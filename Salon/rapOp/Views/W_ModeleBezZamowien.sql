CREATE VIEW [rapOp].[W_ModeleBezZamowien] AS
	SELECT [m].[Model_Nazwa]
	FROM [dbo].[Model] AS m WITH (NOLOCK)	LEFT JOIN [dbo].[Zamowienia] AS z ON [m].[Model_Id]=[z].[Model_Id] 
	WHERE [z].[Zamowienia_ID] IS NULL;