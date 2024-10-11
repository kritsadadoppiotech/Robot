*** Settings ***
Resource    ${CURDIR}/../keywords/import.robot
Library     DataDriver      file=${CURDIR}/../resources/testdata/testdata.csv       dialect=excel
Test Setup      common.Open doppiotech website
Test Teardown     common.Clear all browser
Test Template   Login With Username And Password


*** Keywords ***
Login With Username And Password
    [Arguments]     ${username}     ${password}     ${expect_message}
    home_page.Click button user To Login   
    login_page.Input Username   ${username}
    login_page.Input Password   ${password}
    login_page.Check Pop up Login Page

*** Test Cases ***
TC-001 Assignment with a real test case
    Login With Username And Password