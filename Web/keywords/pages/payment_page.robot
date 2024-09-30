*** Keyword ***
Input Credit Card Details
    Wait Until Element Is Visible       ${payment_locator.page_payment_details}
    Input Text   ${payment_locator.txt_card_number}     ${CreditCard.cardnumber}
    Input Text   ${payment_locator.txt_exp_date}     ${CreditCard.expdate}  
    Input Text   ${payment_locator.txt_cvc}     ${CreditCard.cvc}  
    Input Text   ${payment_locator.txt_cardowner}     ${CreditCard.cardowner}  
    Click Element   ${payment_locator.btn_confirm_Payment}
    
Check Payment Page
    Wait Until Element Is Visible       ${payment_locator.popup_payment_page}
    Click Element   ${payment_locator.btn_ok_payment_page}

Check Payment Complete
    Wait Until Element Is Visible       ${payment_locator.page_payment_success}
    ${oddetall}     Get Text    ${payment_locator.txt_status}
    Should Be Equal   ${oddetall}   Payment Complete
    Click Element       ${payment_locator.btn_payment_complete}