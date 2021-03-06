from bs4 import BeautifulSoup
from operator import itemgetter
import datetime
import pandas as pd
import requests
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)
url = 'https://www.gendarmeria.gob.cl/'

url_establecimientos = f'{url}establecimientos_penales.html'
pagina_establecimientos = requests.get(url_establecimientos)
pagina_establecimientos_soup = BeautifulSoup(pagina_establecimientos.content, 'html.parser')
tabla_establecimientos_soup = pagina_establecimientos_soup.find('table')
tabla_establecimientos_soup_filas = tabla_establecimientos_soup.find_all('tr')
tabla = []
for tr in tabla_establecimientos_soup_filas:
    td = tr.find_all('td')
    fila = [i.text.strip() for i in td if i.text.strip()]
    if fila:
        tabla.append(fila)

df_direcciones_estableciemientos = pd.DataFrame(tabla[2::], columns=tabla[1])

print (pd.io.sql.get_schema(df_direcciones_estableciemientos.reset_index(), 'data'))
        

"""
url_estadisticas = f'{url}estadisticaspp.html'
pagina = requests.get(url_estadisticas)
pagina_soup = BeautifulSoup (pagina.content, 'html.parser')
tablas = pagina_soup.findAll('table')
datos = []
nombres = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre']
meses_dict = []

for i in range(1,13):
    mes = {'numero':i, 'nombre':nombres[i-1]}
    meses_dict.append(mes)

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
    excel_request = http.request('GET', dato.get('link'))
    
    if excel_request.status != 200:
        print(dato['link'])
    
    else:
        excel_df = pd.ExcelFile(excel_request.data)
        worksheets = excel_df.sheet_names
    
        for worksheet in worksheets:

            if dato.get('subsistema') == 'cerrado':
                
                if worksheet == 'Pobl. penal atendida':
                    
                    excel_hoja = pd.read_excel(excel_df, sheet_name=worksheet, header=13)
                    excel_hoja.drop(excel_hoja.columns[[0,2,]], axis=1, inplace=True)
                    excel_hoja.drop(excel_hoja.index[[-3,-2,-1]], inplace=True)
                    print(excel_hoja)
                    print(dato.get('año'), dato.get('mes'))
                
                if worksheet == 'Pobl. recluida por Establ.':
                    excel_hoja = pd.read_excel(excel_df, sheet_name=worksheet, header=5)
                    print(excel_hoja)
                    excel_hoja.to_csv('./poblacion_recluida_por_establecimiento.csv')
                    
                
                elif worksheet == 'Establ. Tradic. VS Conces.':
                    excel_hoja = pd.read_excel(excel_df, sheet_name=worksheet)
                    
                elif worksheet == 'Pobl. ingresada por Establ.':
                    excel_hoja = pd.read_excel(excel_df, sheet_name=worksheet)
                    
                elif worksheet == 'Pobl. egresada por Establ.':
                    excel_hoja = pd.read_excel(excel_df, sheet_name=worksheet)
                    
                elif worksheet == 'Pobl. con Lib. Condicional':
                    excel_hoja = pd.read_excel(excel_df, sheet_name=worksheet)
                    
                elif worksheet == 'Pobl. con nivel inserc. prolon.':
                    excel_hoja = pd.read_excel(excel_df, sheet_name=worksheet)
                             
            
            elif dato.get('subsistema') == 'abierto':
                print(worksheet)
                
          
            elif dato.get('subsistema') == 'postpenitenciario':
                print(worksheet)
            
"""