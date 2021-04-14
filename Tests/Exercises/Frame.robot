*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
Frame
    open browser    https://kyna.vn/    chrome
    maximize browser window
    scroll element into view    //div[@id='k-footer']//iframe
    select frame    //div[@id='k-footer']//iframe
    unselect frame
    close all browsers
