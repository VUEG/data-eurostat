#!/bin/bash

echo "Importing NUTS..."
shp2pgsql -I -T -s 4326 -d -g geom WDPA_June2015-shapefile/WDPA_June2015-shapefile-points.shp wdpa.wdpa_point | psql -h localhost -p 5432 -d gis -U gisuser -W
