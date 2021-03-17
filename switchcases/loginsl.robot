*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
LaunchBrowser
    open browser  https://www.saucedemo.com/    chrome
    maximize browser window
username
    [Arguments]  ${Username}
    input text  id:user-name        ${username}
password
    [Arguments]  ${password}
    input password  id:password     ${password}
Login button
    click button  id:login-button
    title should be  Swag Labs
    log to console  get title
    capture page screenshot
    sleep  5s
IfCondition

DropDown
    select from list by index  xpath://*[@id="inventory_filter_container"]/select   3
    sleep  2s
Logout
    click element  id:react-burger-menu-btn
    sleep  2s
    click element  id:logout_sidebar_link

    capture page screenshot
end
    close browser