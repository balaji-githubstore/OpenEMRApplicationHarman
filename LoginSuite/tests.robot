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


Login1
    Open Browser    url=https://phptravels.net/home    browser=gc
    Maximize Browser Window
#    Set Selenium Speed    1s
    Click Element    //a[contains(text(),'Flights')]
    Mouse Over    id=select2-drop-mask
    #Input Text    @id=select2-drop-mask    Los Angeles (LAX)
    Capture Element Screenshot    id=select2-drop-mask
    
    Click Element    //*[@name="flightmanualSearch"]//span[text()='Enter city or airport']
    Input Text    //*[@name="flightmanualSearch"]//input[@class='select2-input']    LAX
    Click Element    //span[normalize-space()='lax'] 