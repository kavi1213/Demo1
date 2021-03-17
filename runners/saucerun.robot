*** Settings ***
Library  SeleniumLibrary
Resource   ../switchcases/loginsl.robot
Library  DataDriver  ../data/saucedemo.xlsx

Test Template  Test

*** Test Cases ***
SauceDemo


*** Keywords ***
Test
        [Arguments]  ${link}    ${browser}  ${username}    ${password}
        LaunchBrowser   ${link}  ${browser}
        username    ${username}
        password    ${password}
        Login button
        ${name_in_page}=  get element count  id:inventory_container
        run keyword if  ${name_in_page} > 0   Keyword1     ELSE   Keyword2

keyword1
    DropDown
    logout
    end
keyword2
    log to console  Invalid
    end