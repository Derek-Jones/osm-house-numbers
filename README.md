
Open Street Map London hack weekend August 2015

TeamL: Pavel, Derek

Data is derived from [Land registry](https://www.gov.uk/government/organisations/land-registry) house sales.
Information includes postcode, street and house number.

Extract cases where all house data within a given postcode is in the same street/road.

Also require that a street have more than one postcode associated
with it (this means we can work out which whether numbers increase/decrease
as we move along a street).

Find the min/max house number within a given postcode (data is
based on sales since 1995, so there may be house numbers outside
this range that we don't know about because they have not been sold in
the last 20 years).

Join the lat/long of the center of the post code (see files in pavel/).

Data saved in compressed form to reduce github download time.

We can now display the min/max house numbers on open streetmap
(text is placed at postcode lat/long).

We cannot guarantee that the data is 100% accurate, so it has not
been uploaded to OSM.

The next step is to generate an overlay containing the data, so
people can verify that particular house numbers are correct and
upload them to the OSM servers.

See directory Pavel for generating a file that osm.html can
read to produce a demo overlay.

