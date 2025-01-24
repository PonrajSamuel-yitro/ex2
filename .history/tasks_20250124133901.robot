*** Settings ***
Documentation       Template robot main suite.

Library    RPA.Browser.Selenium    auto_close=${False}
Library    RPA.HTTP

*** Variables ***
${Download_DIR}     C:\Users\Ponraj\OneDrive - Yitro Technology Solutions Pvt Ltd\ex
${FILE_NAME}       hiii.xlsx  # Replace with your expected file name
*** Tasks ***
Open the website and fill the form
    Open the website

*** Keywords ***
Open the website
    Open Chrome Browser    https://rpachallenge.com/    
    Sleep    5s
    Maximize Browser Window
    Click Element    //a[contains(text(), 'Download Excel')]
    Wait Until File Exists    ${DOWNLOAD_DIR}/${FILE_NAME}    timeout=30
    
Minimal task
    Log    Done.