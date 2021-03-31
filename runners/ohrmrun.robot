*** Settings ***
Library  SeleniumLibrary

Resource   ../test/ohrm.robot
Library  DataDriver  ../data/ohrm.xlsx
Variables  ../test/ohrm.py


Test Template  orangehrm
*** Test Cases ***
Adding User

*** Keywords ***
orangehrm
    Cache
    [Arguments]     ${empName}  ${username}  ${PassWord}  ${CPassWord}  ${url}   ${Browser}
    Browser         ${url}  ${Browser}
    username
    password
    login button
    SelectAdmin
    AddingDetailes
    AdminName               ${empName}
    EmployeeName            ${username}
    Password Field          ${PassWord}
    Confirm Password Field  ${CPassWord}
    SaveOption
    IfCondition

