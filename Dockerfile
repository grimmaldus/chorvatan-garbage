FROM fedora

RUN dnf install -y \
    python3-beautifulsoup4 \
    python3-icalendar \
    glibc-langpack-sk \
    make

WORKDIR /app
COPY Makefile waste2ics ./

CMD make