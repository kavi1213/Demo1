*** Settings ***
Library  SeleniumLibrary
Resource   ../switchcases/loginsl.robot
Library  DataDriver  ../data/saucedemo.xlsx
Variables  ../switchcases/locators.py

Test Template  Test

*** Test Cases ***
SauceDemo


*** Keywords ***
Test
        [Arguments]  ${link}    ${browser}  ${username}    ${password}      ${Status}
        LaunchBrowser   ${link}  ${browser}
        username    ${username}
        password    ${password}
        Login button
        #${name_in_page}=  get element count  id:inventory_container
        #run keyword if  ${name_in_page} > 0   Keyword1     ELSE   Keyword2
        Should Be True	${Status} = Y
        Run Keyword If	${status} == 'PASS'    keyword1   ELSE  keyword2


keyword1
        DropDown
        logout
        end
keyword2
        log to console  Invalid
        end