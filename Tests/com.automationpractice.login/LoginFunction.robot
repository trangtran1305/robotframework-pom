*** Settings ***
Library           SeleniumLibrary
Library           ../../Libraries/CustomKeywords.py
Resource          ../../Resources/Common/BaseTest.robot
Resource          ../../Resources/PageObjects/HomePage.robot
Resource          ../../Resources/PageObjects/LoginPage.robot
Resource          ../../Resources/PageObjects/MyAccountPage.robot

Test Setup  Open Browser Window    ${url}    ${browser}
Test Teardown  Close Browser Window

*** Variables ***
${url}            http://automationpractice.com/index.php
${browser}        chrome

*** Test Cases ***
TC01_Valid Login
    [Tags]    test1
    HomePage.Click Sign In Link
    LoginPage.Input Email and Password    anhdq00317@gmail.com    robofw@123
    LoginPage.Click Sign In Button
    MyAccountPage.Verify Welcome Account Message    Welcome to your account. Here you can manage all of your personal information and orders.
TC02_Invalid_Login
    [Tags]    test2
    HomePage.Click Sign In Link
    ${email}=    Get Random Emails
    LoginPage.Input Email and Password    ${email}     robo
    LoginPage.Click Sign In Button
    LoginPage.Verify Error Message Is Displayed











