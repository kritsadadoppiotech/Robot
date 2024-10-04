*** Settings ***
Resource    ../keywords/import.robot

*** Test Cases ***
TC-001 Assignment with a real test case
    common.Open Mobile App
    home_features.Select Product And Add To Cart
    cart_features.Open Cart And Check Product In Cart
    common.Close Mobile App