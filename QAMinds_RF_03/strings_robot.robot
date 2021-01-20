*** Settings ***
Library  String

*** Variables ***
${LOWER_STR}  i am doing testing using robot
${UPPER_STR}  QA MINDS ROBOT FRAMEWORK

*** Test Cases ***
Test String Variables
  Log  ${LOWER_STR}
  Log  ${UPPER_STR}
  Should Be String  ${LOWER_STR}
  Should Be String  ${UPPER_STR}
  Should Be Lowercase  ${LOWER_STR}
  Should Be Uppercase  ${UPPER_STR}
