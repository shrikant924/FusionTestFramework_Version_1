*** Settings ***
Library         ../../../../com.visionProject.android/src/MobileTestLibrary/
Library         ../../../../com.visionProject.android/src/WebApplicationTestLibrary/
Variables      ../../VisionProject.Config.Files/configuration.py
Resource       ../VisionProject.PageObject.locators/Locators.resource

*** Keywords ***
wait until QR code generated and validate QR code link details and log to console
    WebApplicationTestLibrary.Wait Until Page Contains    Study cannot be conducted here
    WebApplicationTestLibrary.Element Should Be Visible    ${QR_Code}
    ${captured_img} =       WebApplicationTestLibrary.Capture Element Screenshot    ${QR_Code}
    ${QRCodedata} =      WebApplicationTestLibrary.Scan QR Code    ${captured_img}
    Log To Console    ${QRCodedata}

