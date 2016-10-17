*** Settings ***
Library  Selenium2Library

*** Variables ***
${THIRD_RESULT}     //div[@id='atfResults']/ul/li[@id='result_2']//a

*** Keywords ***
Select Third Result
    wait until element is visible  ${THIRD_RESULT}
    click element    ${THIRD_RESULT}
