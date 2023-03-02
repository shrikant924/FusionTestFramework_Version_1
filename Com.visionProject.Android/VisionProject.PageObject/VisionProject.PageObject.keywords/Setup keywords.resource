*** Settings ***
Library       MobileTestLibrary
Library        AppiumLibrary
Library       WebApplicationTestLibrary
Library    OperatingSystem
Variables      ../../VisionProject.Config.Files/configuration.py
Resource       ../VisionProject.PageObject.locators/Locators.resource

*** Keywords ***
Setup before suit start

    Start Emulator    ${Emualator_Name}     ${device_Type}
    Sleep    1
    Start Appium Service
    Sleep    1

tearDown
    Stop Emulator
    Sleep    1
    Stop Appium Service

Launch browser and input url
    WebApplicationTestLibrary.Open Browser        ${url}          ${Browser}
    WebApplicationTestLibrary.Maximize Browser Window

Launch Test application
    Open Application        ${remote_url}           &{device}
    AppiumLibrary.Capture Page Screenshot

close Test application
    Close Application
    Close All Applications
