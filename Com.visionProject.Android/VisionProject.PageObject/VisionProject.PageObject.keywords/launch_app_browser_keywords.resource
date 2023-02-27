*** Settings ***
Library       MobileTestLibrary
Library       WebApplicationTestLibrary
Variables      ../../VisionProject.Config.Files/configuration.py
Resource       ../VisionProject.PageObject.locators/Locators.resource

*** Keywords ***
Launch browser and input url
    WebApplicationTestLibrary.Open Browser        ${Deeplink_url}          ${Browser}
    WebApplicationTestLibrary.Maximize Browser Window

Launch vision app
    MobileTestLibrary.Start Appium Service
    MobileTestLibrary.Open Application        ${remote_url}           &{device}

close vision app
    MobileTestLibrary.Close Application


sample
    MobileTestLibrary.Start Appium Service
    MobileTestLibrary.Open Application    ${remote_url}           &{Pixel_Emulator}
    MobileTestLibrary.Start Activity    com.android.chrome    com.google.android.apps.chrome.Main
    MobileTestLibrary.Wait Until Element Is Visible    com.android.chrome:id/search_box_text     timeout=20
    MobileTestLibrary.Input Text    com.android.chrome:id/search_box_text    ${Deeplink_url}
    MobileTestLibrary.Press Enter Key
    MobileTestLibrary.Close Application



