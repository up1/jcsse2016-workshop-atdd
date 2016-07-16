*** Settings ***
Library    Selenium2Library
Test Teardown    Close Browser

*** Variables ***
${LOGIN PAGE}    http://localhost:7272/html/

*** Testcases ***
Valid username and password
    Goto login page
    Input username demo
    Input password mode
    Submit
    Display welcome page

*** Keywords ***
Display welcome page
    Wait Until Page Contains    Welcome Page
    Page Should Contain Link    logout
    Click Link    logout
    Wait Until Page Contains    Login Page

Submit
    Click Button    LOGIN

Input username demo
    Input Text    username_field   demo

Input password mode
    Input Text    password_field   mode

Goto login page
    Open Browser    ${LOGIN PAGE}
