BINARY = waste2ics
DATADIR = data/2022
HTMLFILE = $(DATADIR)/waste.html

all: $(DATADIR)/K*.ics

$(DATADIR)/K12.ics: $(BINARY) $(DATADIR)/waste.html
	./$(BINARY) K12 $(HTMLFILE) $@

$(DATADIR)/K26.ics: $(BINARY) $(DATADIR)/waste.html
	./$(BINARY) K26 $(HTMLFILE) $@

$(DATADIR)/K52.ics: $(BINARY) $(DATADIR)/waste.html
	./$(BINARY) K52 $(HTMLFILE) $@
