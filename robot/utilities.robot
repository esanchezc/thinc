*** Settings ***
Library     Selenium2Library

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