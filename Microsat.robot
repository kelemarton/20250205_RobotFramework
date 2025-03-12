*** Settings ***
Library           Selenium2Library

*** Test Cases ***
reg_full
    Open Browser    https://www.mikrosat.hu/    firefox
    Maximize Browser Window
    Click Element    //*[@id="profile__btn"]
    Click Element    //*[@id="container"]/header/div/div/div[2]/div/div[2]/div[3]/div/div[2]/div[2]/div[1]/a
    Input Text    //*[@id="emai"]    test@none.hu
    Input Password    //*[@id="passwd1"]    Strongpass123@
    Input Password    //*[@id="passwd2"]    Strongpass123@
    Click Element    //*[@id="div_out_company_choose"]/div/div[2]/label
    Input Text    //*[@id="kap_mobile_sub"]    306397490
    Input Text    //*[@id="default_nev"]    Kis Ferenc
    Input Text    //*[@id="default_irany"]    6100
    Input Text    //*[@id="default_varos"]    Kiskunfélegyháza
    Input Text    //*[@id="default_utca"]    Ágasi u. 37.
    Click Element    //*[@id="cookie_alert_open"]/div/div/div[2]/div/div[2]/div/button
    Click Element    //*[@id="button_reg"]
    Close Browser

login_full
    Open Browser    https://www.mikrosat.hu/    firefox
    Maximize Browser Window
    Click Element    //*[@id="profile__btn"]
    Input Text    //*[@id="shop_user_login"]    test@none.hu
    Input Password    //*[@id="shop_pass_login"]    Strongpass123@
    Click Element    //*[@id="container"]/header/div/div/div[2]/div/div[2]/div[3]/div/div[2]/form/div[1]/button
    Close Browser
