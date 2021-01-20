*** Settings ***
Resource  driver_setup.robot
Test Setup  ChromeDriver Setup
Test Teardown  ChromeDriver Close

*** Test Cases ***
Fill Search Booking
    Go To  https://www.phptravels.net/
    Click Element  id:select2-drop  London
    Input Text  //input[@type='search' and @name='dest']  London
    
    Input Text  id:checkin  13/02/2021
    Input Text  id:checkout  26/02/2021
    Input Text  name:adults  2
    Input Text  name:children  1
    Capture Page Screenshot  filename=tavels_test.png
    Click Element  class:btn btn-primary btn-block


