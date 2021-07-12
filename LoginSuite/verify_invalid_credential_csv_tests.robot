*** Settings ***
Documentation   This suite will handle all the test case related to
...     the invalid credentails - OEM - 102

Resource    ../Resource/Base/common_functionality.resource
Resource    ../Resource/Pages/LoginPage.resource

Test Setup      Launch Browser
Test Teardown   End Browser

Test Template   Verify Invalid Credential Template

Library     DataDriver      file=../TestData/InvalidCredentialData.csv

*** Test Cases ***
TC1_${username}_${password}

*** Keywords ***
Verify Invalid Credential Template
    [Arguments]     ${username}     ${password}     ${language}    ${expectedvalue}
    Enter Username      ${username}
    Enter Password    ${password}
    Select Language    ${language}
    Click Login
    Validate Invalid Error Message      ${expectedvalue}
    [Teardown]      End Browser With ScreenShot


