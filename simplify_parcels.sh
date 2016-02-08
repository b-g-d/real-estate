############################################################
######################## PROPERTY / PARCELS PROCESSING
############################################################
# Choosing desired fields from property file 
cd ~/projects/real-estate/data/ 
ogr2ogr \
../json_data/parcels.json \
property.shp \
-f GeoJSON \
-t_srs EPSG:4326 \
-sql "SELECT CAST(LANDVALUE AS FLOAT)/ACREAGE acre_val FROM property WHERE ACREAGE > 0.000 AND CLASS = '100'" 

## simplifying the parcels
cd 
topojson -o bunc_res_parcels_simp.json -p --simplify-proportion .5 parcels.json
## moving new data file to server folder
cp /Users/b/Google\ Drive/Work/OpenNC/data/real_estate/json_data/bunc_res_parcels_simp.json /Users/b/Google\ Drive/Work/OpenNC/visualizations/bunc_d3vis/ 


