*** Settings ***
Library           Selenium2Library

*** Test Cases ***
login
    Open Browser    https://www.saucedemo.com/    firefox
    Selenium2Library.Input Text    //*[@id="user-name"]    standard_user
    Selenium2Library.Input Text    //*[@id="password"]    secret_sauce
    Selenium2Library.Click Button    //*[@id="login-button"]
    Close Browser

empty_username
    Open Browser    https://www.saucedemo.com/    firefox
    Selenium2Library.Input Text    //*[@id="user-name"]    ${EMPTY}
    Selenium2Library.Input Text    //*[@id="password"]    secret_sauce
    Selenium2Library.Click Button    //*[@id="login-button"]
    Element Should Contain    //*[@id="login_button_container"]/div/form/div[3]/h3    Epic sadface: Username is required
    Close Browser

empty_password
    Open Browser    https://www.saucedemo.com/    firefox
    Selenium2Library.Input Text    //*[@id="user-name"]    standard_user
    Selenium2Library.Input Text    //*[@id="password"]    ${EMPTY}
    Selenium2Library.Click Button    //*[@id="login-button"]
    Element Should Contain    //*[@id="login_button_container"]/div/form/div[3]/h3    Epic sadface: Password is required
    Close Browser

empty_both
    Open Browser    https://www.saucedemo.com/    firefox
    Input Text    //*[@id="user-name"]    ${EMPTY}
    Input Text    //*[@id="password"]    ${EMPTY}
    Click Button    //*[@id="login-button"]
    Element Should Contain    //*[@id="login_button_container"]/div/form/div[3]/h3    Epic sadface: Username is required
    Close Browser

error_password
    Open Browser    https://www.saucedemo.com/    firefox
    Selenium2Library.Input Text    //*[@id="user-name"]    standard_user
    Selenium2Library.Input Text    //*[@id="password"]    **
    Selenium2Library.Click Button    //*[@id="login-button"]
    Element Should Contain    //*[@id="login_button_container"]/div/form/div[3]/h3    Epic sadface: Username and password do not match any user in this service
    Close Browser
