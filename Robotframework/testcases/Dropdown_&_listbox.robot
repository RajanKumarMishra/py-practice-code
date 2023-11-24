*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${DRIVER PATH}  C:\\Users\\LENOVO.T470s\\Downloads\\chromedrive.exe\\chromedriver-win64\\chromedriver.exe
${url}  http://www.practiceselenium.com/practice-form.html


*** Test Cases ***
TestinginputBox
    Open Browser    ${url}  ${browser}  executable_path=${DRIVER PATH}

    ### DROP DOWN

    Select From List By Label    <locator>    <name of drop doWN>
    select From List By Index    <locator>    <INDEX VALUE>
    Select From List By Value    <locator>  <HTML VALUE>

    ### LIST BOX

    Select From List By Label    <NAME OF LIST BOX> <PASS THE LIST BOX VALUE>
    Select From List By Index    <name of list box> <PASS THE VALUE USING INDEX NUMBER>
    Select From List By Value    locator

    Close Browser

*** Keywords ***