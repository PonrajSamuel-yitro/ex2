*** Settings ***
Documentation       Template robot main suite.

Library    RPA.Browser.Selenium    auto_close=${False}
Library    RPA.HTTP
Library    RPA.Excel.Application
Library    OperatingSystem

*** Variables ***
${OUTPUT_DIR}     C:\Users\Ponraj\OneDrive - Yitro Technology Solutions Pvt Ltd\ex
${FILE_NAME}        hiii.xlsx  # Replace with your expected file name
*** Tasks ***
Open the website and fill the form
    Open the website

*** Keywords ***
Open the website
    Open Chrome Browser    https://rpachallenge.com/    
    Set Selenium Option    prefs    {"download.default_directory": "${DOWNLOAD_DIR}"}
    Sleep    5s
    Maximize Browser Window
    Click Element    //a[contains(text(), 'Download Excel')]
    # Open Workbook    filename
    # Save Excel As    ${OUTPUT_DIR}${/}${FILE_NAME}
    Click Button    //button[contains(text(), 'Start')]   
    
Minimal task
    Log    Done.