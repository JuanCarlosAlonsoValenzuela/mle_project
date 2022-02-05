import json
import pandas as pd

df_price = pd.DataFrame(columns=['timestamp', 'price'])
df_demand = pd.DataFrame(columns=['timestamp', 'demand'])
df_emissions = pd.DataFrame(columns=['timestamp', 'emissions'])

years = ["2017", "2018", "2019", "2020", "2021"]
months = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"]

for year in years:
    for month in months:
        print('Adding date: {}-{}'.format(year, month))

        # Generate price file
        price_file = open('extracted_data/precios/{}-{}.json'.format(year, month))
        price_json = json.load(price_file)
        prices_values = price_json['included'][0]['attributes']['values']

        for price_value in prices_values:
            row = {'timestamp': price_value['datetime'],
                   'price': price_value['value']}
            df_price = df_price.append(row, ignore_index=True)

        # Generate demand file
        demand_file = open('extracted_data/demanda/{}-{}.json'.format(year, month))
        demand_json = json.load(demand_file)
        demand_values = demand_json['included'][0]['attributes']['values']

        for demand_value in demand_values:
            row = {'timestamp': demand_value['datetime'],
                   'demand': demand_value['value']}
            df_demand = df_demand.append(row, ignore_index=True)

        # Generate emissions file
        emissions_file = open('extracted_data/emisiones/{}-{}.json'.format(year, month))
        emissions_json = json.load(emissions_file)
        emissions_values = emissions_json['included'][0]['attributes']['values']

        for emissions_value in emissions_values:
            row = {'timestamp': emissions_value['datetime'],
                   'emissions': emissions_value['value']}
            df_emissions = df_emissions.append(row, ignore_index=True)

# Export to csv
df_price.to_csv('extracted_data/csv/hour_prices.csv', index=False)
df_demand.to_csv('extracted_data/csv/hour_demand.csv', index=False)
df_emissions.to_csv('extracted_data/csv/hour_emissions.csv', index=False)