import psycopg2
from bs4 import BeautifulSoup
from operator import itemgetter
import datetime
import pandas as pd
import requests
import urllib3
from random import randint

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)
url = 'https://www.ide.cl/descargas/cut_2018_v04.xls'


conn = psycopg2.connect(host="localhost", database="PrivadasLibertad", user="postgres", password="rosita14")

def escribir_dml_personas():
    dml = open("BD\scripts\dml.sql", "a")
    rut = (187543010,
        98784217,
        152172516,
        91863529,
        140348619,
        216922174,
        76234159,
        130583210,
        70338327,
        126838018)
    nombres = ('Juana','Carla','Ramona','Ana','Sandra','Rosa','Daniela', 'Maria', 'Sofia', 'Paula', 'Sara', 'Daniela', 'Sonia', 'Paula')
    apellidos = ('Perez','Gonzalez','Lopez','Garcia','Martinez','Perez','Gonzalez','Lara', 'Santa Cruz','Baeza', 'Ruiz', 'Reyes', 'Herrera')
    nombre_completo = []
    for r in rut:
        
        nombre1 = ''
        nombre2 = ''
        apellido1 = ''
        apellido2 = ''
        while nombre1 == nombre2  or apellido1 == apellido2:
            nombre1 = nombres[randint(0,len(nombres)-1)]
            nombre2 = nombres[randint(0,len(nombres)-1)]
            apellido1 = apellidos[randint(0,len(apellidos)-1)]
            apellido2 = apellidos[randint(0,len(apellidos)-1)]
            
        nombre = nombre1 + ' ' + nombre2
        apellido = apellido1 + ' ' + apellido2
        insert_str = f'INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)\nVALUES ({r}, 0, "{nombre}", "{apellido}");\n'
        dml.write(insert_str)
    dml.close

escribir_dml_personas()