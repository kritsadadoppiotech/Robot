*** Settings ***
Library     DataDriver      file=data.csv       dialect=excel
Test Template   Test Login

*** Keywords ***
Test Login
    [Arguments]     ${username}     ${password}     ${expect_message}
    Log To Console      Enter user      ${username} 
    Log To Console      Enter Password      ${password}
    Log To Console      Click Login Button
    Log To Console      Expect message      ${expect_message} 

*** Test Cases ***
TC01

