# Robot
Prepare Data : At ./testdata/testdata.yaml
Run command : robot -d ./Database/result ./Database/testcases/tc-01.robot




----------------------------------------------- EX -----------------------------------------
*** Settings ***
Library     DatabaseLibrary

*** Variables ***
${connection_string}    database='training_platform_db', user='doppio-training-user', password='Doppio123*', host='125.26.15.143', port=10004
${db_type}      psycopg2

*** Keywords ***
Connect To Database
    Connect To Database using custom params     ${db_type}      ${connection_string}
    Log To Console     Connect To Database

Disconnect Form Database
    Disconnect From Database
    Log To Console     Connect To Database

Check if exist in database
    Check If Exists In Database     SELECT * FROM product WHERE name='Aoppee phone'
    Log To Console      Data exist in database

*** Test Cases ***
TC01- Connect and Disconnect from database
    Connect To Database
    Check if exist in database
    Disconnect Form Database