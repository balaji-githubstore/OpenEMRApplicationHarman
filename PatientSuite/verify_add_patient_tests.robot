*** Settings ***
Documentation   This suite will handle all the test case related to
...     the add patient - OEM - 102 - JIRA
Resource    ../Resource/Base/common_functionality.resource

Resource    ../Resource/Pages/LoginPage.resource
Resource    ../Resource/Pages/DashboardPage.resource

Test Setup      Launch Browser
Test Teardown   End Browser

*** Test Cases ***
Verify Add Patient Tests
    #database should not contain the record
    Enter Username     admin
    Enter Password      pass
    Select Language    English (Indian)
    Fail
    #database should contain the record

TC2
    Log To Console    sjjjs
    #abort the complete execution
    Fatal Error
