*** Keywords ***
Click select Product
    ${new_locator}      String.Replace String        android=UiSelector().text("{{product}}")      {{product}}     ${Backpack}
    Wait Until Page Contains Element        ${new_locator}      20
    Click Element   ${new_locator}

Add Product To Cart
    Wait Until Page Contains Element        ${btn_addtocart}      20
    Click Element   ${btn_addtocart}