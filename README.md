# iCal for waste collection in Chorvátsky Grob

Waste collection dates in iCalendar format for the municipality of [Chorvátsky
Grob](https://en.wikipedia.org/wiki/Chorv%C3%A1tsky_Grob), Slovakia, generated
using the publicly available schedule at http://chorvatan.sk/.

This repo includes the `.ics` files as well as a script to generate them.

Currently, only the Čierna Voda district is included.

## Using `.ics` files

According to the type of waste collection service your household is subscribed
to, import one of the following files (or its URL) into your calendar
application (e.g. Google Calendar).

| Service       | Collection    | File                                                                                      |
| ------------- | ------------- | ----------------------------------------------------------------------------------------- |
| F12           | monthly       | [URL](https://raw.githubusercontent.com/grimmaldus/chorvatan-garbage/main/data/F12.ics)   |
| F26           | bi-weekly     | [URL](https://raw.githubusercontent.com/grimmaldus/chorvatan-garbage/main/data/F26.ics)   |
| F52           | weekly        | [URL](https://raw.githubusercontent.com/grimmaldus/chorvatan-garbage/main/data/F52.ics)   |

## Generating `.ics` files

```
$ make
```

This will download the HTML file, parse the table and create (update) the
`.ics` files in the `data/` directory.

### Requirements

Fedora packages:

* python3-beautifulsoup4
* python3-icalendar
* glibc-langpack-sk
* make

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
