*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${google}  https://www.google.com/
${browser}  chrome

*** Test Cases ***
TC1
    open browser    ${google}  ${browser}
    wait until page contains    Gmail

    input text    xpath://body/div[1]/div[3]/form[1]/div[1]/div[1]/div[1]/div[2]/div[2]/input[1]  Facebook
    click element    xpath://body/div[1]/div[3]/form[1]/div[1]/div[1]/div[3]/center[1]/input[1]
    wait until page contains    Meta
    click element    xpath://h3[contains(text(),'Facebook - Log In or Sign Up')]
    wait until page contains    people in your life.

    Facebook operations

    capture page screenshot
    close all browsers

*** Keywords ***
Facebook operations
    [Documentation]    Here we are going to set Facebook birthdate as 07 JUNE 1997!!
    click element    xpath://body[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[5]/a[1]
    sleep  1

    select from list by value    xpath://body[1]/div[3]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[1]/div[5]/div[2]/span[1]/span[1]/select[1]  7
    sleep  2
    select from list by label    xpath://body[1]/div[3]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[1]/div[5]/div[2]/span[1]/span[1]/select[2]  Jun
    sleep  2
    select from list by index    xpath://body[1]/div[3]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[1]/div[5]/div[2]/span[1]/span[1]/select[3]  24
    sleep  2