*** Settings ***
Library     Selenium2Library
Library     String

*** Variables ***
${BASE_URL}    http://www.amazon.com.mx
${BROWSER}    firefox
${SEL_SPEED}    1
${SEL_TIMEOUT}  5 sec


*** Keywords ***
Start Browser
    Open Browser    url=${BASE_URL}    browser=${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${SEL_SPEED}
    Set Selenium Timeout  ${SEL_TIMEOUT}

Format Selector
    [Arguments]    ${selector}    ${string_to_be_replaced}
    [Documentation]    Receives a selector and a string to be replaced.
    ...    The selector will replace any ocurrence of "%s" with the string to be replaced argument value and returns the resulting string.
    ${input_string}=  Convert To String  ${string_to_be_replaced}
    ${formatted_selector}=    Replace String    ${selector}    %s    ${input_string}
    [Return]  ${formatted_selector}