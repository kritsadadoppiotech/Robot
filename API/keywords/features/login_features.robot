*** Keywords ***
Login Doppee With username or password
    [Arguments]     ${data}     
    ${user_login}   login_page.Create Data User    ${data}    
    ${user}     login_page.Session Login Doppee     ${user_login}
    login_page.Collect Token    ${user}
    login_page.Collect ID   ${user}
    RETURN    ${user_login}