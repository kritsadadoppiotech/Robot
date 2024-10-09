*** Keywords ***
Click button user To Login
    Click Element   ${home_locator.btn_user} 
    Wait Until Element Is Visible   ${home_locator.from_login} 