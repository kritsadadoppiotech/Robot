*** Variables ***
${login_locator.btn_cart}     //span[@aria-label='shopping-cart']
${cart_locator.popup_delivery_page}      //div[@class='ant-modal-confirm-content']
${cart_locator.btn_popup_delivery_page}      //div[@class='ant-modal-confirm-btns']

ant-card-body
${cart_locator.page_delivery_info}       //div[@class='ant-card-body']
${cart_locator.txt_delivery_info_name}       //input[@id='form_item_name']
${cart_locator.txt_delivery_info_surname}       //input[@id='form_item_surName']
${cart_locator.txt_delivery_info_address}       //input[@id='form_item_address']
${cart_locator.txt_delivery_info_phone}       //input[@id='form_item_phone']
${cart_locator.txt_delivery_info_email}       //input[@id='form_item_email']
${cart_locator.btn_pay}       //button[@class='css-eq3tly ant-btn ant-btn-primary ant-btn-dangerous']