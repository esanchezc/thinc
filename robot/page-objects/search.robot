*** Settings ***
Resource    ../utilities.robot

*** Variables ***
${search_textfield}    twotabsearchtextbox
${search_button}    css=.nav-input
${results_list}    //li[contains(@id,'result')]

*** Keywords ***
Search
    [Arguments]    ${term}
    Input Text    ${search_textfield}    ${term}
    click element    ${search_button}
    Wait Until Element Is Visible    ${results_list}

Search And Get All Search Results
    [Arguments]    ${term}
    Search    ${term}
    @{search_results}=    get webelements    ${results_list}
    [Return]    @{search_results}

Validate Each Test Result Has Price
    [Arguments]    @{search_results}
    :FOR    ${search_result}    IN    @{search_results}
    \    element should contain    ${search_result}    $

