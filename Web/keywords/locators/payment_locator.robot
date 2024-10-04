*** Variables ***
${payment_locator.page_Select_Payment_Method}     //div[@class='payment-selection']
${payment_locator.radio_Select_creditcard}     //div[@class='radio-box radio-selected']
${payment_locator.radio_Select_qrcode}     //div[@class='radio-box']
${payment_locator.btn_next_Select_Payment_Method}     //button[@type='button']

${payment_locator.page_payment_details}     //div[@class='form-login']
${payment_locator.txt_card_number}       //input[@id='basic_bin']
${payment_locator.txt_exp_date}       //input[@id='basic_exp']
${payment_locator.txt_cvc}       //input[@id='basic_cvc']
${payment_locator.txt_cardowner}       //input[@id='basic_owner']
${payment_locator.btn_confirm_Payment}       //button[@type='submit']

${payment_locator.popup_payment_page}      //div[@class='ant-modal-content']
${payment_locator.btn_ok_payment_page}       //button[@type='button']

${payment_locator.page_payment_success}      //div[@class='success-display']
${payment_locator.txt_status}      //div[@class='success-title']
${payment_locator.btn_payment_complete}      //button[@class='css-eq3tly ant-btn ant-btn-link']//span