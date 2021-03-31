*** Settings ***
Library  SeleniumLibrary
Library  DataDriver  ../data/ohrm.xlsx
Variables  ../test/ohrm.py
*** Variables ***
${url}
${Browser}
*** Keywords ***
Browser
    [Arguments]  ${url}     ${Browser}
    open browser    ${url}  ${Browser}
    maximize browser window
username
    input text  id:txtUsername   Admin
password
    input text  id:txtPassword   admin123
login button
    click button  id:btnLogin
    sleep  2s

SelectAdmin
    click element  ${Admin}
    click button  ${Add}

AddingDetailes
    select from list by label  systemUser[userType]     ESS

AdminName
    [Arguments]  ${empName}
    input text  ${Text1}  ${empName}
EmployeeName
    [Arguments]  ${username}
    input text  ${Text2}  ${username}
    select from list by index  systemUser[status]   0
Password Field
    [Arguments]   ${PassWord}
    input text    ${password1}    ${PassWord}
Confirm Password Field
    [Arguments]   ${CPassWord}
    input text  ${cpassword1}   ${CPassWord}

Cache
    close all browsers

IfCondition
    ${Required}=  get element count     xpath://span[text()='Required']
    run keyword if  ${Required} > 0  Invalid
    ...     ELSE  ValidData

SaveOption
    click button  ${Save}



Invalid
    log to console  Invalid Data
    close browser

ValidData
    log to console  Succesfull
    capture page screenshot
    #[Arguments]  ${username}
    #input text  ${Text3}    ${username}
    #click element  ${Search}
    #page should contain  ${username}
    sleep  2s
    close browser
