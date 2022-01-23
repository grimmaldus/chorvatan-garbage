# chorvatan-garbage
Generate an ICS file for waste collection using the table at
http://chorvatan.sk/odpadovy-kalendar-cierna-voda/.

## Usage
`$ ./waste2ics <K12|K26|K52> <HTML_FILE> <ICS_FILE>`

To regenerate the sample files in `data/`, run `make`.  Note that you'll need
to download the HTML file of the table from the above URL as
`data/2022/waste.html` in your working dir.
