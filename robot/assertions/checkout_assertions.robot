*** Settings ***
Library  Selenium2Library

*** Variables ***
${AVAILABLE_TEXT}   //div[@id='availability']/span
${AVAILABLE_LABEL}   //div[@id='availability']/span[contains(text(), 'Disponible')]

*** Keywords ***
Verify Product Is Available
    ${availability}=  get text  ${AVAILABLE_TEXT}
    should be equal as strings  ${availability}  Disponible.
    element should be visible  ${AVAILABLE_LABEL}

Verify Items In Cart
    [Arguments]  ${items_in_cart}  ${expected_items}
    should be equal as integers  ${items_in_cart}  ${expected_items}
