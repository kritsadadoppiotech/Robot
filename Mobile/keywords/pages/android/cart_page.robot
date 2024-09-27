*** Keywords ***
Click Button Cart
    Wait Until Page Contains Element        ${btn_cart}      20
    Click Element   ${btn_cart}

Check Product in Cart
    Wait Until Page Contains Element        ${product_in_cart}
    Element Text Should Be      ${txt_product_in_cart}      ${Backpack}