*** Keywords ***
Create user_login
    [Arguments]     ${data}     
    ${user_login}      Create Dictionary       
    ...     username=${data.username} 
    ...     password=${data.password}
    ...     first_name=${data.first_name}
    ...     last_name=${data.last_name}
    ...     phone=${data.phone}
    ...     shippingAdress=${data.shippingAdress}
    ...     productkey=${data.productkey}
    ...     productvalue=${data.productvalue}
    ...     qty=${data.qty}
    Set Global Variable           ${user_login}
    RETURN    ${user_login}

Session Login Doppee 
    ${user}     POST On Session     doppeeSession        ${url.login}      json=${user_login}
    Set Global Variable     ${user}
    RETURN    ${user} 

Collect Token
    ${token}    Set Variable        ${user.json()['token']} 
    Set Global Variable           ${token}
    RETURN    ${token}

Collect ID
    ${userid}    Set Variable        ${user.json()['id']} 
    Set Global Variable           ${userid}
    RETURN    ${userid}

Create Hearder
    ${hearder}      Create Dictionary       token=${token}
    Set Global Variable           ${hearder}
    RETURN    ${hearder}