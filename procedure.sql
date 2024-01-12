CREATE PROCEDURE SumaWp�atWyp�at
	@KwotaWyp�at MONEY,
	@KwotaWp�at MONEY
AS
BEGIN
    WITH tabelaWp�at AS (
        SELECT
            CONVERT(DATE, T.DataCzasTransakcji) AS Dzie�,
            H.AdresIP,
            SUM(T.KwotaTransakcji) AS SumaWp�at
        FROM Transakcje T
        INNER JOIN Historia_logowania H ON T.LogowanieID = H.ID
        WHERE T.TypTransakcji = '1'
        GROUP BY CONVERT(DATE, T.DataCzasTransakcji), H.AdresIP
    ),
    tabelaWyp�at AS (
        SELECT
            CONVERT(DATE, T.DataCzasTransakcji) AS Dzie�,
            H.AdresIP,
            SUM(T.KwotaTransakcji) AS SumaWyp�at
        FROM Transakcje T
        INNER JOIN Historia_logowania H ON T.LogowanieID = H.ID
        WHERE T.TypTransakcji = '4'
        GROUP BY CONVERT(DATE, T.DataCzasTransakcji), H.AdresIP
    )

    SELECT
        COALESCE(W.Dzie�, Wy.Dzie�) AS Dzie�,
        COALESCE(W.AdresIP, Wy.AdresIP) AS AdresIP,
        COALESCE(W.SumaWp�at, 0) AS SumaWp�at,
        COALESCE(Wy.SumaWyp�at, 0) AS SumaWyp�at
    FROM tabelaWp�at W
    FULL JOIN tabelaWyp�at Wy ON W.AdresIP = Wy.AdresIP AND W.Dzie� = Wy.Dzie�
    WHERE ABS(Wy.SumaWyp�at) >= @KwotaWyp�at OR ABS(W.SumaWp�at) >= @KwotaWp�at
	ORDER BY Dzie�, AdresIP ASC;
END;

EXEC SumaWp�atWyp�at @KwotaWyp�at = 4000, @KwotaWp�at = 3000;