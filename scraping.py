from bs4 import BeautifulSoup
import requests
from operator import itemgetter
import datetime
import pandas as pd

url = "https://www.gendarmeria.gob.cl/estadisticaspp.html"
pagina = requests.get(url)
pagina_soup = BeautifulSoup (pagina.content, 'html.parser')
parrafos = pagina_soup.findAll('p')
tablas = pagina_soup.findAll('table')
ultima_actualizacion = datetime.datetime.now()
datos = []
nombres = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre']
meses_dict = []

for i in range(1,13):
    mes = {'numero':i, 'nombre':nombres[i-1]}
    meses_dict.append(mes)

for parrafo in parrafos:
    anclas = parrafo.findAll('anclas')
    for ancla in anclas:
        if 'Estadística' in ancla.text:
            subsistema = ancla.text.split(' ')[-1]
            for tabla in tablas:
                año = int(tabla.find('td').text.split(' ')[-1])
                anclas = tabla.findAll('a')
                for h in anclas:
                    link = h.get('href')
                    mes = h.text
                    mes = [i for i in meses_dict if mes in i['nombre']][0].get('numero')
                    mydict = {'link': link, 'subsistema': subsistema, 'mes': mes, 'año': año}
                    datos.append(mydict)

print(datos)