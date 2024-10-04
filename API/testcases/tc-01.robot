*** Settings ***
Resource    ../keywords/import.robot

*** Test Cases ***
TC-001 Assignment with a real test case
    common.Open Session doppee website
    login_features.Login Doppee With username or password       ${TC01}  
    search_features.Search Product With Doppee
    ordersubmit_features.Create Order Submit

# TC-002 Assignment with a real test case
#     common.Open Session doppee website
#     login_features.Login Doppee With username or password       ${TC02}    
#     search_features.Search Product With Doppee
#     ordersubmit_features.Create Order Submit