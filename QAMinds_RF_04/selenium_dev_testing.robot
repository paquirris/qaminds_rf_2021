*** Settings ***
Resource  driver_setup.robot
Test Setup  ChromeDriver Setup
Test Teardown  ChromeDriver Close

*** Test Cases ***
Test Selenium Dev links
    Go To  https://www.selenium.dev/
    Print Page Info
    Element Should Be Enabled  link:Downloads
    Element Should Be Visible  link:Downloads
    Click Link  Downloads
    Capture Page Screenshot  filename=selenium_dev_testing_downloads.png

    Element Should Be Enabled  link:Projects
    Element Should Be Visible  link:Projects
    Click Link  Projects
    Capture Page Screenshot  filename=selenium_dev_testing_projects.png

    Element Should Be Enabled  link:Documentation
    Element Should Be Visible  link:Documentation
    Click Link  Documentation
    Capture Page Screenshot  filename=selenium_dev_testing_doc.png

*** Keywords ***
Print Page Info
    ${title} =  Get Title
    ${url} =  Get Location
    Log  ${title}
    Log  ${url}