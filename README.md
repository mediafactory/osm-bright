OSM Bright
==========
a fork by http://www.mediafactory.de

bright sample
![screenshot](https://raw.github.com/mediafactory/osm-bright/master/preview_bright.png)

black & white sample
![screenshot](https://raw.github.com/mediafactory/osm-bright/master/preview_bw.png)

OSM Bright is a sensible starting point for quickly making beautiful maps based
on an OpenStreetMap database. It is written in the [Carto][] styling language
and can be opened as a project in [TileMill][].

The style is still a work in progress and you are encouraged to use the
[issue tracker][] to note missing features or problems with the current
implementation. 

[Carto]: http://github.com/mapbox/carto/
[TileMill]: http://tilemill.com/
[issue tracker]: http://github.com/developmentseed/osm-bright/issues/

Setup Instructions
------------------

### 1. Set up PostgreSQL & PostGIS ###

If you don't already, you need to have [PostgreSQL][] installed & running with
a [PostGIS][] database setup within it. See the [PostGIS documentation][1] for
full information on how to do this

[PostgreSQL]: http://postgresql.org/
[PostGIS]: http://postgis.refractions.net/
[1]: http://postgis.refractions.net/documentation/manual-1.5/

### 2. Import OpenStreetMap data ###

You will need an OSM database extract in one of the following formats:

- .osm.pbf (binary; smallest & fastest)
- .osm.bz2 (compressed xml)
- .osm (xml)

You can find appropriate data extracts for a variety of regions at
<http://download.geofabrik.de/osm> or <http://downloads.cloudmade.com>. Exracts
of select metropolitan areas are available at <http://metro.teczno.com>. See
[the OSM wiki][2] for information about (very large) full-planet downloads.

You need to process this data and import it to your PostGIS database. You can
do this with either [Imposm][] or [osm2pgsql][]; see their respective websites
for installation instructions.

#### Using Imposm

If you are using Imposm, you should use the [included mapping configuration][4]
which includes a few important tags compared to the default. The Imposm import 
command looks like this:

    imposm -U <postgres_user> -d <postgis_database> \
      -m /path/to/osm-bright/imposm-mapping.py --read --write \
      --optimize --deploy-production-tables <data.osm.pbf>

See `imposm --help` or the [online documentation][3] for more details.

#### Using osm2pgsql

If you are using osm2pgsql the default style file should work well. The 
osm2pgsql import command looks like this:

    osm2pgsql -c -G -U <postgres_user> -d <postgis_database> <data.osm.pbf>

See `man osm2pgsql` or the [online documentation][5] for more details.

[2]: http://wiki.openstreetmap.org/wiki/Planet
[Imposm]: http://imposm.org/
[3]: http://imposm.org/
[4]: https://github.com/mapbox/osm-bright/blob/master/imposm-mapping.py
[osm2pgsql]: http://wiki.openstreetmap.org/wiki/Osm2pgsql
[5]: http://wiki.openstreetmap.org/wiki/Osm2pgsql

### 3. Edit the configuration ###

You'll need to adjust some settings for things like your PostgreSQL connection
information.

1. Make a copy of `configure.sample.py` and name it `configure.py`.
2. Open `configure.py` in a text editor.
3. Make sure the "importer" option matches the program you used to import your 
   data (either "imposm" or "osm2pgsql").
4. Optionally change the name of your project from the default, 'OSM Bright'.
5. Adjust the path to point to your MapBox project folder.
6. Make any adjustments to the PostgreSQL connection settings. Your database
   may be set up so that you require a password or different user name.
7. Optionally adjust the query extents or shapefile locations. (Refer to the 
   comments in the configuration file for more information.)
8. Save & close the file.

### 4. Run make.py ###

This will create a new folder called "build" with your new project, customized
with the variables you set in `configure.py` and install a copy of this build
to your MapBox project folder. If you open up TileMill you should see your new
map in the project listing.

You're now ready to start editing the template in TileMill!
