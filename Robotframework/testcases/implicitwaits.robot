*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***

${BROWSER}  chrome
${executable_path}
${URL}  https://www.policybazaar.com/?pb_source=google_brand&pb_medium=ppc&pb_term=policybazaar&pb_campaign=PolicyBazaar00Policybazaar&gad_source=1&gclid=CjwKCAiAu9yqBhBmEiwAHTx5p7Nt5H_5HJm3mXptAEr_KAjbOyXvGDfoTU5-P0JvgAKq09lma8B6sxoCtvwQAvD_BwE
${screenshot_path}  C:\\Users\\LENOVO.T470s\\OneDrive\\Desktop\\sshot

*** Test Cases ***
Open Browser To Policy Bazaar
    Open Browser    ${URL}  ${BROWSER}

*** Keywords ***
Capture Screenshot
    Capture Page Screenshot     ${screenshot_path}
    Log     Screenshot Capture:     ${screenshot_path}