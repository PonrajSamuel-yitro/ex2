*** Settings ***
Documentation       Template robot main suite.

Library    RPA.Browser.Selenium    auto_close=${False}
Library    RPA.HTTP

*** Variables ***
${OUTPUT_DIR}     C:\Users\Ponraj\OneDrive - Yitro Technology Solutions Pvt Ltd\ex

*** Tasks ***
Open the website and fill the form
    Open the website

*** Keywords ***
Open the website
    Open Chrome Browser    https://rpachallenge.com/    
    Sleep    5s
    Maximize Browser Window
    
Minimal task
    Log    Done.