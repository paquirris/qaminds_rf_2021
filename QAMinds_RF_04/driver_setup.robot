*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

*** Keywords ***
ChromeDriver Setup
    ${parent_path}  ${dir} =  Split Path  ${CURDIR}
    Create Webdriver  Chrome  executable_path=${parent_path}\\drivers\\chromedriver.exe
    Maximize Browser Window

ChromeDriver Close
    Close Browser