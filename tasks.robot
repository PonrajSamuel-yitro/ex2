*** Settings ***
Documentation       Template robot main suite.
 
Library    RPA.Browser.Selenium    auto_close=${False}
Library    RPA.HTTP
# Library    RPA.Excel.Application
Library    OperatingSystem
Library    RPA.Excel.Files
 
*** Variables ***
${OUTPUT_DIR}    C:\\Users\\Ponraj\\OneDrive - Yitro Technology Solutions Pvt Ltd\\ex2
${FILE_NAME}        challenge.xlsx   
*** Tasks ***
Open the website and fill the form
    Open the website
    Fill the form using the data from the Excel file
 
*** Keywords ***
Open the website
    ${chrome_options}    Create Dictionary    download.default_directory=${OUTPUT_DIR}    download.directory_upgrade=True
    Open Chrome Browser    https://rpachallenge.com/    preferences=${chrome_options}
    Maximize Browser Window
    Click Element    //a[contains(text(), 'Download Excel')]
    Sleep    5s
    ${file_path}=    Join Path    ${OUTPUT_DIR}    ${FILE_NAME}
    File Should Exist    ${file_path}
    Sleep    5s
    # Scroll Element Into View    //button[contains(text(), 'Start')]
    # Sleep    5s
    Click Button    //button[contains(text(), 'Start')]
Fill and submit the form for one person
    [Arguments]    ${product}
    Input Text    //input[@ng-reflect-name="labelFirstName"]    ${product}[First Name]
    Input Text    //input[@ng-reflect-name="labelLastName"]      ${Product}[Last Name] 
    Input Text    //input[@ng-reflect-name="labelCompanyName"]     ${Product}[Company Name]
    Input Text    //input[@ng-reflect-name="labelRole"]      ${Product}[Role in Company]  
    Input Text    //input[@ng-reflect-name="labelAddress"]     ${Product}[Address]
    Input Text    //input[@ng-reflect-name="labelEmail"]     ${Product}[Email]
    Input Text    //input[@ng-reflect-name="labelPhone"]     ${Product}[Phone Number]
    Click Button     //input[@value='Submit']

    # Open Workbook    challenge.xlsx
Fill the form using the data from the Excel file
  Open Workbook   challenge.xlsx    
  ${products}=    Read Worksheet As Table    header=True
  Close Workbook
  FOR    ${product}    IN    @{products}
        Fill and submit the form for one person    ${product}
  END    
Minimal task
    Log    Done.