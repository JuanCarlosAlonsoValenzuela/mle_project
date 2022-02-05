import pandas as pd

df_price = pd.read_csv('extracted_data/csv/hour_prices.csv')
df_demand = pd.read_csv('extracted_data/csv/hour_demand.csv')
df_emissions = pd.read_csv('extracted_data/csv/hour_emissions.csv')

df_final = df_price.merge(df_demand, on='timestamp', how='inner')

df_final = df_final.merge(df_emissions, on='timestamp', how='inner')

print(df_final.head())

print(df_final.tail())

print(len(df_final))


df_final.to_csv('extracted_data/csv/hour_merged.csv', index=False)