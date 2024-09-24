*** Settings ***
Resource    ../keywords/import.robot

*** Test Cases ***
TC-001 Assignment with a real test case
    #register_features.Open Doppee And Register
    login_features.Open Doppee And Login With Username And Password
    home_features.Search Product And Add Product to Cart
    cart_features.Input Delivery info And Click Button PAY
    payment_features.Select Payment Method Credit Card And Input Credit Card Details
    payment_features.Check Payment success