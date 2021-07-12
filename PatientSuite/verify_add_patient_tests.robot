*** Settings ***
Documentation   This suite will handle all the test case related to
...     the add patient - OEM - 102 - JIRA
Resource    ../Resource/Base/common_functionality.resource

Resource    ../Resource/Pages/LoginPage.resource
Resource    ../Resource/Pages/DashboardPage.resource

Library     DatabaseLibrary

Test Setup      Run Keywords     Launch Browser     AND     Connect To Database     dbapiModuleName=pymysql
...     dbName=dbfree_db     dbUsername=dbfree_db     dbPassword=12345678    dbHost=db4free.net     dbPort=3306
Test Teardown   Run Keywords    End Browser     AND     Disconnect From Database

*** Test Cases ***
Verify Add Patient Tests
    #database should not contain the record

    Check If Not Exists In Database    select * from Products where product_id=400
    Enter Username     admin
    Enter Password      pass
    Select Language    English (Indian)
    Fail
    #database should contain the record
    Check If Exists In Database    select * from Products
TC2
    [Setup]     Launch Browser And Open Database Connection
    Log To Console    sjjjs
    #abort the complete execution
#    Fatal Error
