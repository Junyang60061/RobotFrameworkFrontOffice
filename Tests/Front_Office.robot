*** Settings ***
Documentation  this is to set up  locators for amazon project
Resource  ../Resources/FrontOfficeApp.robot
Resource  ../Resources/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/Front_office.robot
*** Variables ***
${BROWSER} =  ie
${URL} =  http://www.robotframeworktutorial.com//front-office

*** Test Cases ***
User Access "Team" page
    [Documentation]  This is basic info about test
    [Tags]  Somke
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page



"Team" page should match requirements
    [Documentation]  This is basic info about test 2
    [Tags]  Somke
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page
    FrontOfficeApp.Validate "Team" Page





