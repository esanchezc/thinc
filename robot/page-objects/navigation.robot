*** Settings ***
Resource    ../utilities.robot

*** Variables ***
${ALL_DEPARTMENTS_MENU}             nav-link-shopall
${ALL_DEPARTMENTS_ELECTRONICOS}     //div[@id='nav-flyout-shopAll']//span[@data-nav-panelkey='ElectronicsPanel']/span
#${ELECTRONICOS_CELULARES_LINK}      //*[@id='nav-flyout-shopAll']/div[3]/div[4]/div/a[3]/span
${ELECTRONICOS_CELULARES_LINK}      css=#nav-flyout-shopAll > .nav-subcats > div:nth-child(4) > div > a:nth-child(3) > span

*** Keywords ***
Open Cellphones Store Menu
    Mouse Over  ${ALL_DEPARTMENTS_MENU}
    Mouse Over  ${ALL_DEPARTMENTS_ELECTRONICOS}
    Mouse Over  ${ELECTRONICOS_CELULARES_LINK}
    Click Element  ${ELECTRONICOS_CELULARES_LINK}