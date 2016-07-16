*** Settings ***
Library    Selenium2Library
Resource    resources/login_keyword.robot
Suite Setup    Goto login page
Suite Teardown    Close Browser
Test Teardown    Back to login page
Test Template    Login fail template

*** Variables ***
${LOGIN PAGE}    http://localhost:7272/html/

*** Testcases ***   username     password
Empty username      ${EMPTY}       mode
Empty password      demo           ${EMPTY}
Empty username & password    ${EMPTY}    ${EMPTY}

*** Keywords ***
Login fail template
    [Arguments]    ${username}    ${password}
    Input username    ${username}
    Input password    ${password}
    Submit
    Display error page
