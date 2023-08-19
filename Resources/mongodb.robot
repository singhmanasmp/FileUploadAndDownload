*** Settings ***
Documentation       This file contains the methods/keywords to perform operatoins on DB
Library             ../Resources/mongodb.py


*** Keywords ***
Connect to MongoDB
    ${client}=    Evaluate    pymongo.MongoClient('mongodb://localhost:27017/')
    ${db}=    set variable    ${client.${DB_Name}}
    ${collection}=    set variable     ${db.${Collection_Name}}
    Log    Connect to MongoDB!


Verification of a record in DB
    ${record}   query search
    log     Record present in DB!


Deletion of a record
    ${record}   delete query
    log     Record deleted from DB!


Deletion of All records
    ${record}   delete all query
    log    All Records deleted from DB!