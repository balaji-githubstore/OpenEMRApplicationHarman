*** Settings ***
Documentation   This suite will handle all the test case related to
...     the invalid credentails - OEM - 102

Resource    ../Resource/Base/common_functionality.resource

Test Setup      Launch Browser
Test Teardown   End Browser

*** Test Cases ***
Verify Invalid Credential Tests
    Input Text    id=authUser    admin123
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element   xpath=//button[@type='submit']
    Element Should Contain    xpath=//div[contains(text(),'Invalid')]    Invalid username or password

*** Comments ***
push the code to github
will start by 11:45
