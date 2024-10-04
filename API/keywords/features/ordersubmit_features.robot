*** Keywords ***
Create Order Submit
    [Arguments]     ${user_login}   ${product}
    #${order_data}   ordersubmit_page.Create Order Data With User   ${user_login}    ${product}
    ${order_data}   ordersubmit_page.Create Order Data With json Order Submit      ${user_login}   ${product}
    ${order_submit}     ordersubmit_page.Session Order Submit   ${order_data}