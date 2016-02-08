
## Converts the .shp files to json files. 
## to run for counties
ogr2ogr \
-f GeoJSON \
-t_srs EPSG:4326 \
-where "NAME = 'BUNCOMBE'" \
data/json_data/bunc_county.json \
data/countybounds/COUNTYBOUNDARYSHORELINE.shp


##  city boundaries
ogr2ogr \
-f GeoJSON \
-t_srs EPSG:4326 \
-where "CNTY_1 = 'BUNCOMBE'" \
data/json_data/bunc_cities.json \
data/citybounds/MunicipalBoundaries.shp

# for water
ogr2ogr \
-f GeoJSON \
-t_srs EPSG:4326 \
data/json_data/water.json \
data/water/ne_10m_rivers_lake_centerlines.shp


## roads
ogr2ogr \
-f GeoJSON \
-t_srs EPSG:4326 \
-where "COUNTY = 'BUNCOMBE' AND Ser_Class IN (1,2,3)" \
data/json_data/bunc_roads.json \
data/roads/ISRN_Roads.shp

## for parcels
ogr2ogr \
-f GeoJSON \
-t_srs EPSG:4326 \
-where "CLASS = '100'" \
data/json_data/bunc_res_parcels.json \
data/parcels/property.shp
