*** Keywords ***
Back to login page
    Go To    ${LOGIN PAGE}

Display error page
    Wait Until Page Contains    Error Page

Submit
    Click Button    LOGIN

Input username
    [Arguments]    ${username}
    Input Text    username_field   ${username}

Input password
    [Arguments]    ${password}
    Input Text    password_field   ${password}

Goto login page
    Open Browser    ${LOGIN PAGE}
