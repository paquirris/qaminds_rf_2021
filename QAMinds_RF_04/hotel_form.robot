*** Settings ***
Resource  driver_setup.robot
Test Setup  ChromeDriver Setup
Test Teardown  ChromeDriver Close

*** Test Cases ***
Fill Hotel Form
    Go To  https://formsmarts.com/form/axi?mode=h5
    Input Text  id:u_KqI_60857  Frank
    Input Text  id:u_KqI_60858  Orozco
    Input Text  id:u_KqI_60859  orozco.francisco1@gmail.com
    Input Text  id:u_KqI_60860  Calle Falsa 123
    Input Text  id:u_KqI_60861  02/02/2021
    Select From List By Labe  id:u_2yd_60871  Mexico
    Input Text  id:u_KqI_60870  2
    Click Element  name:submit
    Capture Page Screenshot  filename=hotel_form.png
