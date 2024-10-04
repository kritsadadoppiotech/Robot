# Robot
Prepare Data : At ./testdata/testdata.yaml
Run command : robot -d ./API/result -v env:uat ./API/testcases/tc-01.robot




----------------------------------------------- EX -----------------------------------------
*** Settings ***
Library     RequestsLibrary

*** Test Cases ***
TC-001 Verify when input wrong username or password, API should retrun error
    Create Session      loginSession        http://localhost:8082
    ${request_body}     Create Dictionary       username=doppio1        password=weBuildBestQa111
    ${resp}     POST On Session     loginSession        /login      json=${request_body}        expected_status=401
    Should Be Equal     ${resp.json()['status']}        error
    Should Be Equal     ${resp.json()['message']}        invalid username or password
    Log To Console      ${resp}

TC-002 Verify That Can Get Asset List From Get APU correctly
    Create Session      assetSession        http://localhost:8082
    ${request_body}     Create Dictionary       username=doppio        password=weBuildBestQa
    ${resp}     POST On Session     assetSession        /login      json=${request_body}
    ${token}    Set Variable        ${resp.json()['message']} 
    ${hearder}      Create Dictionary       token=${token}
    ${get_resp}      GET On Session      assetSession        /assets      headers=${hearder}
    ${count}        Get Length   ${get_resp.json()}
    ${morethanone}      Evaluate        ${count}>0
    Should Be True      ${morethanone} 