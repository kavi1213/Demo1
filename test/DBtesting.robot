*** Settings ***
Library   DatabaseLibrary
Library  OperatingSystem

Suite Setup     Connect To Database  pymysql    ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown  Disconnect From Database

*** Variables ***
${DBName}       demo
${DBUser}       root
${DBPass}       Bharathi1998
${DBHost}       127.0.0.1
${DBPort}       3306


*** Test Cases ***
#Create Test1 Table
    #${output}=  execute sql string  Create table Test(id integer,first_name varchar(20),last_name varchar(20));
    #log to console  ${output}
    #should be equal as strings  ${output}    None

Create Test1 Table
    #Single Record
    #${output}=  execute sql string  insert into Test values(01,"Kavi","Bharathi");

    #Multiple Record
    ${output}=  EXECUTE SQL SCRIPT  ./data/database.sql
    log to console  ${output}
    should be equal as strings  ${output}    None