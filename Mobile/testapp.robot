*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
Open Test Application For android
    Open Test Application
    Close Popup when app start
    #Click Menu Card
    # Click Search Icon On Topbar
    # Input Search Keyword Into Search Box        Icon
    # Click Bottom Navigation Icon Menu  
    Click Menu Expansion Panels 
    Click Select Menu Basic In Expansion Panels
    Click Menu Input And Select Male


*** Keywords ***
Open Test Application
    Open Application       remote_url=http://localhost:4723
        ...                deviceName=TestDevice   
        ...                platformVersion=15.0
        ...                platformName=Android
        ...                appium:automationName=UiAutomator2
        ...                appPackage=com.material.components
        ...                appActivity=com.material.components.activity.MainMenu

Close Popup when app start
    Wait Until Page Contains Element    id=com.material.components:id/bt_close      30
    Click Element       id=com.material.components:id/bt_close

Click Search Icon On Topbar
    Wait Until Page Contains Element    accessibility_id=Search     10
    Click Element       accessibility_id=Search

Input Search Keyword Into Search Box
    [Arguments]     ${search}
    Wait Until Page Contains Element    id=com.material.components:id/search_src_text       10
    Input Text      	id=com.material.components:id/search_src_text       ${search}
    
Click Bottom Navigation Icon Menu
    Wait Until Page Contains Element        xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Bottom Navigation'] and android.widget.TextView[@text='Icon']]       30
    Click Element       xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Bottom Navigation'] and android.widget.TextView[@text='Icon']]

Click Menu Card
    Wait Until Page Contains Element        android=UiSelector().className("android.widget.TextView").text("Cards")       30
    Click Element       android=UiSelector().className("android.widget.TextView").text("Cards")
 
Click Menu Expansion Panels
    Wait Until Page Contains Element        android=UiSelector().className("android.widget.TextView").text("Expansion Panels")       30
    Click Element       android=UiSelector().className("android.widget.TextView").text("Expansion Panels")

Click Select Menu Basic In Expansion Panels
    Wait Until Page Contains Element        android=UiSelector().text("Basic")      30
    Click Element       android=UiSelector().text("Basic")

Click Menu Input And Select Male
    Wait Until Page Contains Element        id=com.material.components:id/bt_toggle_input      30
    Click Element       id=com.material.components:id/bt_toggle_input
    Wait Until Page Contains Element        android=UiSelector().text("Male")     30
    Click Element       android=UiSelector().text("Male")
    Click Element       id=com.material.components:id/bt_save_input