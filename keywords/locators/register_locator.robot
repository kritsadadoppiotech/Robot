*** Variables ***

${register_locator.from_register}      //*[@id="app"]/section/div/div
${register_locator.txt_Email}       //div[span[@class='ant-input-affix-wrapper css-eq3tly']]//input
${register_locator.txt_Password}       //div[span[@class='ant-input-affix-wrapper ant-input-password css-eq3tly']]//input[@id='basic_password']
${register_locator.txt_ConfirmPassword}     //div[span[@class='ant-input-affix-wrapper ant-input-password css-eq3tly']]//input[@id='basic_confirmPassword']
${register_locator.btn_signup}      //div[div[@class='ant-form-item-control-input-content']]//button

${register_locator.ant-modal_register}       //div[div[@class='ant-modal-confirm-body-wrapper']]
${register_locator.txt_error_register}      //div[div[@class='ant-modal-confirm-content']]//div
${register_locator.btn_error_register}      //div[div[@class='ant-modal-confirm-btns']]//button