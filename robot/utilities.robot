*** Settings ***
Library           Selenium2Library

*** Variables ***
#${REMOTE_URL}    http://192.168.15.179:5555/wd/hub
${BASE_URL}    http://www.amazon.com.mx
${BROWSER}    chrome
${SEL_SPEED}    1
${SEL_TIMEOUT}  20 sec


*** Keywords ***
Start Browser
    Open Browser    url=${BASE_URL}    browser=${BROWSER}    #remote_url=${REMOTE_URL}    desired_capabilities=browserName:${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${SEL_SPEED}
    Set Selenium Timeout  ${SEL_TIMEOUT}