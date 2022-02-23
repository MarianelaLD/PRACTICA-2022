import psycopg2
from bs4 import BeautifulSoup
from operator import itemgetter
import datetime
import pandas as pd
import requests
import urllib3
from random import randint
import googlemaps
gmaps = googlemaps.Client(key='AIzaSyBSSlAid-5xxfwMmvg2U-GplstcCr52OLU')

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)
url = 'https://www.ide.cl/descargas/cut_2018_v04.xls'


conn = psycopg2.connect(host="localhost", database="PrivadasLibertad", user="postgres", password="rosita14")

schema_str = '"crowdsourcing"'
insert_str = "INSERT INTO "
values_str = "VALUES "
dml = open("Modelo\scripts\dml.sql", "a")
rut = (18754301-0,
       9878421-7,
       15217251-6,
       9186352-9,
       14034861-9,
       21692217-4,
       7623415-9,
       13058321-0,
       7033832-7,
       12683801-8)
nombres = ('Juana','Carla','Ramona','Ana','Sandra','Rosa','Daniela', 'Maria', 'Sofia', 'Paula', 'Sara', 'Daniela', 'Sonia', 'Paula')
apellidos = ('Perez','Gonzalez','Lopez','Garcia','Martinez','Perez','Gonzalez','Lara', 'Santa Cruz')
nombre_completo = []
for r in rut:
    nombre1 = ''
    nombre2 = ''
    apellido1 = apellidos[randint(0,len(apellidos)-1)]
    apellido2 = apellidos[randint(0,len(apellidos)-1)]
    while nombre1 == nombre2:
        nombre1 = nombres[randint(0,len(nombres)-1)]
        nombre2 = nombres[randint(0,len(nombres)-1)]
    
    nombre_completo.append(nombre1+' '+nombre2+' '+apellido1+' '+apellido2)
print(nombre_completo)
           
dml.write("algo")
dml.close