from bs4 import BeautifulSoup
from operator import itemgetter
import datetime
import pandas as pd
import requests

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
    anclas = parrafo.findAll('a')
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
datos = sorted(datos, key=itemgetter('subsistema','año','mes'))
a_limpiar = []
link = datos[0]['link']
link = link[:4] + link[5:]
archivo = link.split('/')[-1]


import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)
http = urllib3.PoolManager(cert_reqs = 'CERT_NONE')
excel = http.request('GET', link)

try :
    df = pd.read_excel(excel.text)
    print(df)
except:
    print('No se pudo descargar el excel')
