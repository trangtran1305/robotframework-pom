*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}      https://automationfc.github.io/basic-form/index.html
${browser}    chrome
*** Test Cases ***
WindowTabs
    open browser     ${url}     ${browser}
    maximize browser window
    ${parent_window}=    get window handles
    scroll element into view    xpath://a[contains(text(),'GOOGLE')]
    wait until element is visible    xpath://a[contains(text(),'GOOGLE')]
    click link    xpath://a[contains(text(),'GOOGLE')]
    @{all_windows}=    get window handles
    FOR  ${window}  IN  @{all_windows}
        IF  ${window}!=    evaluate    ${parent_window}
            switch window  ${window}
    END
    switch window   ${parent_window}
    close all browsers


