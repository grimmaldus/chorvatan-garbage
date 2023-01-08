# iCal for waste collection in Chorvátsky Grob

Generate `.ics` files from the publicly available waste collection service
[calendar](https://chorvatan.sk/odpadovy-kalendar-cierna-voda/) of the
municipality of [Chorvátsky
Grob](https://en.wikipedia.org/wiki/Chorv%C3%A1tsky_Grob), Slovakia.

This repo includes the `.ics` files as well as a script to generate them.
Currently, only the Čierna Voda district is supported.

## Requirements

Fedora packages:

* python3-beautifulsoup4
* python3-icalendar
* glibc-langpack-sk
* make

## Generating `.ics` files

```
$ make
```

This will download the HTML file, parse the table and create (update) the
`.ics` files in the `docs/` directory.

## Publishing `.ics` files

```
$ make bump
```

This will increment the `SEQUENCE` number of each `VEVENT` record to signal an
update to the calendar applications consuming them.

Finally, review the diff, then commit and publish the files:

```
$ git push
```
