*** Keyword ***
Check PopUp Notification Register 
    Wait Until Element Is Visible   ${register_locator.ant-modal_register} 
    ${errormsg}     Get Text    ${register_locator.txt_error_register}
    IF  '${errormsg}'=='Register successfully'
        Click Element   ${register_locator.btn_error_register}    
    ELSE
        log To Console  ${errormsg}
        Click Element   ${register_locator.btn_error_register}
    END