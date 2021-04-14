
*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}      https://automationfc.github.io/basic-form/index.html
${browser}    chrome
*** Test Cases ***
Button_Radio_Checkbox
    open browser     ${url}     ${browser}
    maximize browser window
    #click button    xpath://button[@id='button-enabled']
    select radio button    user_age    under_18
    radio button should be set to    user_age    under_18
    select checkbox    id:java
    unselect checkbox    id:java
    checkbox should not be selected    id:java
    close browser




