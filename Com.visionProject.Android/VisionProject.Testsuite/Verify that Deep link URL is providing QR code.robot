*** Settings ***
Variables      ../VisionProject.Config.Files/configuration.py
Resource        ../VisionProject.PageObject/VisionProject.PageObject.keywords/pageObjects.resource
Suite Setup
Suite Teardown
Test Setup          Launch browser and input url
Test Teardown       Close Browser


*** Test Cases ***
Verify that Deep link URL is providing QR code
    [Documentation]     verification of barcode generation of specified link
    [Tags]      Regression


    wait until QR code generated and validate QR code link details and log to console



