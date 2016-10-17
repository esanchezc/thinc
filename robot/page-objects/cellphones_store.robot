*** Settings ***
Resource    ../utilities.robot

*** Variables ***
#${STORE_HEADER}  //div[@id='ns_T5PN1M9654NS2D5CBJSN_776_Widget']/div/div[1]/div/h1
${STORE_HEADER}  //div[@cel_widget_id="acsux-pageheader"]//div[@class="bxw-pageheader__title__text"]/h1
#${UNBLOCKED_CELLPHONES_LINK}    //div[@id='bxw-content-grid_ns_AE4GKXC2QZ3H9E6C9RTP_3522__cg_9406']/div/div[1]/div[1]/div/div/a/img
${UNBLOCKED_CELLPHONES_LINK}    //img[@alt='CelularesDesbloqueados']

*** Keywords ***
Select Unblocked Cellphones
    wait until element is visible  ${STORE_HEADER}
    Click Element  ${UNBLOCKED_CELLPHONES_LINK}