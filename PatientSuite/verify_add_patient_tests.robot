*** Settings ***
Documentation   This suite will handle all the test case related to
...     the add patient - OEM - 102 - JIRA
Resource    ../Resource/Base/common_functionality.resource

Resource    ../Resource/Pages/LoginPage.resource
Resource    ../Resource/Pages/DashboardPage.resource

Test Setup      Launch Browser
Test Teardown   End Browser

*** Test Cases ***
Verify Add Patient Tests
    Enter Username     admin
    Enter Password      pass
    Select Language    English (Indian)
