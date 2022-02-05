import pandas as pd

df_price = pd.read_csv('extracted_data/csv/hour_prices.csv')
df_demand = pd.read_csv('extracted_data/csv/hour_demand.csv')
df_emissions = pd.read_csv('extracted_data/csv/hour_emissions.csv')

df_final = df_price.merge(df_demand, on='timestamp', how='inner')

df_final = df_final.merge(df_emissions, on='timestamp', how='inner')


def clean_datetime(timestamp):
    r = timestamp.replace(".000+01:00", "")
    r = r.replace(".000+02:00", "")
    return r

df_final['timestamp'] = df_final['timestamp'].apply(clean_datetime)

# Separate two columns by " "
df_final[['date', 'time']] = df_final['timestamp'].str.split('T', expand=True)

df_final = df_final.drop(columns=['timestamp'], axis=1)

print(df_final.head())

print(df_final.tail())

print(len(df_final))

df_final.to_csv('extracted_data/csv/hour_merged.csv', index=False)