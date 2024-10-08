*** Settings ***
Resource    ../keywords/import.robot

*** Test Cases ***
# TC-001 Verify can add and delete product to database
#     common.Connect To Database
#     product_features.Verify can Add and Delete Product to Database
#     common.Disconnect Form Database
    

TC-002 Verify can Decrease Product Qty to Database
    common.Connect To Database
    product_features.Verify can Add and Decrease Qty and Delete Product to Database
    common.Disconnect Form Database
