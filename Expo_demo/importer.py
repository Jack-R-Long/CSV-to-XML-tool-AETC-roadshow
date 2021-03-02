import sys
import xml.etree.ElementTree as ET
tree = ET.parse(sys.argv[1])
root = tree.getroot()

import psycopg2
conn = psycopg2.connect("dbname=postgres user=postgres password=Cessna206")
cur = conn.cursor()

sql = """INSERT INTO tasks (task_desc, task_number, parent_id) VALUES (%s, %s, %s);"""
for elem in root[0]:
    valueList = (elem[0].text, elem[1].text, elem[2].text)
    cur.execute(sql, valueList)

sql = """INSERT INTO objectives (application, evaluation, inst_guidance, objective_hours, objective_statement, unit_number) VALUES (%s, %s, %s, %s, %s, %s);"""
for elem in root[1]:
    valueList = (elem[0].text, elem[1].text, elem[2].text, elem[3].text, elem[4].text, elem[5].text)
    cur.execute(sql, valueList)

sql = """INSERT INTO units (unit_number, unit_description) VALUES (%s, %s);"""
for elem in root[2]:
    valueList = (elem[0].text, elem[1].text)
    cur.execute(sql, valueList)

sql = """INSERT INTO blocks (block_hours, max_enrl_blk, min_enrl_blk, prep_time_hours_blk, security_class_id, block_number, block_desc) VALUES (%s, %s, %s, %s, %s, %s, %s);"""
for elem in root[3]:
    valueList = (elem[0].text, elem[1].text, elem[2].text, elem[3].text, elem[4].text, elem[5].text, elem[6].text)
    cur.execute(sql, valueList)

conn.commit()
if conn is not None:
    conn.close()
