*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser To FilpKart
    Open Browser        ${FilpKart_Url}     gc 
    sleep   4s
    Maximize Browser Window

Navigate to Electronics Section 
    sleep   4s
    Click On Element  ${Click on close}
    Mouse Over  ${Click on Electronics}
    click on Electronics    ${Click on Electronics} 
    Scroll Page
    [Arguments]    ${x_offset}    ${y_offset}
    Execute JavaScript    window.scrollBy(${x_offset},${y_offset});

Click On Element
    [Arguments]     ${xpath}
    wait until element is visible   ${xpath}    3
    click element   ${xpath}

