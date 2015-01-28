
##### Avoid a trouble supposed:

- Mapbox studio automatically does the calculation of extension in map, but it is error calculation:

	`-180,-85.0511,180,85.0511`

![screenshot from 2015-01-28 11 34 40](https://cloud.githubusercontent.com/assets/1152236/5942027/e3e92714-a6e2-11e4-92fc-23bfbab89b45.png)

this should be changed manually, for this we need to get the extensión of map, using:

	`SELECT ST_EXTENT(geom) from red_vial;`

	 result:

	 `-117.12270632869 14.5593058307667,-86.7434787749603 32.718167909526`
	 
![screenshot from 2015-01-28 11 42 19](https://cloud.githubusercontent.com/assets/1152236/5942028/e413fc6e-a6e2-11e4-882b-631d6b89bae7.png)