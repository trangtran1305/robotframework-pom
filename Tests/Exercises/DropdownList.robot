*** Settings ***
Library    SeleniumLibrary
Test Setup  open browser       ${url}       ${browser}
Test Teardown    close all browsers
*** Variables ***
${url}      https://automationfc.github.io/basic-form/index.html
${browser}    chrome
${select1}     //select[@id='job1']
${select2}     //select[@id='job2']
*** Test Cases ***
Single DropdownList
    scroll element into view    ${select1}
    select from list by label    ${select1}      Mobile Testing
    ${label}=    get selected list label    ${select1}
    should be equal    ${label}    Mobile Testing
Multible DropdownList
    scroll element into view    ${select2}
    select from list by value    ${select2}      automation
    select from list by label    ${select2}      Mobile
    @{llabels}=    get selected list labels    ${select2}
    ${count}    get length    ${llabels}
    should be equal as numbers    ${count}    2

    unselect all from list    ${select2}
    @{llabels}=    get selected list labels    ${select2}
    ${count}    get length    ${llabels}
    should be equal as numbers    ${count}    0
