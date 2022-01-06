*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup    Open my browser
Suite Teardown    Close my browser
Test Template   Invalid Login

*** Test Cases ***
Right user empty pass   admin@yourstore.com  ${EMPTY}
Right user wrong pass   admin@yourstore.com  admi
Wrong user right pass   adm@yourstore.com   admin
Wrong user empty pass   adm@yourstore.com  ${EMPTY}
Wrong user wrong pass   adm@yourstore.com  adm

*** Keywords ***
Invalid Login
    [Arguments]    ${username}  ${password}
    Input username    ${username}
    Input pwd    ${password}
    Click log in
    Error message should be visible
    sleep  3