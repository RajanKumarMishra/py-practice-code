from ast import Bytes
from selenium import webdriver 
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
import time 

serv_obj=Service("C:\\Users\\LENOVO.T470s\\Downloads\\chromedrive.exe\\chromedriver-win32\\chromedriver.exe")
driver = webdriver.Chrome(service=serv_obj)

driver.get("https://secure.yatra.com/social/common/yatra/register")
driver.maximize_window()


email_id_mobile_no = driver.find_element(By.NAME, "login-input")
email_id_mobile_no.send_keys("rajanmishra069@gmail.com")

continue_process = driver.find_element(By.ID, "login-continue-btn")
continue_process.click()

time.sleep(3)

mobile_num = driver.find_element(By.ID, "signup-mobile-number")
mobile_num.send_keys(8249395454)

enter_your_password = driver.find_element(By.ID,'signup-password')
enter_your_password.send_keys("Rajan@8249")

title = driver.find_element(By.ID, 'signup-user-designation')
title.send_keys("Mr.")

first_name = driver.find_element(By.CLASS_NAME, 'name-field-input')
first_name.send_keys("RAJAN")

last_name = driver.find_element(By.ID, 'signup-user-last-name')
last_name.send_keys("MISHRA")

notify = driver.find_element(By.CLASS_NAME, 'notif-label').click()

notify = driver.find_element(By.CLASS_NAME, 'notif-label').click()

time.sleep(500)
driver.close()