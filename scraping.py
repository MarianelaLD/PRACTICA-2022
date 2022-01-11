from bs4 import BeautifulSoup
import requests
from operator import itemgetter

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
    meses_dict.append({'mes':pos, 'nombre':i})
    pos+=1

for i in p:
    a = i.findAll('a')
    for j in a:
        if 'Estadística' in j.text:
            subsistema = j.text.split(' ')[-1]
            for tabla in tablas:
                año = tabla.find('td').text.split(' ')[-1]
                a = tabla.findAll('a')
                for h in a:
                    link = h.get('href')
                    mes = h.text
                    mes = [i for i in meses_dict if mes in i['nombre']][0].get('mes')
                    mydict = {'link': link, 'subsistema': subsistema, 'mes': mes, 'año': año}
                    datos.append(mydict)
datos = sorted(datos, key=itemgetter('subsistema','año','mes'))


