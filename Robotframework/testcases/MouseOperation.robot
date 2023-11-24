
*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${browser}  chrome
${DRIVER PATH}  C:\\Users\\LENOVO.T470s\\Downloads\\chromedrive.exe\\chromedriver-win64\\chromedriver.exe
#${url}  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html

*** Test Cases ***
Class
    #Open Browser    ${url}  ${browser}  executable_path=${DRIVER PATH}

    #Right click action:----

    #Open Context Menu    xpath:of element

    #Double click action:----
    Open Browser    https://testautomationpractice.blogspot.com/  ${browser}  executable_path=${DRIVER PATH}

    #Go To    https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element    xpath://*[@id="HTML10"]/div[1]/button
    Sleep    3

    #Drag and drop:----

    Go To    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Maximize Browser Window
    Drag And Drop    id:box6    id:box106
    Sleep    5
    Close Browser
