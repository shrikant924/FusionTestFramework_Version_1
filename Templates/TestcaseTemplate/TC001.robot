*** Settings ***

Resource        ../../../../com.visionProject.android/Com.visionProject.Android/VisionProject.PageObject/VisionProject.PageObject.keywords/KeywordsSetup.resource
Suite Setup
Suite Teardown
Task Setup
Test Teardown


*** Test Cases ***
Verify that Deep link URL is providing QR code      #testcase title
    [Documentation]     verification of barcode generation of specified link
    [Tags]      Regression

    #keywords



