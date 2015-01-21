# inegi-map
Haciendo un mapa con datos super pesados.

# Import  data to Postgres

`shp2pgsql -I -s 4326 Red_Vial.shp red_vial | psql -d dbinegi`

# Run Z Funtion on Postgres
https://github.com/mapbox/postgis-vt-util/blob/master/lib.sql

# Call data base from MS.
