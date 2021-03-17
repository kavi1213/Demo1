*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://demo.opencart.com/
${browser}  ff

*** Keywords ***
Browser
    open browser    ${url}   ${browser}
    maximize browser window

Log in options
    click link  xpath://*[@id="top-links"]/ul/li[2]/a
    click link  xpath://*[@id="top-links"]/ul/li[2]/ul/li[2]/a

Input Uname
    [Arguments]  ${username}
    input text  id:input-email    ${username}

Input Pword
    [Arguments]  ${password}
    input text  id:input-password      ${password}
Click login button
    click element  xpath://*[@id="content"]/div/div[2]/div/form/input

Conditions
    ${name_in_page}=  Get Element Count   xpath://*[@id="content"]/ul
    run keyword if  ${name_in_page} == 4  Test Keyword1     ELSE  Test Keyword2

Test Keyword1

    log to console  Valid Credentials
    click link  xpath://*[@id="top-links"]/ul/li[2]/a
    click link  xpath://*[@id="top-links"]/ul/li[2]/ul/li[5]/a
    sleep  2s
    click element  xpath://*[@id="content"]/div/div/a
    title should be  Your Store
    capture page screenshot


Test Keyword2
    log to console  Incorrect Credentials
    capture page screenshot

