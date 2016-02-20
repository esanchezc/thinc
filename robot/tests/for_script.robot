*** Settings ***
Library         Selenium2Library
#Test Setup    Open Browser    ${BASE_URL}    ${BROWSER}
Test Setup    Start Browser
Test Teardown    capture page screenshot
Suite Teardown    close all browsers
Resource    ../utilities.robot
Resource    ../page-objects/search.robot
Variables   ../variable-files/search_terms.py

*** Test Cases ***
First For Loop Test Case
    [Documentation]    my first test case
    [Tags]    for_loop1
    :FOR    ${term}    IN    @{SEARCH_TERMS}
    \    Search   ${term}
    \    go back

Second For Loop Test Case
    [Tags]    for_loop2
    [Template]    Search
    :FOR    ${term}   IN    @{SEARCH_TERMS}
    \    ${term}
