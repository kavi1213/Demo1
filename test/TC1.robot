*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://demo.opencart.com/
${browser}  chrome

*** Keywords ***
Open My Browser
    open browser    ${url}   ${browser}
    maximize browser window


Select Login Option
     click link  xpath://*[@id="top-links"]/ul/li[2]/a
     click link  xpath://*[@id="top-links"]/ul/li[2]/ul/li[2]/a

Input Uname
    [Arguments]  ${username}
    input text  id:input-email    ${username}

Input Pword
    [Arguments]  ${password}
    input text  id:input-password      ${password}

Click Login Button
    click element  xpath://*[@id="content"]/div/div[2]/div/form/input

Close Browser
    close all browsers