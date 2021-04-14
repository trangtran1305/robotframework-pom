*** Settings ***
Library           SeleniumLibrary
Variables         ../../Interfaces/HomePageUI.py

*** Keywords ***

Click Sign In Link
    click link    ${sign_in_link}
