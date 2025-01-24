*** Settings ***
Documentation       Template robot main suite.

Library    RPA.Browser.Selenium    auto_close=${False}
Library    RPA.HTTP
Library    RPA.Excel.Application
Library    OperatingSystem

*** Variables ***
${OUTPUT_DIR}     C:\\Users\\Ponraj\\OneDrive - Yitro Technology Solutions Pvt Ltd\\ex
${FILE_NAME}        hiii.xlsx  # Replace with your expected file name
*** Tasks ***
Open the website and fill the form
    Open the website

*** Keywords ***
Open the website
    ${chrome_options}    Create Dictionary    download.default_directory=${OUTPUT_DIR}
    Open Chrome Browser    https://rpachallenge.com/    preferences=${chrome_options}
    Maximize Browser Window
    Click Element    //a[contains(text(), 'Download Excel')]
    Sleep    5s
    
    Click Button    //button[contains(text(), 'Start')]   
    # Open Workbook    challenge.xlsx
Minimal task
    Log    Done.