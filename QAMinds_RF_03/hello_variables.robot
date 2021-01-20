*** Settings ***
Documentation  Examples using Test Suite Documentation
*** Variables ***
${MESSAGE}  QA Minds
*** Test Cases ***
Hello World With Variables
  [Documentation]  Example Test Case Documentation
  Log  ${MESSAGE}
Simple Hello World
  Log  Hello World!
