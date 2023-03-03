*** Settings ***
Variables      ../VisionProject.Config.Files/configuration.py
Resource        ../VisionProject.PageObject/VisionProject.PageObject.keywords/QR_Code_page_keywords.resource
Resource        ../VisionProject.PageObject/VisionProject.PageObject.keywords/launch_flow_keywords.resource
Resource        ../VisionProject.PageObject/VisionProject.PageObject.keywords/Setup keywords.resource
Suite Setup     Setup before suit start
Suite Teardown  tearDown
Test Setup
Test Teardown


*** Test Cases ***

Verify that user is able to paste study link using Paste study link
    [Documentation]        Verification that user is able to paste study link using Paste study link
    [Tags]      Regression

    Launch Test application
    launch camera app and wait until user scan the QR code from study link url
    tap on generated link
    tap on 'OPEN STUDY IN APP' button
    verify link is pasted in textbox

Verify that Help page open up when user taps on help icon"?"
    [Documentation]        Verification that Help page open up when user taps on help icon"?"
    [Tags]      Regression



Verify that user can start study by hitting Get Started button
    [Documentation]        Verification that user can start study by hitting Get Started button
    [Tags]      Regression

Verify that if social app is not installed on phone then App was not found screen appears
    [Documentation]        Verify that if social app is not installed on phone then App was not found screen appears
    [Tags]      Regression