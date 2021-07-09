*** Settings ***
Documentation   This suite will handle all the test case related to
...     the valid credentails - OEM - 102

Resource    ../Resource/Base/common_functionality.resource

Test Setup      Launch Browser
Test Teardown   End Browser

*** Test Cases ***
Verify Valid Credential Tests
    Input Text    id=authUser    admin
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element   xpath=//button[@type='submit']
    Wait Until Page Contains    Flow Board      20s
    Title Should Be    OpenEMR