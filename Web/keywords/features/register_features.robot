*** Keyword ***
Register Doppee Website
    home_page.Click button user
    login_page.Click button sign up
    Register new account 

Register new account 
    Wait Until Element Is Visible   ${register_locator.from_register}
    Input Text      ${register_locator.txt_Email}   ${tc01.email}
    Input Text      ${register_locator.txt_Password}    ${tc01.password}
    Input Text      ${register_locator.txt_ConfirmPassword}    ${tc01.confirmpassword}
    Click Element   ${register_locator.btn_signup}
    Check PopUp Notification Register 