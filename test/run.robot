*** Settings ***
Library  SeleniumLibrary
Resource   ../test/TC1.robot
Library   DataDriver  ../data/pyrobot.xlsx

Suite Setup  Open My Browser

Suite Teardown  close all browsers

Test Template  Invalid Logins


*** Test Cases ***
WithDataDriven1
*** Keywords ***
Invalid Logins
    Select Login Option
    [Arguments]  ${username}  ${password}
    Input Uname  ${username}
    Input Pword  ${password}
    sleep   3s
    Click Login Button
    sleep   2s
    page should contain  Warning: No match for E-Mail Address and/or Password.
    capture page screenshot
    