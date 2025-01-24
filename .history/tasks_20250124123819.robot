*** Settings ***
Documentation       Template robot main suite.

Library    RPA.Browser.Selenium    auto_close=${False}

*** Variables ***
${}

*** Tasks ***
Open the website and fill the form
    Open the website

*** Keywords ***
Open the website
    Open Chrome Browser    https://rpachallenge.com/
    Maximize Browser Window
Minimal task
    Log    Done.