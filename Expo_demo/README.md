# Expo_demo
Demonstration code for the AETC expo.
This small bit of code is intended to demonstrate the advantages of modernizing the development practices for the Interactive Courseware Implementation System. The current system is arcane and extremely inefficient to work with. Suggested improvements are the adoption of a distributed version control system (such as the Git repo this code is hosted in), an import feature, and a modern GUI for course development.

### To use this code: ###
### Switch to postgres user ###
sudo su postgres
### Move to postgres directory ###
cd /var/lib/postgresql
### Clone the repo ###
git clone https://github.com/amundy14/Expo_demo.git

### Load the database ###
psql -a -q -f databaseInit.sql
### Access and query the database ###
psql
select * from [table_name];

### Run the importer (no output is good output) ###
python3 importer.py [file_to_import.xml]
