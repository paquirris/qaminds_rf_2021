*** Settings ***
Resource  driver_setup.robot
Test Setup  ChromeDriver Setup
Test Teardown  ChromeDriver Close

*** Test Cases ***
Navigate Internet
    Go To  https://www.google.com/
    Print Page Info
    Go To  https://www.mlb.com/es
    Print Page Info
    ${html} =  Get Source
    Go To  https://www.nytimes.com/es/
    Reload Page
    Print Page Info
    Go Back
    Go Back
    Print Page Info

*** Keywords ***
Print Page Info
    ${title} =  Get Title
    ${url} =  Get Location
    Log  ${title}
    Log  ${url}