*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library    DataDriver  ../TestData/LoginData.xlsx  sheet_name=Sheet1
Suite Setup    Open my browser
Suite Teardown    Close my browser
Test Template    Invalid Login

*** Test Cases ***
LoginTestwithExcel ${username}  ${password}

*** Keywords ***
Invalid Login
    [Arguments]    ${username}  ${password}
    Input username    ${username}
    Input pwd    ${password}
    Click log in
    Error message should be visible
    sleep  3