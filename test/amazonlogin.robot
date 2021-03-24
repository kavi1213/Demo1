*** Settings ***
Library  SeleniumLibrary
Variables  ./test/amazon.py

*** Variables ***
${browser}
${url}

*** Keywords ***
Browser operation
   [Arguments]  ${link}     ${browser}
   open browser  ${link}    ${browser}
   # maximize browser window

select Option
    click link  ${clicksigninoption}
Input Uname
    [Arguments]  ${username}
    input text  ${enterusername}    ${username}
    click element  ${continuebtn1}

Input Pword
    [Arguments]  ${password}
    input password   ${enterpassword}    ${password}

Click log In btn
    select checkbox  rememberMe
    click element  ${subbtn1}
    sleep  3s





