*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Keywords ***
Open Browser Window
    [Arguments]    ${url}  ${browser}
    Open Browser   ${url}  ${browser}
    Maximize Browser Window
    set selenium implicit wait    10s

Close Browser Window
    close all browsers





