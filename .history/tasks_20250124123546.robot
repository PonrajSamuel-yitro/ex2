*** Settings ***
Documentation       Template robot main suite.

Library    RPA.Browser.Selenium    auto_close=

*** Tasks ***
Open the website and fill the form
    Open the website

*** Keywords ***
Open the website
    Open Chrome Browser
Minimal task
    Log    Done.