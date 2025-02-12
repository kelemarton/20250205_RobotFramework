*** Settings ***
Library           Selenium2Library

*** Test Cases ***
login
    Open Browser    https://optikart.hu/    firefox
    Click Element    //*[@id="menu-1-2101d9db"]/li[6]/a
    Click Element    //*[@id="post-95"]/div/div/div/div/div[4]/div/div/a
    Input Text    //*[@id="username-5474"]    kelemarton
    Input Password    //*[@id="user_password-5474"]    Erosjelszo1
    Click Element    //*[@id="um-submit-btn"]
    Close Browser

register
    Open Browser    https://optikart.hu/    firefox
    Click Element    //*[@id="menu-1-2101d9db"]/li[6]/a
    Click Element    //*[@id="post-95"]/div/div/div/div/div[4]/div/div/a
    Click Element    //*[@id="post-5478"]/div/div/div/form/div[2]/div[2]/a
    Input Text    //*[@id="user_login-5473"]    kmtestuser
    Input Text    //*[@id="first_name-5473"]    Kele
    Input Text    //*[@id="last_name-5473"]    Márton
    Input Text    //*[@id="user_email-5473"]    kele.marton.robert@diak.szbi-pg.hu
    Input Password    //*[@id="user_password-5473"]    Erosjelszo1
    Input Password    //*[@id="confirm_user_password-5473"]    Erosjelszo1
    Click Element    //*[@id="um_field_5473_intezmeny_data"]/div[2]/label[1]/span[1]/i
