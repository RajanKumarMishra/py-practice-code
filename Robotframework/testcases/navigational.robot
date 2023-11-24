*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${browser}  chrome
${DRIVER PATH}  C:\\Users\\LENOVO.T470s\\Downloads\\chromedrive.exe\\chromedriver-win64\\chromedriver.exe
${url1}  https://www.google.com/
${url2}  https://www.bing.com/

*** Test Cases ***

NavigationTest
    Open Browser    ${url1}  ${browser}  executable_path=${DRIVER PATH}
    Maximize Browser Window
    ${loc}=  get location
    Log To Console    ${loc}

    Sleep    3

    Go To    ${url2}
    Maximize Browser Window
    ${loc}= get location
    Log To Console    ${loc}

    Sleep    3

    Go Back ${url1}
    Maximize Browser Window
    ${loc}= get location
    Log To Console    ${loc}

    Sleep    3

    Close Browser