*** Settings ***
Library          AppiumLibrary
Library         WebApplicationTestLibrary
Variables      ../../VisionProject.Config.Files/configuration.py
Resource       ../VisionProject.PageObject.locators/Locators.resource

*** Keywords ***
launch camera app and wait until user scan the QR code from study link url
    AppiumLibrary.Start Activity    com.google.android.GoogleCamera    com.android.camera.CameraLauncher
    WebApplicationTestLibrary.Open Browser          ${url}      ${Browser}

tap on generated link
    AppiumLibrary.Wait Until Element Is Visible       ${camera_smartchip_text}      timeout= 300
    AppiumLibrary.Click Element     ${camera_smartchip_text}

tap on 'google play store' button
    Switch To Context      WEBVIEW_chrome
    ${contexts}=   Get Contexts
    log to console     ${contexts}
    WebApplicationTestLibrary.Wait Until Element Is Visible    ${google_playstore_Button}
    WebApplicationTestLibrary.Click Element         ${google_playstore_Button}
#    AppiumLibrary.Click Element At Coordinates      535     1473
    AppiumLibrary.Switch To Context    NATIVE_APP

verify user is landed on 'google playstore' on vision app page
    AppiumLibrary.Page Should Contain Text      Vision Project
    AppiumLibrary.Page Should Contain Text      Google Play

Verify that if the "Need Help?" button works
    AppiumLibrary.Go Back
    AppiumLibrary.Page Should Contain Text    Need Help
    AppiumLibrary.Click Element    ${Need_Help}
    AppiumLibrary.Wait Until Page Contains      Contact us
    AppiumLibrary.Wait Until Page Contains      How to check Android version




