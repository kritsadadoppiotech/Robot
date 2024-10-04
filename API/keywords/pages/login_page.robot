*** Keywords ***
Create Data User
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
    RETURN    ${user_login}

Session Login Doppee
    [Arguments]     ${user_login}
    ${user}     POST On Session     doppeeSession        ${url.login}      json=${user_login}
    RETURN    ${user} 

Collect Token
    [Arguments]     ${user} 
    ${token}    Create Dictionary        token=${user.json()['token']} 
    Set Global Variable           ${token}

Collect ID
    [Arguments]     ${user}
    ${userid}    Set Variable        ${user.json()['id']} 
    Set Global Variable           ${userid}