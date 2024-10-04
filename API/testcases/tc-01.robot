*** Settings ***
Resource    ../keywords/import.robot

*** Test Cases ***
TC-001 Assignment with a real test case
    common.Open Session doppee website
    ${user_login}   login_features.Login Doppee With username or password       ${TC01}  
    ${product}    search_features.Search Product With Doppee      ${user_login}
    ordersubmit_features.Create Order Submit    ${user_login}   ${product}

TC-002 Assignment with a real test case
    common.Open Session doppee website
    ${user_login}   login_features.Login Doppee With username or password       ${TC02}    
    ${product}    search_features.Search Product With Doppee      ${user_login}
    ordersubmit_features.Create Order Submit    ${user_login}   ${product}