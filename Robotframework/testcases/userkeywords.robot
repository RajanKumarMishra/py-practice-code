*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${browser}  chrome
${DRIVER PATH}  C:\\Users\\LENOVO.T470s\\Downloads\\chromedrive.exe\\chromedriver-win64\\chromedriver.exe
${url}  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html

## User define keyword without argument

#*** Test Cases ***
#TC1
#    launchBrowser
#    Input Text    name:username    Rajan
#    Input Text    name:password    Rajan@123
#
#*** Keywords ***
#launchBrowser
#    Open Browser    ${url}  ${browser}  executable_path=${DRIVER PATH}
#    Maximize Browser Window

#________________________________________________________________________________________________________________________
## User define keyword with argument

*** Test Cases ***
TC1
    launchBrowser   ${url}  ${browser}
    Input Text    name:username    Rajan
    Input Text    name:password    Rajan@123

*** Keywords ***
launchBrowser
    [Arguments]     ${appurl}   ${appbrowser}
    Open Browser    ${appurl}  ${appbrowser}  executable_path=${DRIVER PATH}
    Maximize Browser Window
#-----------------------------------------------------------------------------------------------------------------------
# User define keyword with argument & Return value

*** Test Cases ***
TC1
    ${PageTitle}=   launchBrowser   ${url}  ${browser}
    Log To Console    ${PageTitle}
    Log    ${PageTitle}
    Input Text    name:username    Rajan
    Input Text    name:password    Rajan@123

*** Keywords ***
launchBrowser
    [Arguments]     ${appurl}   ${appbrowser}
    Open Browser    ${appurl}  ${appbrowser}  executable_path=${DRIVER PATH}
    Maximize Browser Window
    ${title}=   get title
    [RETURN]    ${title}



