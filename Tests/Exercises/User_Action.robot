*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://automationfc.github.io/basic-form/index.html
${browser}    chrome
*** Test Cases ***
User Interaction

    Open browser    ${url}    ${browser}
    scroll element into view    xpath://img[@alt='User Avatar 01']
    mouse down on image     xpath://img[@alt='User Avatar 01']
    page should contain    Name: User
    double click element    xpath://button[contains(text(),'Double click me')]
    page should contain    Hello Automation Guys!
    #open context menu
    #drag and drop
    close all browsers


