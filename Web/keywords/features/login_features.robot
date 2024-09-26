*** Keywords ***

Open Doppee And Login With Username And Password
    common.Open doppiotech website
    home_page.Click button user    
    login_page.Input Username
    login_page.Input Password
    login_page.Check Pop up Login Page