# iCal pre vývoz odpadu Čierna Voda

Na tejto stránke si môžete stiahnuť aktuálne odpadové kalendáre pre obec
Chorvátsky Grob (časť Čierna Voda) vo formáte iCalendar, ktorý podporujú bežné
kalendárové aplikácie ako napr. Google Calendar alebo Outlook.

## Návod

1. V tabuľke si nájdite frekvenciu vývozu, na ktorú je vaša domácnosť prihlásená
2. Kliknite na "Pridať kalendár" na príslušnom riadku

| Kód           | Frekvencia vývozu             |                                                                           |
| ------------- | ----------------------------- | ------------------------------------------------------------------------- |
| F12           | 1x do mesiaca (mesačná)       | [Pridať kalendár](webcal://grimmaldus.github.io/chorvatan-garbage/F12.ics) |
| F26           | 2x do mesiaca (dvojtýždňová)  | [Pridať kalendár](webcal://grimmaldus.github.io/chorvatan-garbage/F26.ics) |
| F52           | 4x do mesiaca (týždňová)      | [Pridať kalendár](webcal://grimmaldus.github.io/chorvatan-garbage/F52.ics) |

*Poznámka:* V prípade, že po kliknutí na odkaz sa nič neudeje, váš systém nie
je nakonfigurovaný na pridávanie kalendárov týmto spôsobom.  V takom prípade si
vo vašej kalendárovej aplikácii nájdite funkciu importovania kalendára z URL
adresy.  Túto adresu získate tak, že kliknete na "Pridať kalendár" pravým
tlačidlom myši a vyberiete "Kopírovať odkaz".

Kalendáre sú aktualizované pre rok 2025.

## Motivácia

Sme dvaja obyvatelia časti Čierna Voda, ktorí chceli pohodlnejší prístup k
[odpadovému kalendáru](https://chorvatan.sk/odpadovy-kalendar-cierna-voda/),
ktorý publikuje obec Chorvátsky Grob na svojej stránke, a tak sme si napísali
jednoduchý [program](https://github.com/grimmaldus/chorvatan-garbage) (Python
skript) na konverziu tohto HTML kalendára do `.ics` formátu.

## Licencia

Samotné `.ics` súbory na tejto stránke ako i program na ich generovanie sú
voľne dostupné pod verejnou licenciou
[GPLv3.0](https://sk.wikipedia.org/wiki/GNU_General_Public_License).

Autori:
* Michal Domonkos
* Daniel Bendík
