*** Settings ***
Resource        ../VisionProject.PageObject/VisionProject.PageObject.keywords/KeywordsSetup.resource
Suite Setup     Setup before suit start
Suite Teardown  tearDown
Test Setup      Launch Test application
Test Teardown   close Test application


*** Test Cases ***
Verify that if social app is not installed on phone then App was not found screen appears
    [Documentation]     Verification that if social app is not installed on phone then App was not found screen appears

    launch camera app and wait until user scan the QR code from study link url
    tap on generated link
    tap on 'OPEN STUDY IN APP' button
    verify link is pasted in textbox
    Verify that user can start study by hitting Get Started button
    tap on 'BEGIN' button
    read 'privacy Notice'
    accept 'privacy Notice'

