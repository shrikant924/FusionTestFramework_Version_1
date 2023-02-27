*** Settings ***
Library          MobileTestLibrary
Variables      ../../VisionProject.Config.Files/configuration.py
Resource       ../VisionProject.PageObject.locators/Locators.resource

*** Keywords ***
Open camera app
    MobileTestLibrary.Start Activity      com.google.android.GoogleCamera     com.android.camera.CameraLauncher

wait until user scan the QR code from study link url
    MobileTestLibrary.Wait Until Element Is Visible       ${camera_smartchip_text}      timeout= 300

tap on generated link
    MobileTestLibrary.Click Element     ${camera_smartchip_text}

tap on 'google play store' button
    MobileTestLibrary.Switch To Context      WEBVIEW_chrome
    ${contexts}=   MobileTestLibrary.Get Contexts
    log to console     ${contexts}
    MobileTestLibrary.Wait Until Element Is Visible    ${google_playstore_Button}
    MobileTestLibrary.Click Button         ${google_playstore_Button}
#    MobileTestLibrary.Click Element At Coordinates      535     1473
#    MobileTestLibrary.Switch To Context    NATIVE_APP

verify user is landed on 'google playstore' on vision app page
    MobileTestLibrary.Page Should Contain Text      Vision Project
    MobileTestLibrary.Page Should Contain Text      Google Play

Verify that if the "Need Help?" button works
    MobileTestLibrary.Go Back
    MobileTestLibrary.Page Should Contain Text    Need Help
    MobileTestLibrary.Click Element    ${Need_Help}
    MobileTestLibrary.Wait Until Page Contains      Contact us
    MobileTestLibrary.Wait Until Page Contains      How to check Android version




