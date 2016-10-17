*** Settings ***
Library  Selenium2Library

*** Variables ***

${BTN_ADD_TO_CART}  //input[@id='add-to-cart-button']
${MINICART_ITEMS_COUNT}  //span[@id='nav-cart-count']

*** Keywords ***
Add To Cart
    click element  ${BTN_ADD_TO_CART}

Get Cart Items Count
    ${items_count}=  get text  ${MINICART_ITEMS_COUNT}
    [Return]  ${items_count}