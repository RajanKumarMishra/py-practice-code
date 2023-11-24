*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${DRIVER PATH}  C:\\Users\\LENOVO.T470s\\Downloads\\chromedrive.exe\\chromedriver-win64\\chromedriver.exe
${url}  https://demo.nopcommerce.com//


*** Test Cases ***
TestinginputBox
    Open Browser    ${url}  ${browser}  executable_path=${DRIVER PATH}

    Maximize Browser Window
    #Title Should Be     nopCommerce demo store

    Click Link    xpath://a[@class='ico-login']

    ${"email_txt"}  set variable    id=Email
#    Element Should Be Visible    ${"email_txt"}
#    Element Should Be Enabled    ${"email_txt"}
    Input Text    ${"email_txt"}    rajanmishra069@gmail.com
    Sleep    5

    ${"pass_txt"}   Set Variable    id=Password
    #Element Should Be Visible    ${"pass_txt"}
    #Element Should Be Enabled    ${"pass_txt"}
    Input Text    ${"pass_txt"}    rajan123
    Sleep    3

    #Click Link    xpath://button[normalize-space()='Log in']

   # Clear Element Text    ${"email_txt"}
    Sleep    3

    Close Browser

*** Keywords ***
