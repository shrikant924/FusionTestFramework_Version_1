*** Settings ***
Resource        ../VisionProject.PageObject/VisionProject.PageObject.keywords/KeywordsSetup.resource
Suite Setup     Setup before suit start
Suite Teardown  tearDown
Test Setup      Launch Test application
Test Teardown   close Test application

*** Test Cases ***
unlock device
    MobileTestLibrary.Wait Until Element Is Visible    android:id/text1
    MobileTestLibrary.Click Element    android:id/text1
    MobileTestLibrary.Scroll To Element By Partial Text In LongView    abc    50
