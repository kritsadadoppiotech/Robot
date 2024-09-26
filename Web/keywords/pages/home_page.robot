*** Keywords ***

Click button user
    Click Element   ${home_locator.btn_user} 
    Wait Until Element Is Visible   ${home_locator.from_login} 

Search Product
    Input Text   ${home_locator.txt_search}     ${tc01.search}
    Click Element   ${home_locator.btn_search}
    Wait Until Element Is Visible   ${home_locator.list_product}

Add Product to Cart
    # ${product}  Get Text   ${home_locator.list_product}
    Click Element   ${home_locator.select_product}
    Wait Until Element Is Visible   ${home_locator.btn_add_product}
    Click Element   ${home_locator.btn_add_product}
    Wait Until Element Is Visible   ${home_locator.popup_successfully}
    Click Element   ${home_locator.btn_add_product_successfully}