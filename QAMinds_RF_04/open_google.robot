*** Settings ***
Resource  driver_setup.robot
Test Setup  ChromeDriver Setup
Test Teardown  ChromeDriver Close

*** Test Cases ***
Open Google
  Go To  https://www.google.com

Open Youtube
  Go To  https://www.youtube.com