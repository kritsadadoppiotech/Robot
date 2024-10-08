*** Keywords ***
Verify can Add and Delete Product to Database
    product_page.Check if your Product is Not Exist in Database
    product_page.Add Product in database
    ${product_id}   product_page.Get ID Product From name
    product_page.Delete Product in Database     ${product_id}
    product_page.Check if your Delete Product is Exist in Database  ${product_id}

Verify can Add and Decrease Qty and Delete Product to Database
    product_page.Check if your Product is Not Exist in Database
    product_page.Add Product in database
    ${product_id}   product_page.Get ID Product From name
    product_page.Check Qty in Database  ${product_id}
    product_page.Change Qty in Database  ${product_id}
    product_page.Check Qty in Database  ${product_id}
    product_page.Delete Product in Database     ${product_id}
    product_page.Check if your Delete Product is Exist in Database  ${product_id}