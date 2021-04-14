*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    http://google.com
${browser}    chrome
*** Test Cases ***
Browser keywords in Robot Framework

    Open browser    ${url}    ${browser}    alias=ChromeRCV
    Open browser    http://google.com    ff   alias=FireFoxRCV
    Maximize browser window
    @{alias}    Get browser aliases
    Switch browser    ${alias}[0]
    Input text     xpath://input[@type='text']    robotframework
    @{browser_id}    Get browser ids
    Switch browser    ${browser_id}[1]
    Go to    http://salesforce.com
    close all browsers


