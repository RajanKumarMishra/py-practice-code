*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${browser}  chrome
${DRIVER PATH}  C:\\Users\\LENOVO.T470s\\Downloads\\chromedrive.exe\\chromedriver-win64\\chromedriver.exe
${url}  https://demowebshop.tricentis.com//register

*** Test Cases ***

RegTest
    Open Browser    ${url}  ${browser}  executable_path=${DRIVER PATH}

    Maximize Browser Window
    Set Selenium Speed    3 seconds
    Select Radio Button    Gender   M
    Input Text    name:FirstName    Rajan
    Input Text    name:LastName    Mishra
    Input Text    name:Email    rajanmishra069@gmail.com
    Input Text    name:Password    Rajan@123
    Input Text    name:ConfirmPassword    Rajan@123
    Close Browser

*** Keywords ***
    