*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${siteurl}  C:/Users/vpandey1/Downloads/dropdown.html

*** Test Cases ***
Dropdown TC1
    [Documentation]    Here we will set the birthdate as 07 June 2000
    Open the browser
    Dropdown actions
    Close the browser

*** Keywords ***
Open the browser
    open browser    ${siteurl}  chrome
Close the browser
    close all browsers
Dropdown actions
    select from list by index    xpath:/html/body/form/div[1]/select  6
    sleep  2
    select from list by label    xpath:/html/body/form/div[2]/select  07
    sleep  2
    select from list by value    xpath:/html/body/form/div[3]/select  0
    sleep  2
Capture the result
    capture page screenshot
