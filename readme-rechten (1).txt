RECHTEN ARNHEM RP — BEDOELDE STRUCTUUR

1. Jelle — hoofdbeheerder, hoogste rang, volledige rechten. Username: jelle.
2. OHCD — korpsleiding, direct onder Jelle.
3. 11-01 en 11-02 — korpsleiding onder OHCD.
4. Het 05-team — onder 11-01 en 11-02.
5. Medewerkers — onder het 05-team.

Iedereen heeft een eigen gebruikersnaam en wachtwoord. Geen medewerker hoeft een Gmail-adres in het inlogscherm in te vullen.

Technische aandachtspunten:
- Supabase Auth gebruikt achter de schermen een accountidentiteit; het interne technische e-mailadres voor nieuwe medewerkers is niet bedoeld als loginnaam.
- Jelle's profiel is gekoppeld aan de bestaande Auth UID in supabase-arnhem-rp.sql.
- Serverrechten moeten leidend zijn; de browser mag geen rollen of toegangsrechten kunnen toekennen.
- OHCD, 11-01 en 11-02 mogen accounts aannemen volgens de serverfunctie. Jelle blijft beschermd tegen verwijderen.
- Controleer permissies in een testaccount voordat de site dagelijks gebruikt wordt.
