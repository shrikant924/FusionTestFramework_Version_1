*** Settings ***
Resource        ../../../../com.visionProject.android/Com.visionProject.Android/VisionProject.PageObject/VisionProject.PageObject.keywords/KeywordsSetup.resource

*** Keywords ***
Open camera app
    Start Activity      com.android.camera2    com.android.camera.CameraLauncher

wait until user scan the QR code from study link url
    MobileTestLibrary.Wait Until Element Is Visible       ${camera_smartchip_text}      timeout= 300

tap on generated link
    MobileTestLibrary.Click Element     ${camera_smartchip_text}



