*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${browser}  chrome
${DRIVER PATH}  C:\\Users\\LENOVO.T470s\\Downloads\\chromedrive.exe\\chromedriver-win64\\chromedriver.exe
${url}  https://www.countries-ofthe-world.com/flags-of-the-world.html

*** Test Cases ***
ScrollingTest
    Open Browser    ${url}  ${browser}  executable_path=${DRIVER PATH}
    Maximize Browser Window

    ##scrolling page till it reach a pixel number:-----

    Execute Javascript  window.scrollTo(0,2500)

    ####scrolling page till find element on page:-----
    
    Scroll Element Into View    xapth://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[86]/td[1]/img
    Sleep    5

    ####scrolling page till the button

    Execute Javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep    3

    ###scrolling page start of the page

    Execute Javascript  window.scrollTo(0,-document.body.scrollHeight)
    Sleep    5




