*** Settings ***
Library  SeleniumLibrary
Resource  ../test/amazonlogin.robot
Resource  ../test/amazonorder.robot
Library   DataDriver  ../data/pyrobot.xlsx
Variables  ./test/amazon.py



Test Template  login

*** Test Cases ***
WithDataDriven1


*** Keywords ***
login
    [Arguments]  ${link}    ${browser}  ${username}    ${password}
    Browser operation   ${link}  ${browser}
    select Option
    Input Uname  ${username}
    Input Pword  ${password}
    Click log In btn
    ${name_in_page}=  get element count   ${condition}
    run keyword if  ${name_in_page} > 0   Keyword1     ELSE   Keyword2

Keyword1
    log to console  Valid Credentials
    Search Option
    Selecting Item
    Switching New Tab
    Add Cart
    close cart
    Switch old tab
    mouse over      ${mouseover}
    click element  ${signoutoption}
    capture page screenshot
    close browser

Keyword2
    log to console  Invald Credentials
    close browser
