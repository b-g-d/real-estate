############################################################
############################################################
############################################################


# ## GATHERING INFO ON PROPERTIES
# ogrinfo -q parcels_simp.shp -sql "SELECT * FROM parcels_simp"

# ogrinfo -so property.shp -sql "SELECT * FROM property" # "summary only" of fields
# ogrinfo property.shp -geom=NO -sql "SELECT CAST(LANDVALUE AS FLOAT)/ACREAGE acre_val FROM property WHERE ACREAGE > 0.000"

## combining files together
topojson -o bunc.json \
bunc_cities.json \
bunc_roads.json \
water.json \
bunc_county.json 

topojson -o water_converted2.json --properties water.json \