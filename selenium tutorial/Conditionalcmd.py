
from selenium import webdriver 
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
import time 

driver = webdriver.Chrome(executable_path="cromedriver.exe")

driver.get('https://rahulshettyacademy.com/angularpractice/')

#is_displayed()
#is_enabled()
#is_selected()
