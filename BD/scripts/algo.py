from multiprocessing import connection
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
        insert_str = f"INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)\nVALUES ({r}, 0, '{nombre}', '{apellido}');\n"
        dml.write(insert_str)
    dml.close
def escribir_dml_usuario():
    connection = psycopg2.connect(host="localhost", database="PrivadasLibertad", user="postgres", password="rosita14")
    c = connection.cursor()
    c.execute("SELECT * FROM crowdsourcing.persona;")
    personas = c.fetchall()
    c.close()
    connection.close()
    dml = open("BD\scripts\dml.sql", "a")
    tipo_usuario = 'informante'
    
    for persona in personas:
       insert_str = f"INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)\nVALUES ({persona[0]}, '{str(randint(0,1000))+str(persona[3].replace(' ', ''))}', '{tipo_usuario}', '{str(randint(0,1000))+str(persona[2].replace(' ', ''))}');\n"
       dml.write(insert_str)
    dml.close
def escribir_dml_informante():
    connection = psycopg2.connect(host="localhost", database="PrivadasLibertad", user="postgres", password="rosita14")
    c = connection.cursor()
    c.execute("SELECT persona_rut FROM crowdsourcing.usuario where tipousuario = 'informante';")
    usuarios = c.fetchall()
    c.close()
    connection.close()
    dml = open("BD\scripts\dml.sql", "a")
    id_ver = 0
    nivel_educativo = ('Basica','Basica Incompleta','Media','Media Incompleta','Tecnico','Tecnico Incompleta','Universitario','Universitario Incompleta','Postgrado','Postgrado Incompleta')
    estado_civil = ('Soltera','Casada','Viuda','Divorciada','Union Civil')
    estado_causa = ('En curso','Finalizado')
    for usuario in usuarios:
        id_ver+= 1
        insert_verificacion_str = f"INSERT INTO crowdsourcing.verificacion (idverificacion,admin_usuario_persona_rut, fechaemision, estadoverificacion)\nVALUES ({id_ver},199167286, now(), false);\n"
        dml.write(insert_verificacion_str)
        insert_informante_str = f"INSERT INTO crowdsourcing.informante (usuario_persona_rut,verificacion_idverificacion, niveleducacionalinformante, estadocivil, estadocausa)\nVALUES ({usuario[0]},{id_ver},'{nivel_educativo[randint(0,len(nivel_educativo)-1)]}', '{estado_civil[randint(0, len(estado_civil)-1)]}', '{estado_causa[randint(0,len(estado_causa)-1)]}');\n"
        dml.write(insert_informante_str)
    dml.close
#escribir_dml_personas()
#escribir_dml_usuario()
escribir_dml_informante()