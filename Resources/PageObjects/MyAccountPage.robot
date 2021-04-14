*** Settings ***
Library           SeleniumLibrary
Variables         ../../Interfaces/MyAccountPageUI.py

*** Keywords ***

Verify Welcome Account Message
    [Arguments]    ${expected_text}

    ${actual_text}=   get text   ${welcome_account_message}
    should be equal    ${actual_text}   ${expected_text}

