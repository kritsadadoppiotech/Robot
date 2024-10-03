*** Keywords ***
Login Doppee With username or password
    [Arguments]     ${data}     
    login_page.Create user_login    ${data}    
    login_page.Session Login Doppee
    login_page.Collect Token
    login_page.Collect ID     
    login_page.Create Hearder
     