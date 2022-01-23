DATADIR = data/2022
all:
	./waste2ics K12 $(DATADIR)/waste.html $(DATADIR)/K12.ics
	./waste2ics K26 $(DATADIR)/waste.html $(DATADIR)/K26.ics
	./waste2ics K52 $(DATADIR)/waste.html $(DATADIR)/K52.ics
