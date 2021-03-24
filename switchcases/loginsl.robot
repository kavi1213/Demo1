*** Settings ***
Library    SeleniumLibrary
Variables  ../switchcases/locators.py

*** Variables ***
${link}
${browser}
*** Keywords ***
LaunchBrowser
   [Arguments]  ${link}     ${browser}
   open browser  ${link}    ${browser}
   #maximize browser window
username
    [Arguments]     ${Username}
    input text      ${usernameoption}     ${username}
password
    [Arguments]     ${password}
    input password  ${passwordoption}     ${password}
Login button

    click button  ${subbtn}
    title should be  Swag Labs
    log to console  get title
    capture page screenshot
    sleep  5s
IfCondition

DropDown
    #select from list by index  xpath://*[@id="inventory_filter_container"]/select   3
    select from list by index  ${dropdwn}  3
    sleep  2s
Logout
    #click element  id:react-burger-menu-btn
    click element  ${logoutstep1}
    sleep  2s
    #click element  id:logout_sidebar_link
    click element  ${logoutstep2}


    capture page screenshot
end
    close browser
