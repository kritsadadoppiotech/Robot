*** Settings ***
Resource    ../keywords/import.robot
Library     DataDriver      file=${CURDIR}/../resources/testdata/testdata.csv       dialect=excel
Test Setup      common.Open doppiotech website
Test Template   login_features.Login With Username And Password

*** Test Cases ***
TC-001 Assignment with a real test case
    log to console    ${username} ${password} ${expect_message}
     login_features.Login With Username And Password

