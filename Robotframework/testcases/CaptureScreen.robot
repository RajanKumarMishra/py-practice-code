*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${browser}  chrome
${DRIVER PATH}  C:\\Users\\LENOVO.T470s\\Downloads\\chromedrive.exe\\chromedriver-win64\\chromedriver.exe
${url}  https://opensource-demo.orangehrmlive.com/

*** Test Cases ***
LoginTC
    Open Browser    ${url}  ${browser}  executable_path=${DRIVER PATH}
    Maximize Browser Window
    Sleep    3
    Input Text    name:username    Admin
    Input Text    name:password    admin123
    Sleep    3

    ##Capture the logo:--
    Capture Element Screenshot    xpath://img[@alt='company-branding']     C:/Users/LENOVO.T470s/OneDrive/Desktop/py-k/pract/Robotframework/Screenshot/logo.png

    ##Capture fullpage screenshot
    Capture Page Screenshot     C:/Users/LENOVO.T470s/OneDrive/Desktop/py-k/pract/Robotframework/Screenshot/loginTC.png
