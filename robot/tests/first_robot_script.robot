*** Settings ***
#Test Setup    Open Browser    ${BASE_URL}    ${BROWSER}
Test Setup    Start Browser
#Test Teardown    capture page screenshot
Test Teardown    Run Keywords    capture page screenshot    close browser
Suite Teardown    close all browsers
Resource    ../utilities.robot
Resource    ../page-objects/search.robot

*** Test Cases ***
My First Test
    [Documentation]    my first test case
    [Tags]    amazon
    Search    Marvel

My Second Test
    [Tags]    amazon
    Search    DC Comics

My Third Test
    [Tags]    web_elements
    @{search_results}=    Search And Get All Search Results    Marvel
    Validate Each Test Result Has Price    @{search_results}
