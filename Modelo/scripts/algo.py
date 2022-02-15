import psycopg2
from bs4 import BeautifulSoup
from operator import itemgetter
import datetime
import pandas as pd
import requests
import urllib3
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)
url = 'https://www.ide.cl/descargas/cut_2018_v04.xls'


conn = psycopg2.connect(host="localhost", database="PrivadasLibertad", user="postgres", password="rosita14")

schema_str = '"crowdsourcing"'
insert_str = "INSERT INTO "
values_str = "VALUES "
dml = open("Modelo\scripts\dml.sql", "a")
dml.write("algo")
dml.close