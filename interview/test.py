# Note: You
# can
# assume
# any
# locator
#
# open
# browser
#
# open
# application
#
# Login
# with creds
#
# One
# logged in, Assume
# you
# see
# an
# OK
# button in home
# page
#
# Click
# on
# OK
# button
#
# Assume
# a
# new
# Tab
# opens
#
# Goto
# that
# tab and Print
# title
#
# close
# the
# tab
#
# Come
# back
# original
# tab and close
# the
# browser

from selinium import webdriver
from selenium.webdriver.common.by import by
from selenium.webdriver.common.keys import keys

driver = webdriver.chrome()#### mation our driver path

driver.get("URL")

###LOgin
username_input = driver.find element(By.ID,"USERNAME")
password_input = driver.find element(By.Name,"PASSWORD")
login_button = driver.find element(By.xpath)

##assume ok button
original_tab = driver.current_window_handel

##swith to new tab
for handel in driver.window_handel:
    if handel != original_tab:
        driver.swith_to.window(handel)
        break

#print the title of the page
print("Title of the new tab:",driver.title)

#close the browser
driver.close()

##







