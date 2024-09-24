*** Keywords ***

Input Username  
    Wait Until Element Is Visible   ${login_locator.form_login}
    Input Text   ${login_locator.txt_username}      ${tc01.email}

Input Password  
    Input Text   ${login_locator.txt_password}      ${tc01.password}
    Click Element   ${login_locator.btn_login}

Check Pop up Login Page
    Wait Until Element Is Visible   ${login_locator.popup_login_success} 
    Click Element   ${login_locator.btn_popup_ok} 


Click button sign up    
    Click Element   ${login_locator.btn_signup} 