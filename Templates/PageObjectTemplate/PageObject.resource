*** Settings ***
Library          AppiumLibrary
Variables      ../../VisionProject.Config.Files/configuration.py
Resource       ../VisionProject.PageObject.locators/Locators.resource

*** Keywords ***
Open camera app
#    Start Activity      com.google.android.GoogleCamera     com.android.camera.CameraLauncher
    Start Activity      com.android.camera2    com.android.camera.CameraLauncher


wait until user scan the QR code from study link url
    AppiumLibrary.Wait Until Element Is Visible       ${camera_smartchip_text}      timeout= 300

tap on generated link
    AppiumLibrary.Click Element     ${camera_smartchip_text}

tap on 'google play store' button
    Switch To Context      WEBVIEW_chrome
    ${contexts}=   Get Contexts
    log to console     ${contexts}
    AppiumLibrary.Wait Until Element Is Visible    ${google_playstore_Button}
    AppiumLibrary.Click Element         ${google_playstore_Button}
#    MobileTestLibrary.Click Element At Coordinates      535     1473
#    MobileTestLibrary.Switch To Context    NATIVE_APP

verify user is landed on 'google playstore' on vision app page
    AppiumLibrary.Page Should Contain Text      Vision Project
    AppiumLibrary.Page Should Contain Text      Google Play

Verify that if the "Need Help?" button works
    Go Back
    AppiumLibrary.Page Should Contain Text    Need Help
    AppiumLibrary.Click Element    ${Need_Help}
    AppiumLibrary.Wait Until Page Contains      Contact us
    AppiumLibrary.Wait Until Page Contains      How to check Android version




