__author__ = 'b'


import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from pandas.tools.plotting import autocorrelation_plot as acf
import statsmodels.api as sm
import json
import googlemaps

data_file = "../data/real_estate/buncombe_sample.csv"
server_key = 'AIzaSyCpy_YQJir5GIslpiZ8Lc_c0bWIE3Ajf3Q'
browser_key =

bunc_orig = pd.read_csv(data_file, delimiter=";", header = 0) #, parse_dates = ['day'])
brl = bunc_orig
brl = brl.astype(object)

bunc.columns.values.tolist()

test = brl['Seller_Address1'].to_json()
json.dumps(test )


addresses = brl[['Seller_Address2','Seller_City','Seller_State','Seller_Zip1']]

gmaps = googlemaps.Client(key=server_key)
res = gmaps.geocode('1600 Amphitheatre Parkway, Mountain View, CA')[0]




lat, lon = res.get('geometry').get('location').values()

# converting json to python object
def _json_object_hook(d): return namedtuple('X', d.keys())(*d.values())
def json2obj(data): return json.loads(data, object_hook=_json_object_hook)

x = json2obj(geocode_result)

json.load(geocode_result[0])