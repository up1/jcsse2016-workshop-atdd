*** Settings ***
Library    Selenium2Library

*** Variables ***

*** Testcases ***
Search JCSSE2016
    เปิด browser ไปที่ google
    พิมพ์ keyword JCSSE2016
    กด search
    จะต้องเจอ jcsse2016.cs.kku.ac.th

*** Keywords ***
จะต้องเจอ jcsse2016.cs.kku.ac.th
    Wait Until Page Contains    Jcsse2016

กด search
    Click Button    btnG

พิมพ์ keyword JCSSE2016
    Input Text    q    JCSSE2016

เปิด browser ไปที่ google
    Open Browser    http://www.google.com
