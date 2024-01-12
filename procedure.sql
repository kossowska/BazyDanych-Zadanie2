-- USE Kossowska_Paulina_329526_projekt2;

CREATE PROCEDURE SumaWp³atWyp³at
	@KwotaWyp³at MONEY,
	@KwotaWp³at MONEY
AS
BEGIN
    WITH tabelaWp³at AS (
        SELECT
            CONVERT(DATE, T.DataCzasTransakcji) AS Dzieñ,
            H.AdresIP,
            SUM(T.KwotaTransakcji) AS SumaWp³at
        FROM Transakcje T
        INNER JOIN Historia_logowania H ON T.LogowanieID = H.ID
        WHERE T.TypTransakcji = '1'
        GROUP BY CONVERT(DATE, T.DataCzasTransakcji), H.AdresIP
    ),
    tabelaWyp³at AS (
        SELECT
            CONVERT(DATE, T.DataCzasTransakcji) AS Dzieñ,
            H.AdresIP,
            SUM(T.KwotaTransakcji) AS SumaWyp³at
        FROM Transakcje T
        INNER JOIN Historia_logowania H ON T.LogowanieID = H.ID
        WHERE T.TypTransakcji = '4'
        GROUP BY CONVERT(DATE, T.DataCzasTransakcji), H.AdresIP
    )

    SELECT
        COALESCE(W.Dzieñ, Wy.Dzieñ) AS Dzieñ,
        COALESCE(W.AdresIP, Wy.AdresIP) AS AdresIP,
        COALESCE(W.SumaWp³at, 0) AS SumaWp³at,
        COALESCE(Wy.SumaWyp³at, 0) AS SumaWyp³at
    FROM tabelaWp³at W
    FULL JOIN tabelaWyp³at Wy ON W.AdresIP = Wy.AdresIP AND W.Dzieñ = Wy.Dzieñ
    WHERE ABS(Wy.SumaWyp³at) >= @KwotaWyp³at OR ABS(W.SumaWp³at) >= @KwotaWp³at
	ORDER BY Dzieñ, AdresIP ASC;
END;

EXEC SumaWp³atWyp³at @KwotaWyp³at = 4000, @KwotaWp³at = 3000;
