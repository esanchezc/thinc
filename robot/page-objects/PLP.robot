*** Settings ***
Library     Selenium2Library
Resource    ../utilities.robot

*** Variables ***
${NTH_RESULT}     //div[@id='atfResults']/ul/li[@id='result_%s']//a

*** Keywords ***
Select Result In Position
    [Arguments]  ${position}
    ${nth_position_selector}=  Format Selector  ${NTH_RESULT}  ${position}
    wait until element is visible  ${nth_position_selector}
    click element    ${nth_position_selector}
