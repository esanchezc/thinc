*** Settings ***
#Test Setup    Open Browser    ${BASE_URL}    ${BROWSER}
Test Setup    Start Browser
#Test Teardown    capture page screenshot
Test Teardown    Run Keywords    capture page screenshot    close browser
Suite Teardown    close all browsers
Resource    ../utilities.robot
Resource    ../page-objects/search.robot
Resource    ../page-objects/navigation.robot
Resource    ../page-objects/cellphones_store.robot
Resource    ../page-objects/unblocked_cellphones_store.robot
Resource    ../page-objects/PLP.robot
Resource    ../page-objects/PDP.robot

*** Test Cases ***
Amazon Test
    [Tags]    amazon
    Open Cellphones Store Menu
    Select Unblocked Cellphones
    Select Huawei Phones
    Select Third Result
    Verify Product Is Available
    Add To Cart
    Verify One Product Is In Cart