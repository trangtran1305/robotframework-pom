*** Settings ***
Library           SeleniumLibrary
Variables         ../../Interfaces/LoginPageUI.py

*** Keywords ***

Input Email and Password
    [Arguments]       ${email}      ${password}
    Input Text        ${email_textbox}    ${email}
    Input Text    ${password_textbox}    ${password}

Click Sign In Button
    Click Button      ${sign_in_button}

Verify Error Message Is Displayed
    page should contain element    ${error_message}

