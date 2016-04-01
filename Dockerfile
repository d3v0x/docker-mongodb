FROM d3v0x/gentoo

RUN emerge-webrsync -v

RUN emerge dev-db/mongodb
RUN rm -rf /usr/portage

EXPOSE 27017

CMD usr/bin/mongod --dbpath /dbdata
