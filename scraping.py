from bs4 import BeautifulSoup
from operator import itemgetter
import datetime
import pandas as pd
import requests
import urllib3

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

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
            

datos = sorted(datos, key=itemgetter('subsistema','año','mes'))
worksheets = []
for dato in datos:
    http = urllib3.PoolManager(cert_reqs = 'CERT_NONE')
    excel_request = http.request('GET', dato.get('link')).data
    try:
        worksheets = pd.ExcelFile(excel_request)    
        worksheets = worksheets.sheet_names
        print(worksheets)
    except:
        print('No se pudo abrir el archivo')
        continue

    '''
    for worksheet in worksheets:
        if dato.get('subsistema') == 'cerrado':
            
            if worksheet == 'Pobl. penal atendida':
                excel_df = pd.read_excel(excel_request, sheet_name=worksheet, header=13)
                excel_df.drop(excel_df.columns[[0,2,]], axis=1, inplace=True)
                excel_df.drop(excel_df.index[[-3,-2,-1]], inplace=True)
            
            elif worksheet == 'Pobl. recluida por Establ.':
                excel_df = pd.read_excel(excel_request, sheet_name=worksheet)
            
            elif worksheet == 'Establ. Tradic. VS Conces.':
                excel_df = pd.read_excel(excel_request, sheet_name=worksheet)
                
            elif worksheet == 'Pobl. ingresada por Establ.':
                excel_df = pd.read_excel(excel_request, sheet_name=worksheet)
                
            elif worksheet == 'Pobl. egresada por Establ.':
                excel_df = pd.read_excel(excel_request, sheet_name=worksheet)
                
            elif worksheet == 'Pobl. con Lib. Condicional':
                excel_df = pd.read_excel(excel_request, sheet_name=worksheet)
                
            elif worksheet == 'Pobl. con nivel inserc. prolon.':
                excel_df = pd.read_excel(excel_request, sheet_name=worksheet)
                
        
        elif dato.get('subsistema') == 'abierto':
            continue
        
        elif dato.get('subsistema') == 'postpenitenciario':
            continue'''