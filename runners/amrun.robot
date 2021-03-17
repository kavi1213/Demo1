*** Settings ***
Library  SeleniumLibrary
Resource  ../test/amazonlogin.robot
Resource  ../test/amazonorder.robot
Library   DataDriver  ../data/pyrobot.xlsx


Test Template  login


*** Test Cases ***
WithDataDriven1

*** Keywords ***
login
    Browser operation
    select Option
    [Arguments]  ${username}  ${password}
    Input Uname  ${username}
    Input Pword  ${password}
    Click log In btn
    ${name_in_page}=  get element count  //*[@id="nav-cart-count"]
    run keyword if  ${name_in_page} > 0   Keyword1     ELSE   Keyword2

Keyword1
    log to console  Valid Credentials
    Search Option
    Selecting Item
    Switching New Tab
    Add Cart
    close cart
    Switch old tab
    mouse over  id:nav-link-accountList-nav-line-1
    click element  xpath://span[text()='Sign Out']
    capture page screenshot
    close browser

Keyword2
    log to console  Invald Credentials
    close browser
