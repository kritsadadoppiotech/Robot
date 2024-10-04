*** Keywords ***
Create Params With Product
    [Arguments]     ${user_login}
    ${key}=  Set Variable    ${user_login.productkey}
    ${value}=  Set Variable    ${user_login.productvalue}  
    ${params}      Create Dictionary       ${key}=${value}    
    Set Global Variable           ${params}
    RETURN    ${params}

Session Search Product 
    ${product}     GET On Session     doppeeSession        ${url.search}       params=${params}      headers=${token}
    Set Global Variable          ${product}
    RETURN    ${product}

Collect Product
    ${product}    Set Variable    ${product.json()['product'][0]} 
    ${product_name}    Set Variable    ${product['name']}
    ${product_id}   Set Variable    ${product['id']}
    ${product_price}   Set Variable    ${product['crossOutPrice']}
    RETURN      ${product}