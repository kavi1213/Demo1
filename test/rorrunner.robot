*** Settings ***
Library  SeleniumLibrary
Resource   ../switchcases/loginsl.robot
Library   DataDriver  ../data/pyrobot.xlsx



Suite Teardown  close all browsers

Test Template   Logins


*** Test Cases ***
WithDataDriven


*** Keywords ***
Logins
    Launch Browser
       run keyword  ${ststus}==


keyword1
    Launch Browser
    [Arguments]  ${username}  ${password}
    Input username
    Input passwd
    sleep   3s
    btn
    capture page screenshot
    end

keyword2
    Launch Browser
    log to console  Failed
    end
