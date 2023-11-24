from ast import Bytes
from selenium import webdriver 
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
import time 

driver = webdriver.Chrome(executable_path="cromedriver.exe")

driver.get("https://www.naukri.com/")
driver.maximize_window()
print(driver.title)

