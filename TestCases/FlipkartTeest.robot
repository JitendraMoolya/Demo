*** Settings ***
Documentation     Example tests for Flipkart
Resource          ../resources/keywords.robot
Resource          ../variables/site_urls.robot

*** Test Cases ***
Open Browser To FilpKart 
    Open Browser To FilpKart
    Maximize Browser Window

Navigate to Electronics Section   
    Click On Element  ${Click on close}     
    Click On Element   ${Click on Electronics}
    Mouse Over   ${hover on Mobile}
    Click On Element   ${Click on Mi}
    Scroll Page    0    700
    Click On Element   ${Click on Remi11}
    ${itemname}    Get Text        ${Click on Remi11}
    log to console  ${itemname} 
    log   ${itemname} 
    ${windows}      Get Window Handles
    log to console      ${windows} 
    log to console      ${windows[1]} 
    Switch Window   ${windows[1]}  
    sleep   2s
    Scroll Page    0    100
    Click On Element       ${Add to cart} 
    sleep   2s
    Click On Element   ${HomePage}
    Click On Element   ${Click on close}
    Click On Element   ${Cart}
    ${itemincart}   Get Text    ${verifycart}
    ${cartvalue}=   convert to  string  ${itemincart} 
    ${Itemvalue}=   convert to string   ${itemname}    
    log to console  ${cartvalue}
    log to console   ${Itemvalue}        
    Should be equal as strings  ${cartvalue}    ${Itemvalue} 
    sleep   3s
*** Keywords ***
Scroll Page
    [Arguments]    ${x_offset}    ${y_offset}
    Execute JavaScript    window.scrollBy(${x_offset},${y_offset});

