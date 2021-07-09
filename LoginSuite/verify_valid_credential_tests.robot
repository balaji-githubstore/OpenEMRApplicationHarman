*** Settings ***
Documentation   This suite will handle all the test case related to
...     the valid credentails - OEM - 102
Resource    ../Resource/Base/common_functionality.resource


Resource    ../Resource/Pages/LoginPage.resource
Resource    ../Resource/Pages/DashboardPage.resource

Test Setup      Launch Browser
Test Teardown   End Browser

*** Test Cases ***
Verify Valid Credential Tests
    Enter Username     admin12
    Enter Password      pass
    Select Language    English (Indian)
    Click Login
    Wait Until Dashboard Page Contains
    ${actualTitle}      Log And Get Title
    Title Should Be    OpenEMR      message=title we received ${actualTitle}