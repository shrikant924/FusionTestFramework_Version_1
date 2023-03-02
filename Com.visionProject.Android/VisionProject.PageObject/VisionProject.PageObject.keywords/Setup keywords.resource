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
    Start Appium Service

tearDown
    Stop Emulator
    Stop Appium Service

Launch browser and input url
    WebApplicationTestLibrary.Open Browser        ${url}          ${Browser}
    WebApplicationTestLibrary.Maximize Browser Window

Launch Test application
    Open Application        ${remote_url}           &{device}
    AppiumLibrary.Capture Page Screenshot


close Test application
    Run Keyword And Continue On Failure    Close Application
    Run Keyword And Continue On Failure    Close Browser
    Run Keyword And Continue On Failure    Close All Browsers
    Run Keyword And Continue On Failure     Close All Applications
