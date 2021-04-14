*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}      https://automationfc.github.io/basic-form/index.html
${browser}    chrome
*** Test Cases ***
Confirm Alert
    open browser     ${url}     ${browser}
    maximize browser window
    wait until element is visible    //button[contains(text(),'Click for JS Confirm')]
    click button    //button[contains(text(),'Click for JS Confirm')]
    #handle alert   ACCEPT
    alert should be present    text=I am a JS Confirm    action=ACCEPT
    ${text}    get text    id:result
    should be equal    ${text}    You clicked: Ok
    close all browsers
Prompt Alert
    open browser     ${url}     ${browser}
    maximize browser window
    wait until element is visible    //button[contains(text(),'Click for JS Prompt')]
    click button    //button[contains(text(),'Click for JS Prompt')]
    input text into alert    Hello Trang    ACCEPT
    ${text}    get text    id:result
    should be equal    ${text}    You entered: Hello Trang
    close all browsers


