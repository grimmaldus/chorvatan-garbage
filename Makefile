URL = https://chorvatan.sk/odpadovy-kalendar-cierna-voda/
BINARY = waste2ics
DATADIR = docs
CACHEDIR = cache
ROOTFILE = $(CACHEDIR)/root.html
HTMLFILE = $(CACHEDIR)/data.html
PARSE_URL = python3 -c \
"from bs4 import BeautifulSoup; \
f = open('$(ROOTFILE)'); \
soup = BeautifulSoup(f.read(), 'html.parser'); \
print(soup.find_all('iframe')[0]['src']); \
f.close(); \
"

all: $(DATADIR)/F12.ics $(DATADIR)/F26.ics $(DATADIR)/F52.ics

bump: all
	$(eval SEQUENCE = $(shell grep '^SEQUENCE' $(DATADIR)/F12.ics | \
				  head -1 | cut -d':' -f2 | \
				  awk '{print $$1 + 1}'))
	@for FILE in F12 F26 F52; do \
	    sed -i '/^SEQUENCE/s/:.*$$/:$(SEQUENCE)\r/' \
		   $(DATADIR)/$${FILE}.ics; \
	done

$(ROOTFILE):
	@mkdir -p $(CACHEDIR)
	@curl -so $@ '$(URL)'

$(HTMLFILE): $(ROOTFILE)
	@curl -so $@ `$(call PARSE_URL)`

$(DATADIR)/F12.ics: $(BINARY) $(HTMLFILE)
	./$(BINARY) F12 $(HTMLFILE) > $@

$(DATADIR)/F26.ics: $(BINARY) $(HTMLFILE)
	./$(BINARY) F26 $(HTMLFILE) > $@

$(DATADIR)/F52.ics: $(BINARY) $(HTMLFILE)
	./$(BINARY) F52 $(HTMLFILE) > $@
