*** Settings ***
Documentation       This file handles browser/application configurations

Library     OperatingSystem
Library     SeleniumLibrary     timeout=50s     screenshot_root_directory=screenshots/


*** Variables ***
${BROWSER}      gc


*** Keywords ***
Launch Browser
    [Documentation]     This will launch browser
    ...     and set implicit wait
    ...     Example
    ...     | Launch Browser |
    Append To Environment Variable    Path      ${EXECDIR}${/}driver
    Open Browser    browser=${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://demo.openemr.io/b/openemr/index.php
#    Set Screenshot Directory    ${EXECDIR}${/}screenshots
#    Set Selenium Timeout    50s

End Browser
    Close Browser

End Browser With ScreenShot
    Capture Page Screenshot
    Close Browser