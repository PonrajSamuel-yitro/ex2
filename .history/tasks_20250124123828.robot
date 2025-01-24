*** Settings ***
Documentation       Template robot main suite.

Library    RPA.Browser.Selenium    auto_close=${False}

*** Variables ***
${OUTPUT_DIR}     /html/body/app-root/div[2]/app-rpa1/div/div[1]/div[6]/a

*** Tasks ***
Open the website and fill the form
    Open the website

*** Keywords ***
Open the website
    Open Chrome Browser    https://rpachallenge.com/
    Maximize Browser Window
Minimal task
    Log    Done.