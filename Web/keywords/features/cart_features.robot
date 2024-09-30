*** Keyword ***
Input Delivery info And Click Button PAY
    cart_page.Click Cart
    cart_page.Input Delivery info
    cart_page.Click PAY

Check No product in cart 
    Wait Until Element Contains        ${cart_locator.popup_delivery_page}      2
    ${Result}=  Get Text      ${cart_locator.popup_delivery_page} 
    IF  ${Result}=='No product in cart'
        Click Element   ${cart_locator.btn_popup_delivery_page}
        Click Element   ${home_locator.btn_home} 
        home_page.Search Product
        home_page.Add Product to Cart
    ELSE
        Log To Console       ${Result}
    END