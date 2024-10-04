*** Keywords ***
Create Params With Product
    ${key}=  Set Variable    ${user_login.productkey}
    ${value}=  Set Variable    ${user_login.productvalue}  
    ${params}      Create Dictionary       ${key}=${value}    
    Set Global Variable           ${params}
    RETURN    ${params}

Session Search Product 
    ${product}     GET On Session     doppeeSession        ${url.search}       params=${params}      headers=${hearder}
    Set Global Variable          ${product}
    RETURN    ${product}

Collect Product
    ${product}    Set Variable    ${product.json()['product'][0]} 
    ${product_name}    Set Variable    ${product['name']}
    ${product_id}   Set Variable    ${product['id']}
    ${product_price}   Set Variable    ${product['crossOutPrice']}
    Set Global Variable     ${product_name}    
    Set Global Variable     ${product_id}       
    Set Global Variable     ${product_price}
    RETURN    ${product_name}    ${product_id}       ${product_price}

