import pandas as pd
import simplekml
kml = simplekml.Kml()
data = pd.read_csv('output.csv')
for index, row in data.iterrows():
# Generate a subset for a given major code
  if 'CB1 ' in row[1]:
    kml.newpoint(name=str(row[3]) + "-" + str(row[4]), coords=[(float(row[6]), float(row[5]))])
kml.save("osm-house-num.kml")

