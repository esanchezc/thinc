*** Settings ***
Library  Selenium2Library

*** Variables ***
${THIRD_RESULT}     //div[@id='atfResults']/ul/li[@id='result_2']

*** Keywords ***
Select Third Result
    click element    ${THIRD_RESULT}

