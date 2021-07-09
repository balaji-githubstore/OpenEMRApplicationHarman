*** Settings ***
Documentation   This suite will handle all the test case related to
...     the valid credentails - OEM - 102
Resource    ../Resource/Base/common_functionality.resource

Resource    ../Resource/Pages/LoginPage.resource
Resource    ../Resource/Pages/DashboardPage.resource

Test Setup      Launch Browser
Test Teardown   End Browser

Test Template      Verify Valid Credential Template

*** Test Cases ***
TC1     admin   pass    English (Indian)    Flow Board      OpenEMR
TC2     physician   physician    English (Indian)    Flow Board    OpenEMR
TC3     accountant   accountant    English (Indian)    Flow Board    OpenEMR

*** Keywords ***
Verify Valid Credential Template
    [Arguments]     ${username}     ${password}     ${language}     ${pagedata}     ${expectedtitle}
    Enter Username     ${username}
    Enter Password      ${password}
    Select Language    ${language}
    Click Login
    Wait Until Dashboard Page Contains     ${pagedata}
    Title Should Be    ${expectedtitle}

