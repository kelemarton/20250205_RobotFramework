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
    Click Element    //*[@id="ast-desktop-header"]/div/div/div/div/div[3]/div[3]/div/div/a
    Element Should Contain    //*[@id="post-99"]/div/div/div/p[1]/strong[1]    Kele Márton
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

login_empty_username
    Open Browser    https://keprendeles.optikart.hu/login/?redirect_to=https%3A%2F%2Fkeprendeles.optikart.hu%2Fpquery%2F    firefox
    Input Text    //*[@id="username-5474"]    ${EMPTY}
    Input Password    //*[@id="user_password-5474"]    Erosjelszo1
    Click Element    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-username-5474"]    Please enter your username or email
    Close Browser

login_empty_password
    Open Browser    https://keprendeles.optikart.hu/login/?redirect_to=https%3A%2F%2Fkeprendeles.optikart.hu%2Fpquery%2F    firefox
    Input Text    //*[@id="username-5474"]    kelemarton
    Input Password    //*[@id="user_password-5474"]    ${EMPTY}
    Click Element    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Please enter your password
    Close Browser

login_empty_credentials
    Open Browser    https://keprendeles.optikart.hu/login/?redirect_to=https%3A%2F%2Fkeprendeles.optikart.hu%2Fpquery%2F    firefox
    Input Text    //*[@id="username-5474"]    ${EMPTY}
    Input Password    //*[@id="user_password-5474"]    ${EMPTY}
    Click Element    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-username-5474"]    Please enter your username or email
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Please enter your password
    Close Browser

login_wrong_username
    Open Browser    https://keprendeles.optikart.hu/login/?redirect_to=https%3A%2F%2Fkeprendeles.optikart.hu%2Fpquery%2F    firefox
    Input Text    //*[@id="username-5474"]    wrongusernaaaame
    Input Password    //*[@id="user_password-5474"]    Erosjelszo1
    Click Element    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Password is incorrect. Please try again.
    Close Browser
