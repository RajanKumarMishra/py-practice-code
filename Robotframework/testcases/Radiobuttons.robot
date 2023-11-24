*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${browser}  chrome
${DRIVER PATH}  C:\\Users\\LENOVO.T470s\\Downloads\\chromedrive.exe\\chromedriver-win64\\chromedriver.exe
${url}  https://www.facebook.com/campaign/landing.php?campaign_id=14884913640&extra_1=s%7Cc%7C589460569870%7Cb%7Cfb%20create%20new%20account%7C&placement=&creative=589460569870&keyword=fb%20create%20new%20account&partner_id=googlesem&extra_2=campaignid%3D14884913640%26adgroupid%3D128696221432%26matchtype%3Db%26network%3Dg%26source%3Dnotmobile%26search_or_content%3Ds%26device%3Dc%26devicemodel%3D%26adposition%3D%26target%3D%26targetid%3Dkwd-301748645679%26loc_physical_ms%3D9061995%26loc_interest_ms%3D%26feeditemid%3D%26param1%3D%26param2%3D&gclid=Cj0KCQjwvL-oBhCxARIsAHkOiu1mfseOEY41iqZFEPmyd9Lh6kkX5Wr_r33RlLPBMJ3mYsf5FhnOxrwaAikQEALw_wcB
${"first_name"}  set variable    name="firstname"

*** Test Cases ***
Testing Radio Button and Check Boxes
    Open Browser    ${url}  ${browser}  executable_path=${DRIVER PATH}
    #Maximize Browser Window

#    Input Text    ${"first_name"}   Rajan
#    Sleep    5
#    Input Text    id=u_0_d_+0    mishra
#    Input Text    id=u_0_g_dV    rajanmishra069@gmail.com
#    Input Text    id=password_step_input    rajanmishra069@gmail.com
    
   Set Selenium Speed    2sec   #### set the speed of execution
   
    ## Select radio button:----
    Select Radio Button    sex    2
    Sleep    5
    
    ## Select Check Boxes:----
    Select Checkbox    locator   
    
    Select Radio Button    group_name    value
    
    








*** Keywords ***