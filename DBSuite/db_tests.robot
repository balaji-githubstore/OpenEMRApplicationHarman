*** Settings ***
Library     DatabaseLibrary

Suite Setup     Connect To Database     dbapiModuleName=pymysql
...     dbName=dbfree_db     dbUsername=dbfree_db     dbPassword=12345678    dbHost=db4free.net     dbPort=3306
Suite Teardown      Disconnect From Database



*** Test Cases ***
#TC1
#    Check If Exists In Database    select * from Products
#    Check If Not Exists In Database    select * from Products where product_id=400
#
#    ${rowcount}     Row Count    select * from Products
#    Log To Console    ${rowcount}
#    Row Count Is Equal To X    select * from Products    3
#    Row Count Is Greater Than X    select * from Products     1
#    Table Must Exist    Products
##    Row Count Is 0    selectStatement
##    Row Count Is Less Than X    selectStatement    numRows
#
#TC2
##    Execute Sql String    update/insert/delete
#    Execute Sql String    Update Products set description='ji' where product_id=1
#    Check If Exists In Database     select * from Products where description='ji'
#
#
TC3
    @{result}   Query    select * from Products
    Log To Console    ${result}
    Log To Console    ${result}[0]
    Log To Console    ${result}[0][0]
    Log To Console    ${result}[0][1]

