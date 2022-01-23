BINARY = waste2ics
DATADIR = data/2022

all: $(DATADIR)/K*.ics

$(DATADIR)/K12.ics: $(BINARY) $(DATADIR)/waste.html
	./$(BINARY) K12 $(DATADIR)/waste.html $(DATADIR)/K12.ics

$(DATADIR)/K26.ics: $(BINARY) $(DATADIR)/waste.html
	./$(BINARY) K26 $(DATADIR)/waste.html $(DATADIR)/K26.ics

$(DATADIR)/K52.ics: $(BINARY) $(DATADIR)/waste.html
	./$(BINARY) K52 $(DATADIR)/waste.html $(DATADIR)/K52.ics
