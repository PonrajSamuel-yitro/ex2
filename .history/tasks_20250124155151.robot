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
    Set download directory
    Download and verify file
*** Keywords ***
Open the website
    Open Chrome Browser    https://rpachallenge.com/    
    Sleep    5s
    Maximize Browser Window
    Click Element    //a[contains(text(), 'Download Excel')]
    Click Button    //button[contains(text(), 'Start')]   
    # Open Workbook    challenge.xlsx
Set download directory
    Set Download Directory    ${OUTPUT_DIR}

Download and verify file
    Click Element    //a[contains(text(), 'Download Excel')]
    Sleep    3s
    File Should Exist    ${OUTPUT_DIR}\\${FILE_NAME}  # Verify file is downloaded
    Log    File downloaded successfully: ${OUTPUT_DIR}\\${FILE_NAME}    
Minimal task
    Log    Done.