*** Keywords ***
Search Product With Doppee
    [Arguments]     ${user_login}
    search_page.Create Params With Product      ${user_login}
    search_page.Session Search Product      
    ${product}  search_page.Collect Product
    RETURN      ${product}