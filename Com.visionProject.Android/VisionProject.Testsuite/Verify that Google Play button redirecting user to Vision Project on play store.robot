*** Settings ***
Variables      ../VisionProject.Config.Files/configuration.py
Resource        ../VisionProject.PageObject/VisionProject.PageObject.keywords/QR_Code_page_keywords.resource
Resource        ../VisionProject.PageObject/VisionProject.PageObject.keywords/launch_flow_keywords.resource
Resource        ../VisionProject.PageObject/VisionProject.PageObject.keywords/Setup keywords.resource
Suite Setup     Setup before suit start
Suite Teardown  tearDown
Test Setup      Setup keywords.Launch application
Test Teardown   Setup keywords.close application


*** Test Cases ***

Verify that Google Play button redirecting user to Vision Project on play store
    [Documentation]        Verification that Google Play button redirecting user to Vision Project on play store
    [Tags]      Regression

    launch_flow_keywords.Open camera app
    wait until user scan the QR code from study link url
    tap on generated link
    tap on 'google play store' button
    verify user is landed on 'google playstore' on vision app page
    Verify that if the "Need Help?" button works


Verify that user is able to paste study link using Paste study link

    [Documentation]        Verification that user is able to paste study link using Paste study link
    [Tags]      Regression

    launch_flow_keywords.Open camera app
    wait until user scan the QR code from study link url
    tap on generated link

