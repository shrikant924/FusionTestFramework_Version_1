*** Settings ***
Resource        ../../com.playgroundxyz.vision_project/com.playgroundxyz.vision_project.PageObject/com.playgroundxyz.vision_project.PageObject.keywords/pageObjects.resource
Test Setup          Launch browser and input url
Test Teardown       Close Browser


*** Test Cases ***
Verify that Deep link URL is providing QR code
    [Documentation]     verification of barcode generation of specified link
    [Tags]      Regression


    wait until QR code generated and validate QR code link details and log to console



