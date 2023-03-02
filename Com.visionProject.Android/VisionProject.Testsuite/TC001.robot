*** Settings ***
Variables      ../VisionProject.Config.Files/configuration.py
Resource        ../VisionProject.PageObject/VisionProject.PageObject.keywords/TC001.resource



*** Test Cases ***
Verify that Deep link URL is providing QR code
    [Documentation]     verification of barcode generation of specified link
    [Tags]      Regression

    launch chrome app
    Go To Url    https://www.google.com/



