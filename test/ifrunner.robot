*** Settings ***
Library  SeleniumLibrary
Resource   ../test/ifcondition.robot
Library   DataDriver  ../data/pyrobot.xlsx

Suite Setup  Browser

Suite Teardown  close all browsers

Test Template   Logins


*** Test Cases ***
WithDataDriven


*** Keywords ***
Logins
    Log in options
    [Arguments]  ${username}  ${password}
    Input Uname  ${username}
    Input Pword  ${password}
    sleep   3s
    Click Login Button
    sleep   2s
    Conditions
