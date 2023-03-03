*** Settings ***
Resource        KeywordsSetup.resource

*** Keywords ***
Setup before suit start

    MobileTestLibrary.Start Emulator    ${Emualator_Name}     ${device_Type}
    MobileTestLibrary.Start Appium Service

tearDown
    MobileTestLibrary.Stop Emulator
    MobileTestLibrary.Stop Appium Service

Launch browser and input url
    WebApplicationTestLibrary.Open Browser        ${url}          ${Browser}
    WebApplicationTestLibrary.Maximize Browser Window

Launch Test application
    MobileTestLibrary.Open Application        ${remote_url}           &{device}
    MobileTestLibrary.Set Appium Timeout    30

close Test application
    Run Keyword And Continue On Failure    MobileTestLibrary.Close Application
    Run Keyword And Continue On Failure    WebApplicationTestLibrary.Close Browser
    Run Keyword And Continue On Failure    WebApplicationTestLibrary.Close All Browsers
    Run Keyword And Continue On Failure    MobileTestLibrary.Close All Applications
