*** Settings ***
Resource      pageObjects.resource

*** Keywords ***
wait until QR code generated and validate QR code link details and log to console
    web.Wait Until Page Contains    Study cannot be conducted here
    web.Element Should Be Visible    ${QR_Code}
    ${captured_img} =       web.Capture Element Screenshot    ${QR_Code}
    ${QRCodedata} =      web.Scan QR Code    ${captured_img}
    Log To Console    ${QRCodedata}

