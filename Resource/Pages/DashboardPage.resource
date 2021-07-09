*** Settings ***
Documentation   This file will handle all the elements in the dashboard
...      and all menu will be controlled.

Resource    ../Base/common_functionality.resource

*** Keywords ***
Wait Until Dashboard Page Contains 
        [Arguments]         ${text}
        Wait Until Page Contains    ${text}

Log And Get Title
        ${title}    Get Title
        Log    ${title}
        [Return]    ${title}


#Log And Get Title
#        ${title}    Get Title
#        Log    ${title}
#        Return From Keyword   ${title}



