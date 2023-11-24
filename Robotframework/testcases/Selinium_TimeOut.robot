*** Settings ***

Library  SeleniumLibrary
Library    OperatingSystem

*** Variables ***

${browser}  chrome
${DRIVER PATH}  C:\\Users\\LENOVO.T470s\\Downloads\\chromedrive.exe\\chromedriver-win64\\chromedriver.exe
${url}  https://demowebshop.tricentis.com//register

*** Test Cases ***

RegTest
    Open Browser    ${url}  ${browser}  executable_path=${DRIVER PATH}
    Maximize Browser Window
    Set Selenium Timeout    10 seconds          # increase the wait time 5sec to 10sec
    Wait Until Page Contains    Registeration   #Default wait time 5sec
    Select Radio Button    Gender   M
    Input Text    name:FirstName    Rajan
    Input Text    name:LastName    Mishra
    Input Text    name:Email    rajanmishra069@gmail.com
    Input Text    name:Password    Rajan@123
    Input Text    name:ConfirmPassword    Rajan@123
    Close Browser
    Wait Until Page Contains    text
*** Keywords ***
