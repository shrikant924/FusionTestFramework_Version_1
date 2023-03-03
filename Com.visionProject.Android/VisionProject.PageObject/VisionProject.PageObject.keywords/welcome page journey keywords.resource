*** Settings ***
Library         ../../../../com.visionProject.android/WebApplicationTestLibrary/
Library         ../../../../com.visionProject.android/MobileTestLibrary/
Variables      ../../VisionProject.Config.Files/configuration.py
Resource       ../VisionProject.PageObject.locators/Locators.resource

*** Keywords ***
launch camera app and wait until user scan the QR code from study link url
    MobileTestLibrary.Start Activity    com.google.android.GoogleCamera    com.android.camera.CameraLauncher
