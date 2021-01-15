*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${TopNav_Team_LINK} =  css=#bs-example-navbar-collapse-1 > ul > li:nth-child(5) > a

*** Keywords ***
Select "Team" page
    #Click Link  Team
    click element  ${TopNav_Team_LINK}
    sleep  3s