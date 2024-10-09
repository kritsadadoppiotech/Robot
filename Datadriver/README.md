# Robot
Prepare Data : At ./testdata/testdata.yaml
Run command : robot -d ./Datadriver/result -v env:uat ./Datadriver/testcases/tc-01.robot




----------------------------------------------- EX -----------------------------------------
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

------------------------------------------ Test Data -----------------------------------------
data.csv
*** Test cases ***,${username},${password},${expect_message}
Test 1 Login Success,abc,1234,Login Success
Test 1 Login Failed,abc,12345,Login Failure