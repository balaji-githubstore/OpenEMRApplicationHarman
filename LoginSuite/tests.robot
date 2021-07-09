*** Settings ***
Documentation   This suite will handle all the test case related to
...     the invalid credentails - OEM - 102

Resource    ../Resource/Base/common_functionality.resource
Resource    ../Resource/Pages/LoginPage.resource

Test Setup      Launch Browser
Test Teardown   End Browser

*** Test Cases ***
Login
    [Setup]
    Append To Environment Variable    Path      ${EXECDIR}${/}driver
    Open Browser    url=https://www.pepperfry.com/    browser=gc
    Maximize Browser Window
#    Set Selenium Speed    30S
    Set Selenium Implicit Wait    30s
    Run Keyword And Ignore Error
    ...     Click Element    xpath=//div[@id='regPopUp']//a[@class='popup-close']

    Input Text    id=search    bedsheets
    Click Element    id=searchButton
    #Set Selenium Implicit Wait    10S
    #Wait Until Page Contains    Search Results For
    #${PopUp}        //div[@id='regPopUp']//a[@class='popup-close']
    #Alert Should Not Be Present     DISMISS

    Mouse Over    //div[contains(@class,'clip__filter is_stuck')]
    Select Checkbox    //label[@for='brandsnameSleep_Dove']

    Mouse Over      //div[@unbxdattr='product']
    Click Element    //div[@unbxdattr='product'][position()=1]