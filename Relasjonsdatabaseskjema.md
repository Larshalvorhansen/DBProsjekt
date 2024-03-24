## Tabeller og nøkler:

### Kunder
- PK: `kunde_id`
- Attributter: `mobilnummer`, `navn`, `adresse`
> Denne tabellen er i minst 3NF, da alle attributter synes å være avhengige kun av primærnøkkelen.

### Forestillinger
- PK: `forestilling_id`
- FK: `stykke_id` (refererer til Teaterstykker)
- Attributter: `dato`
> 3NF fordi alle attributter er avhengige av primærnøkkelen.

### Billetter
- PK: `billett_id`
- FK: `forestilling_id` (refererer til Forestillinger), `kunde_id` (refererer til Kunder), `stol_id` (refererer til Stoler)
- Attributter: `prisgruppe`, `pris`
> 3NF og potensielt 4NF siden det ikke er noen flerveis avhengigheter.

### Stoler
- PK: `stol_id`
- FK: `sal_id` (refererer til Saler)
- Attributter: `radnr`, `stolnr`, `omrade`
> 3NF. Attributtene er avhengige av stol_id, og det er ingen indikasjon på flerveis avhengigheter.

### Saler
- PK: `sal_id`
- Attributter: `navn`, `kapasitet`
> Attributtene er avhengige av sal_id, noe som tyder på 3NF.

### Medvirkende
- PK: `medvirkende_id`
- FK: `stykke_id` (refererer til Teaterstykker)
- Attributter: `navn`, `rolle`, `epost`, `ansattstatus`
> Tabellen er sannsynligvis i 3NF, og det ser ikke ut til å være noen flerveis avhengigheter for 4NF.

### Teaterstykker
- PK: `stykke_id`
- Attributter: `navn`
> Tabellen er i 3NF siden det bare er en attributt som er avhengig av primærnøkkelen.

### Roller
- PK: `rolle_id`
- FK: `stykke_id` (refererer til Teaterstykker)
- Attributter: `navn`
> 3NF er oppnådd her også.

### Skuespillere
- PK: `skuespiller_id`
- Attributter: `navn`
> Attributtene er avhengige av skuespiller_id, og tabellen er i 3NF.
