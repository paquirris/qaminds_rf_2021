*** Settings ***
Documentation  This is a hello robot app

*** Variables ***
${MESSAGE}  QA Minds

*** Test Cases ***
Hello World With Variables
    [Documentation]     Example Test Documentation
    Log     ${MESSAGE}

Simple Hello World
  Log  Hello World!