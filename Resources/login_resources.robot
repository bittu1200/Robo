*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGINURL}     https://admin-demo.nopcommerce.com/login
${BROWSER}      chrome

*** Keywords ***
Open my browser
    open browser    ${LOGINURL}  ${BROWSER}
    maximize browser window

Close my browser
    close all browsers

Input username
    [Arguments]    ${username}
    input text    id:Email  ${username}

Input pwd
    [Arguments]    ${password}
    input text    id:Password   ${password}

Click log in
    click button    xpath://button[contains(text(),'Log in')]

Click Log out
    click link    Logout

Error message should be visible
    page should contain    Login was unsuccessful

Dashboard page should be visible
    page should contain    Dashboard