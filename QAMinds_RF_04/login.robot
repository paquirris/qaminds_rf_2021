*** Settings ***
Resource  driver_setup.robot
Test Setup  Custom Setup
Test Teardown  ChromeDriver Close

*** Test Cases ***
Login Form
    Go To  https://demoqa.com/login
    Input Text  id:userName  Frank_user
    Input Text  id:password  password
    Capture Page Screenshot  filename=login_test.png
    Click Element  id:login

*** Keywords ***
Custom Setup
    ChromeDriver Setup
    Set Selenium Speed  0.5 seconds
