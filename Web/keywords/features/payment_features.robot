*** Keyword ***
Select Payment Method Credit Card And Input Credit Card Details
    Select Payment Method Credit Card
    payment_page.Input Credit Card Details

Check Payment success
    payment_page.Check Payment Page
    payment_page.Check Payment Complete

Select Payment Method Credit Card   
    Wait Until Element Is Visible       ${payment_locator.page_Select_Payment_Method}
    Click Element   ${payment_locator.radio_Select_creditcard}
    Click Element   ${payment_locator.btn_next_Select_Payment_Method}