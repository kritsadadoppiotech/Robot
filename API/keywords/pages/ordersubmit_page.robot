*** Keywords ***
Create Order Data With User
    [Arguments]     ${user_login}   ${product}
    ${order_data}       Create Dictionary       
    ...     user_id=${user_id}
    ...     first_name=${user_login.first_name}
    ...     last_name=${user_login.last_name}
    ...     email=${user_login.username}
    ...     phone=${user_login.phone}
    ...     shippingAdress=${user_login.shippingAdress}
    ...     promotion_id=${promotion_id}  
    ...     product_id=${product['id']}
    ...     product_qty=${user_login.qty}
    ...     original_price=${product['crossOutPrice']}
    ...     bin=${credit_card.bin}
    ...     payment_type=${credit_card.payment_type}
    ...     expDate=${credit_card.expDate}
    ...     cvc=${credit_card.cvc}
    ...     issuingBank=${credit_card.issuingBank}
    ...     cardHolderName=${credit_card.cardHolderName}
    RETURN    ${order_data}

Create Order Data With json Order Submit
    [Arguments]     ${user_login}   ${product}
    ${order_data}=    JSONLibrary.Load JSON From File     ${CURDIR}/../../resources/testdata/json/order_submit.json
    ${order_data}=    JSONLibrary.Update Value To Json    ${order_data}    $.user_id    ${user_id}
    ${order_data}=    JSONLibrary.Update Value To Json    ${order_data}    $.first_name    ${user_login.first_name}
    ${order_data}=    JSONLibrary.Update Value To Json    ${order_data}    $.last_name    ${user_login.last_name}
    ${order_data}=    JSONLibrary.Update Value To Json    ${order_data}    $.username    ${user_login.username}
    ${order_data}=    JSONLibrary.Update Value To Json    ${order_data}    $.phone    ${user_login.phone}
    ${order_data}=    JSONLibrary.Update Value To Json    ${order_data}    $.shippingAdress    ${user_login.shippingAdress}
    ${order_data}=    JSONLibrary.Update Value To Json    ${order_data}    $.promotion_id    ${promotion_id}
    ${order_data}=    JSONLibrary.Update Value To Json    ${order_data}    $.product_id    ${product['id']}
    ${order_data}=    JSONLibrary.Update Value To Json    ${order_data}    $.product_price    ${product['crossOutPrice']}
    RETURN    ${order_data}

Session Order Submit
    [Arguments]     ${order_data}
    ${order_submit}     POST On Session     doppeeSession        ${url.order_submit}      json=${order_data}
    RETURN    ${order_submit}