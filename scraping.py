from bs4 import BeautifulSoup
from operator import itemgetter
import datetime
import pandas as pd
import requests
import urllib3

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)
http = urllib3.PoolManager(cert_reqs = 'CERT_NONE')
url = "https://www.gendarmeria.gob.cl/estadisticaspp.html"
pagina = requests.get(url)
pagina_soup = BeautifulSoup (pagina.content, 'html.parser')
tablas = pagina_soup.findAll('table')
ultima_actualizacion = datetime.datetime.now()
datos = []
nombres = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre']
meses_dict = []

for i in range(1,13):
    mes = {'numero':i, 'nombre':nombres[i-1]}
    meses_dict.append(mes)
aux = {}

for tabla in tablas:
    año = int(tabla.find('td').text.split(' ')[-1])
    anclas = tabla.findAll('a')
    
    for ancla in anclas:
        link = ancla.get('href')
        subsistema = link.split('/')[-1].split('.')[1].split('_')[0]
        mes = ancla.text
        mes = [i for i in meses_dict if mes in i['nombre']][0].get('numero')
        mydict = {'link': link, 'subsistema': subsistema, 'mes': mes, 'año': año}
        datos.append(mydict)
            
cerrado = 0
abierto = 0
postpenitenciario = 0
datos = sorted(datos, key=itemgetter('subsistema','año','mes'))

for dato in datos:
    
    if dato.get('subsistema') == 'cerrado':
       cerrado+=1
       
    elif dato.get('subsistema') == 'abierto':
        abierto+=1
    
    elif dato.get('subsistema') == 'postpenitenciario':
        postpenitenciario+=1