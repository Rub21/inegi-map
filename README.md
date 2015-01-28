# inegi-map

### Step 1. Dowloand data from INEGI
descargar los datos de 

### Step 2. Import  data to Postgres

`shp2pgsql -I -s 4326 Red_Vial.shp red_vial | psql -d dbinegi`

### Step 3. Z Funtion on db dbinegi

https://github.com/mapbox/postgis-vt-util/blob/master/lib.sql

*Change string to integer in colum velocidad* 

`alter table red_vial_nad alter column velocidad TYPE INTEGER  USING (velocidad::integer) ;`


### Step 4. Call data base from MS.

![screenshot from 2015-01-28 11 15 49](https://cloud.githubusercontent.com/assets/1152236/5941450/1b67186c-a6df-11e4-8a23-c462e17570da.png)
![screenshot from 2015-01-28 11 16 06](https://cloud.githubusercontent.com/assets/1152236/5941451/1b691ac2-a6df-11e4-9d3b-1c279707a1dd.png)


#### Otra alternativa  usar [tippecanoe](https://github.com/mapbox/tippecanoe)

- Step 1: install in linux.

http://usefulmix.com/install-an-experimental-fork-of-homebrew-for-linux/