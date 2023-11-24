#*** Settings ***
#Library  SeleniumLibrary
#
#*** Variables ***
#
#${browser}  chrome
#${DRIVER PATH}  C:\\Users\\LENOVO.T470s\\Downloads\\chromedrive.exe\\chromedriver-win64\\chromedriver.exe
#${url}  https://www.countries-ofthe-world.com/flags-of-the-world.html

*** Test Cases ***
## Way 1
#foorloop1
#    :   FOR   ${i}    IN RANGE    1   10
#    \   LOG TO CONSOLE  ${i}

## Way 2
#Forloop2
#    :FOR    ${i}    IN  1 2 3 4 5 6 7 8
#    \   LOG TO CONSOLE  ${i}

##WAY 3
#foorloop3withList
#    @{items}    Create List     1   2   3   4   5
#    : FOR     ${i}    IN @{items}
#    \   LOG TO CONSOLE ${i}

##way 4
#forloopinstring
#    : FOR     ${i}    IN    rajan   ranjan  jaga    chotu
#    \   LOG TO CONSOLE ${i}

##WAY 5
#foorloop3withList
#    @{namelist}    Create List  rajan   ranjan  jaga    chotu
#    : FOR     ${i}    IN @{namelist}
#    \   LOG TO CONSOLE ${i}

##WAY 6
#Forloop6withExit
#    @{items}    Create List     1   2   3   4   5
#    :   FOR     ${i}    IN @{items}
#    \   LOG TO CONSOLE ${i}
#    \   exit for loop if    ${i}==3







