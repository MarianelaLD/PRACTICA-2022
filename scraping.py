from bs4 import BeautifulSoup
import requests
from pandas import DataFrame, read_csv, options
from os import mkdir, path
from datetime import datetime
from time import sleep

url = "https://www.gendarmeria.gob.cl/estadisticaspp.html"
pagina = requests.get(url)
pagina_soup = BeautifulSoup (pagina.content, 'html.parser')

p = pagina_soup.findAll('p')
tablas = pagina_soup.findAll('table')
datos = []
nombres = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre']
meses_dict = []
pos = 1
for i in nombres:
    meses_dict.append({i:pos})
    pos+=1

for i in p:
    a = i.findAll('a')
    for j in a:
        if 'Estadística' in j.text:
            subsistema = j.text[2:].split(' ')[-1]
            for tabla in tablas:
                año = tabla.find('td').text.split(' ')[-1]
                a = tabla.findAll('a')
                for h in a:
                    link = h.get('href')
                    mes = h.text
                    mes = [i for i in meses_dict if mes in i][0]
                    mydict = {'link': link, 'subsistema': subsistema, 'mes': mes, 'año': año}
                    datos.append(mydict)
datos.sort(key=lambda k : k['año'])
print(datos[0])