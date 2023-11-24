*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}       Edge   # Use "Edge" for Edge browser
${DRIVER PATH}   C:\\path\\to\\msedgedriver.exe  # Update to the correct driver path

*** Test Cases ***
LoginTest
    Open Browser    https://demo.nopcommerce.com/    ${BROWSER}    executable_path=${DRIVER PATH}
    Maximize Browser Window
    Click Link    xpath://a[contains(text(),'Log in')]
    Input Text    id:Email    rajanmishra069@gmail.com
    Input Text    id:Password    Test@123
    Click Button    xpath://button[@type='submit' and contains(text(),'Log in')]
    Wait Until Page Contains Element    xpath://h2[contains(text(),'Welcome to our store')]
    Close Browser

*** Keywords ***