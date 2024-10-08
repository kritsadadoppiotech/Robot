*** Keywords ***
Check if your Product is Not Exist in Database
    Check If Not Exists In Database     SELECT * FROM product WHERE name = '${TC01.name}'

Add Product in database
    Execute Sql String   INSERT INTO product("name",description,qty,price,discount,image_url,product_category_id,rec_status) VALUES ('${TC01.name}','${TC01.description}',${TC01.qty},${TC01.price},${TC01.discount},'${TC01.image_url}',${TC01.product_category_id},'${TC01.rec_status}')

Get ID Product From name   
    ${product}  Query     SELECT * FROM product WHERE name = '${TC01.name}'
    Should Not Be Empty    ${product}
    ${product_id}   Set Variable    ${product[0][0]}
    RETURN      ${product_id}

Change Qty in Database
    [Arguments]     ${product_id}
    Execute Sql String     UPDATE product set qty = qty - 1 WHERE id = '${product_id}'

Check Qty in Database
    [Arguments]     ${product_id}
    ${qty}  Query     SELECT * FROM product WHERE id = '${product_id}'
    ${qty}   Set Variable    ${qty[0][3]}

Delete Product in Database
    [Arguments]     ${product_id}
    Execute Sql String     DELETE FROM product WHERE id = '${product_id}'

Check if your Delete Product is Exist in Database
    [Arguments]     ${product_id}
    Check If Not Exists In Database     SELECT * FROM product WHERE id = '${product_id}'