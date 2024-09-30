*** Settings ***
Resource    ../keywords/import.robot

*** Test Cases ***
TC-001 Assignment with a real test case
    common.Open Session doppee website
    login_page.Session Login Doppee