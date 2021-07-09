*** Settings ***
Documentation       This file handles browser/application configurations

Library     OperatingSystem
Library     SeleniumLibrary

*** Keywords ***
Launch Browser
    [Documentation]     This will launch browser
    ...     and set implicit wait
    ...     Example
    ...     | Launch Browser |
    Append To Environment Variable    Path      ${EXECDIR}${/}driver
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://demo.openemr.io/b/openemr/index.php

End Browser
    Close Browser