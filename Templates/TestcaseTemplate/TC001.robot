*** Settings ***
Variables      ../VisionProject.Config.Files/configuration.py
Resource        ../VisionProject.PageObject/VisionProject.PageObject.keywords/Setup keywords.resource
Resource        ../VisionProject.PageObject/VisionProject.PageObject.keywords/QR_Code_page_keywords.resource
Resource        ../VisionProject.PageObject/VisionProject.PageObject.keywords/launch_flow_keywords.resource
Suite Setup
Suite Teardown
Task Setup
Test Teardown


*** Test Cases ***
Verify that Deep link URL is providing QR code      #testcase title
    [Documentation]     verification of barcode generation of specified link
    [Tags]      Regression

    #keywords



