ARNHEM RP — GEBRUIKERSNAAMLOGIN + AUTOMATISCHE ROEPNUMMERS

BELANGRIJK
- Deze ZIP is voorbereid, maar kan niet vanuit deze chat in jouw Netlify/Supabase-accounts worden gepubliceerd of live getest.
- Deel nooit SUPABASE_SECRET_KEY, service_role-sleutels of wachtwoorden.
- De login gebruikt voortaan uitsluitend de serverfunctie; er is geen onveilige lokale demo-login als de server faalt.

1. SUPABASE DATABASE
- Open het juiste Supabase-project: 'opslag armhen'.
- Ga naar SQL Editor > New query.
- Open het bestand supabase-arnhem-rp.sql uit deze ZIP en kopieer de volledige inhoud.
- Plak in SQL Editor en klik Run.
- Dit maakt de benodigde portal-tabellen indien ze ontbreken en koppelt het profiel 'jelle' aan de bestaande Auth UID.
- Controleer eerst in Authentication > Users dat UID 49725b20-3677-4597-9c56-d1cb7e3e6cc7 bij jellegame8@gmail.com hoort.
- Voer de SQL slechts één keer uit; controleer eventuele foutmeldingen.

2. NETLIFY ENVIRONMENT VARIABLES
Netlify > jouw site > Site configuration > Environment variables:
- SUPABASE_URL = https://xtrfgzqtbxnhouemlxel.supabase.co
- SUPABASE_SECRET_KEY = jouw server-side Supabase secret/service-role key
Gebruik alleen een server-side sleutel. Zet deze NOOIT in index.html of in een publiek bestand.
Na wijzigen van environment variables moet je opnieuw deployen.

3. PUBLICEREN
- Upload de inhoud van deze ZIP naar Netlify als deploy met de volledige mapstructuur.
- Controleer dat netlify/functions/portal-auth.mjs en netlify.toml op de juiste plek staan.
- Wacht tot de deploy succesvol is.

4. EERSTE TEST
- Open https://lucky-douhua-20b4cc.netlify.app in een privévenster.
- Log in met gebruikersnaam 'jelle' en het bestaande wachtwoord van het Supabase-account jellegame8@gmail.com.
- Het Gmail-adres is niet nodig op het inlogscherm; het wordt alleen achter de schermen aan het bestaande Supabase-account gekoppeld.
- Test daarna met een tijdelijk testaccount of aanmaken/inloggen werkt vóór je echte medewerkers toevoegt.

5. AUTOMATISCHE ROEPNUMMERS
- Roepnummers worden door de server toegekend bij het aanmaken van een account.
- OHCD krijgt roepnummer OHCD; Korpsleiding krijgt het eerste vrije nummer 11-01 t/m 11-05; overige rangen krijgen het eerste vrije nummer in hun rangreeks.
- Het wachtwoord-command voor Jelle is verwijderd uit het portaal.

6. NIEUWE MEDEWERKERS
- Bevoegde accounts kunnen gebruikers via het portaal aanmaken.
- De serverfunctie maakt een Supabase Auth-account aan met een intern technisch e-mailadres op @arnhem-rp.local. Medewerkers hoeven dat adres niet te kennen; zij gebruiken alleen hun gebruikersnaam en wachtwoord.
- De hiërarchie/rechten staan beschreven in README-rechten.txt.

ALS ER EEN FOUT KOMT
Stuur alleen de foutmeldingtekst. Deel geen wachtwoorden, tokens of geheime sleutels.

7. JELLE-PROFIEL BEWERKEN
- Jelle kan via Gebruikersbeheer zijn eigen rollen, rang en roepnummer aanpassen.
- Het account 'jelle' kan niet worden hernoemd of verwijderd.
- Kies na het aanpassen van rang/rollen een passend roepnummer; de server controleert op dubbele roepnummers.
