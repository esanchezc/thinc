*** Settings ***
Resource    ../utilities.robot

*** Variables ***
${ALL_DEPARTMENTS_MENU}             nav-link-shopall
${ALL_DEPARTMENTS_ELECTRONICOS}     //*[@id='nav-flyout-shopAll']/div[2]/span[4]/span
${ELECTRONICOS_CELULARES_LINK}      //*[@id='nav-flyout-shopAll']/div[3]/div[4]/div/a[3]/span

*** Keywords ***
Open Cellphones Store Menu
    Mouse Over  ${ALL_DEPARTMENTS_MENU}
    Mouse Over  ${ALL_DEPARTMENTS_ELECTRONICOS}
    Mouse Over  ${ELECTRONICOS_CELULARES_LINK}
    Click Element  ${ELECTRONICOS_CELULARES_LINK}