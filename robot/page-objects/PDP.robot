*** Settings ***
Library  Selenium2Library

*** Variables ***
${AVAILABLE_TEXT}   //div[@id='availability']/span
${AVAILABLE_LABEL}   //div[@id='availability']/span[contains(text(), 'Disponible')]
${BTN_ADD_TO_CART}  //input[@id='add-to-cart-button']
${MINICART_ITEMS_COUNT}  //span[@id='nav-cart-count']

*** Keywords ***
Verify Product Is Available
    ${availability}=  get text  ${AVAILABLE_TEXT}
    should be equal as strings  ${availability}  Disponible.
    element should be visible  ${AVAILABLE_LABEL}

Add To Cart
    click element  ${BTN_ADD_TO_CART}

Verify One Product Is In Cart
    ${items_count}=  get text  ${MINICART_ITEMS_COUNT}
    should be equal as integers  ${items_count}  1