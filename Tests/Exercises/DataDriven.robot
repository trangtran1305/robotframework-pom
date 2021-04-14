*** Settings ***
Library    SeleniumLibrary
Resource   ../../Resources/Common/BaseTest.robot
Resource   ../../TestData/ConfigData.robot
Library    DataDriver  ../../TestData/LoginData.xlsx    sheet_name=Sheet1

Test Setup    Open Browser Window    ${url}    ${browser}
Test Teardown    Close Browser Window
Test Template    Invalid Login

*** Test Cases ***
Verify Login Fails    ${email}      ${password}
Invalid Login    ${email}      ${password}

*** Keywords ***
Invalid Login
    [Arguments]       ${email}      ${password}
    click link    ${sign_in_link}
    Input Text        ${email_textbox}    ${email}
    Input Text    ${password_textbox}    ${password}
    Click Button      ${sign_in_button}
    page should contain element    ${error_message}

