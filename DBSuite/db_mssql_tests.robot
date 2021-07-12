*** Settings ***

Resource    ../Resource/Base/common_functionality.resource

#Suite Setup     Connect To Database Using Custom Params    pyodbc   'Driver={SQL SERVER};Server=Servername;Database=dbname;Trusted_connection=Yes'
Suite Setup     Connect To MsSql
Suite Teardown      Disconnect From Database



*** Test Cases ***
TC1
#    Set Local Variable    ${connectionstring}       'Driver={SQL SERVER};Server=Servername;Database=dbname;Trusted_connection=Yes'
#    Connect To Database Using Custom Params    pyodbc        ${connectionstring}
    Check If Exists In Database    select * from Products
    Check If Not Exists In Database    select * from Products where product_id=400
