*** Keyword ***
Click Cart
    Click Element   ${login_locator.btn_cart}
    Wait Until Element Contains        ${cart_locator.page_delivery_info}      2

Input Delivery info
    Wait Until Element Is Visible       ${cart_locator.page_delivery_info}
    Input Text   ${cart_locator.txt_delivery_info_name}     ${tc01.name}
    Input Text   ${cart_locator.txt_delivery_info_surname}     ${tc01.surname}   
    Input Text   ${cart_locator.txt_delivery_info_address}     ${tc01.address}   
    Input Text   ${cart_locator.txt_delivery_info_phone}     ${tc01.phone}   
    Input Text   ${cart_locator.txt_delivery_info_email}     ${tc01.email}

Click PAY 
    Click Element   ${cart_locator.btn_pay} 