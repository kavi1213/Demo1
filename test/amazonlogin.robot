*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.amazon.in/

*** Keywords ***
Browser operation
    open browser    ${url}   ${browser}
    maximize browser window

select Option
    click link  xpath://*[@id="nav-link-accountList"]

Input Uname
    [Arguments]  ${username}
    input text  id:ap_email    ${username}

    click element  id:continue
Input Pword
    [Arguments]  ${password}
    input password  id:ap_password      ${password}
Click log In btn
    select checkbox  rememberMe
    click element  id:signInSubmit
    sleep  3s





