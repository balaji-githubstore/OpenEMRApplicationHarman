*** Settings ***
Force Tags      alltests
Default Tags    dtests

*** Test Cases ***
TC1
    [Tags]    OP-151
    Log To Console    tc1

TC2
    Log To Console    tc2

TC3
    Set Tags  tc3   tc3.1
    Log To Console    tc3
    FOR    ${tag}    IN    @{TEST TAGS}
        Log To Console    ${tag}
    END
    Remove Tags     tc3.1   dtests