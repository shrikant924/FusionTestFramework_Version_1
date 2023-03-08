*** Settings ***
Resource       pageObjects.resource

*** Keywords ***
Setup before suit start
    mobile.Start Appium Service

tearDown
    mobile.Stop Appium Service

Launch browser and input url
    web.Open Browser        ${url}          ${Browser}
    web.Maximize Browser Window

Launch Test application
    mobile.Open Application        ${remote_url}           &{device}
    Set Log Level    ERROR
    mobile.Set Appium Timeout    30

close Test application
    Run Keyword And Continue On Failure    mobile.Close Application
    Run Keyword And Continue On Failure    web.Close Browser
    Run Keyword And Continue On Failure    web.Close All Browsers
    Run Keyword And Continue On Failure    mobile.Close All Applications
