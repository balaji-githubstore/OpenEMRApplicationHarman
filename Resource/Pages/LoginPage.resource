*** Settings ***
Documentation   This file will handle all the elements in the login page

Resource    ../Base/common_functionality.resource

*** Variables ***
${USERNAME_LOCATOR}      id=authUser
${PASSWORD_LOCATOR}      id=clearPass
${LANGUAGE_LOCATOR}      name=languageChoice
${LOGIN_LOCATOR}    xpath=//button[@type='submit']

*** Keywords ***
Enter Username
    [Arguments]     ${username}
    [Documentation]    This keyword will send username \n
    ...     Examples: \n
    ...     | Enter Username |  admin |
    ...     | Enter Username |  accountant |
    Input Text      ${USERNAME_LOCATOR}       ${username}

Enter Password
    [Arguments]     ${password}
    Input Password    ${PASSWORD_LOCATOR}       ${password}

Select Language
    [Arguments]     ${language}
    Select From List By Label      ${LANGUAGE_LOCATOR}       ${language}

Click Login
    Click Element      ${LOGIN_LOCATOR}
