*** Settings ***
Library     Selenium2Library

*** Variables ***
${UNBLOCKED_CELLPHONES_HEADER}  //img[@alt='Celulares Desbloqueados']
${HUAWEI_PHONES}    css=.bxc-grid__container > div:last-child > div:nth-child(2) > div > div > a > img

*** Keywords ***
Select Huawei Phones
    Element Should Be Visible   //img[@alt='Celulares Desbloqueados']
    click element  ${HUAWEI_PHONES}
