*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://automationfc.github.io/basic-form/index.html
${browser}    chrome
*** Test Cases ***
Wait
    Open browser    ${url}    ${browser}
    ${default_timeout}=    get selenium timeout    #5s
    set selenium timeout    6s

    ${default_speed}=    get selenium speed        #0s
    #sleep    2s
    set selenium speed      2s

    ${default_imp}=    get selenium implicit wait   #0s
    set selenium implicit wait    8s
    ${custom_imp}=    get selenium implicit wait   #8s

    scroll element into view    xpath://a[contains(text(),'GOOGLE')]
    set selenium timeout    10s
    wait until element is visible    xpath://a[contains(text(),'GOOGLE')]
    click link    xpath://a[contains(text(),'GOOGLE')]
    close browser