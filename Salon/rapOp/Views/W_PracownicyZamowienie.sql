CREATE VIEW [rapOp].[W_PracownicyZamowienie] AS
	SELECT [p].[Pracownik_Nazwisko], p.[Pracownik_Imie], COUNT(z.Zamowienia_Id) AS [IloscZamowien], SUM(z.Zamowienia_Cena) AS [KwotaZamowienia]
	FROM [dbo].[Pracownik] AS p WITH (NOLOCK) LEFT JOIN [dbo].[Zamowienia] AS z ON p.Pracownik_Id = z.Pracownik_Id
	GROUP BY p.Pracownik_Id, [p].[Pracownik_Nazwisko], p.[Pracownik_Imie]