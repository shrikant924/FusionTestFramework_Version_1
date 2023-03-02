*** Settings ***
Variables      ../VisionProject.Config.Files/configuration.py
Resource        ../VisionProject.PageObject/VisionProject.PageObject.keywords/Setup keywords.resource
Resource        ../VisionProject.PageObject/VisionProject.PageObject.keywords/QR_Code_page_keywords.resource
Resource        ../VisionProject.PageObject/VisionProject.PageObject.keywords/launch_flow_keywords.resource
Suite Setup
Suite Teardown
Test Setup
Test Teardown


*** Test Cases ***
Verify that Deep link URL is providing QR code
    [Documentation]     verification of barcode generation of specified link
    [Tags]      Regression

    Launch browser and input url
    wait until QR code generated and validate QR code link details and log to console
    Close Browser


