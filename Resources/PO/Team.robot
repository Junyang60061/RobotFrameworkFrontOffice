*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${team_header_label} =  CSS=#team > div > div:nth-child(1) > div > h2

*** Keywords ***
Verify Page Loaded
    wait until page contains element  ${team_header_label}

Validate Page Content
    ${ElementText} =  get text  ${team_header_label}
    should be equal as strings  ${ElementText}  Our Amazing Team  ignore_case=true
    #element text should be  ${team_header_label}  Our Amazing Team

