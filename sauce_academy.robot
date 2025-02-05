*** Settings ***
Library           Selenium2Library

*** Test Cases ***
login
    Open Browser    https://www.saucedemo.com/    firefox
    Close Browser
