*** Keywords ***

Register new account 
    Wait Until Element Is Visible   ${register_locator.from_register}
    Input Text      ${register_locator.txt_Email}   ${tc01.email}
    Input Text      ${register_locator.txt_Password}    ${tc01.password}
    Input Text      ${register_locator.txt_ConfirmPassword}    ${tc01.confirmpassword}
    Click Element   ${register_locator.btn_signup}
    Check PopUp Notification Register 

Check PopUp Notification Register 
    Wait Until Element Is Visible   ${register_locator.ant-modal_register} 
    ${errormsg}     Get Text    ${register_locator.txt_error_register}
    IF  '${errormsg}'=='Register successfully'
        Click Element   ${register_locator.btn_error_register}    
    ELSE
        log To Console  ${errormsg}
        Click Element   ${register_locator.btn_error_register}
    END