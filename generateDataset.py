import requests
import json

URLprecios = "https://apidatos.ree.es/es/datos/mercados/precios-mercados-tiempo-real"

URLdemanda = "https://apidatos.ree.es/es/datos/demanda/demanda-tiempo-real"

URLEmisiones = "https://apidatos.ree.es/es/datos/generacion/evolucion-estructura-generacion-emisiones-asociadas"



years = ["2017","2018","2019", "2020", "2021"]
months = ["01","02","03","04","05","06","07","08","09","10","11","12"]
startDay = "01"
endDay = ["31","28","31","30","31","30","31","31","30","31","30","31"]
startHour = "00:00"
endHour = "23:59"


for y in years:
    for m in range(0,len(months)):

        startDate = y + "-" + months[m] + "-" + startDay + "T" + startHour
        endDate = y + "-" + months[m] + "-" + endDay[m] + "T" + endHour

        PARAMS = {'start_date':startDate, 'end_date':endDate,"time_trunc":"hour", 'geo_limit': 'peninsular'}

        demanda = requests.get(url=URLdemanda, params=PARAMS)
        precios = requests.get(url=URLprecios, params=PARAMS)
        emisiones = requests.get(url=URLEmisiones, params=PARAMS)

        demandaJ = json.dumps(demanda.json(), indent = 4)
        preciosJ = json.dumps(precios.json(), indent = 4)
        emisionesJ = json.dumps(emisiones.json(), indent = 4)

        filename = y + "-" + months[m]
        print("Generando datos para la fecha " + filename)
        with open("extracted_data/demanda/" + filename + ".json", "w") as outfile:
            outfile.write(demandaJ)
        with open("extracted_data/precios/" + filename + ".json", "w") as outfile:
            outfile.write(preciosJ)
        with open("extracted_data/emisiones/" + filename + ".json", "w") as outfile:
            outfile.write(emisionesJ)
