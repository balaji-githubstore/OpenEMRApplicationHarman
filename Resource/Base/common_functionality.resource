*** Settings ***
Documentation       This file handles browser/application configurations

Library     OperatingSystem
Library     SeleniumLibrary     timeout=50s     screenshot_root_directory=screenshots/
Library     DatabaseLibrary

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

Launch Browser And Open Database Connection
    [Documentation]     This will launch browser and connect to database
    ...     and set implicit wait
    ...     Example
    ...     | Launch Browser |
    Launch Browser
    Connect To Database     dbapiModuleName=pymysql
    ...     dbName=dbfree_db     dbUsername=dbfree_db     dbPassword=12345678    dbHost=db4free.net     dbPort=3306

Connect To MsSql
    Set Local Variable    ${connectionstring}       'Driver={SQL SERVER};Server=Servername;Database=dbname;Trusted_connection=Yes'
    Connect To Database Using Custom Params     pyodbc    ${connectionstring}