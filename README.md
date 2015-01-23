# inegi-map
Haciendo un mapa con datos super pesados.

# Import  data to Postgres

`shp2pgsql -I -s 4326 Red_Vial.shp red_vial | psql -d dbinegi`

# Run Z Funtion on Postgres
https://github.com/mapbox/postgis-vt-util/blob/master/lib.sql

# Call data base from MS.




# Cambiar string to integer la comuna velociadad, 

`alter table red_vial_nad alter column velocidad TYPE INTEGER  USING (velocidad::integer) ;`