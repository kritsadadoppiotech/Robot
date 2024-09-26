*** Keywords ***
Click Cart
    Click Element   ${login_locator.btn_cart}
    Sleep   1

Check No product in cart 
    Sleep   1 
    ${Result}=  Get Text      ${cart_locator.popup_delivery_page} 
    IF  ${Result}=='No product in cart'
        Click Element   ${cart_locator.btn_popup_delivery_page}
        Click Element   ${home_locator.btn_home} 
        home_page.Search Product
        home_page.Add Product to Cart
    ELSE
        Log To Console       ${Result}
    END

Input Delivery info
    Wait Until Element Is Visible       ${cart_locator.page_delivery_info}
    Input Text   ${cart_locator.txt_delivery_info_name}     ${tc01.name}
    Input Text   ${cart_locator.txt_delivery_info_surname}     ${tc01.surname}   
    Input Text   ${cart_locator.txt_delivery_info_address}     ${tc01.address}   
    Input Text   ${cart_locator.txt_delivery_info_phone}     ${tc01.phone}   
    Input Text   ${cart_locator.txt_delivery_info_email}     ${tc01.email}

Click PAY 
    Click Element   ${cart_locator.btn_pay} 