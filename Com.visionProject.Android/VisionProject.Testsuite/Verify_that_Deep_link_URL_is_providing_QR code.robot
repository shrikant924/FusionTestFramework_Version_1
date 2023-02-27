*** Settings ***
Variables      ../VisionProject.Config.Files/configuration.py
Resource        ../VisionProject.PageObject/VisionProject.PageObject.keywords/launch_app_browser_keywords.resource
Resource        ../VisionProject.PageObject/VisionProject.PageObject.keywords/QR_Code_page_keywords.resource
Resource        ../VisionProject.PageObject/VisionProject.PageObject.keywords/launch_flow_keywords.resource
Suite Setup
Suite Teardown
Task Setup
Test Teardown


*** Test Cases ***
Verify that Deep link URL is providing QR code
    [Documentation]     verification of barcode generation of specified link
    [Tags]      Regression

    Launch browser and input url
    wait until QR code generated and validate QR code link details and log to console



Verify that Google Play button redirecting user to Vision Project on play store
    [Documentation]        Verification that Google Play button redirecting user to Vision Project on play store
    [Tags]      Regression

    Launch vision app
    launch_flow_keywords.Open camera app
    wait until user scan the QR code from study link url
    tap on generated link
    tap on 'google play store' button
    verify user is landed on 'google playstore' on vision app page
    Verify that if the "Need Help?" button works
    close vision app


Verify that user is able to paste study link using Paste study link

    [Documentation]        Verification that user is able to paste study link using Paste study link
    [Tags]      Regression

#    Launch vision app
    MobileTestLibrary.Open Application           ${remote_url}          &{device}
    launch_flow_keywords.Open camera app
    wait until user scan the QR code from study link url
    tap on generated link

