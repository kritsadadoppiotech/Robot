*** Keywords ***
Session Login Doppee 
    ${resp}     POST On Session     doppeeSession        ${url.login}      json=${user_login}
    [RETURN]      ${resp} 

Collect Token
    ${token}    Set Variable        ${resp.json()['token']} 
    Log To Console      ${token}