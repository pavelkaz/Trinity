*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources.robot

*** Variables ***
${URL}    https://login-dev.acceleratelearning.com/?to=n115d1013883
${Browser}    Chrome

*** Test Cases ***
Click about us
    Open Browser and Maximize    ${URL}    ${Browser}
    Click What Is STEMscopes
    Click Mission/Vision
    Click Team
    Click Awards
    Click Contact US
    Click Career Opportunities
    Click Diversity Statement
    close browser


*** Keywords ***
Click Diversity Statement
    Click Element    xpath://*[@id="jsSiteHeader"]/div/div/div/div/ul/li[1]/a
    Click Element    xpath://*[@id="jsSiteHeader"]/div/div/div/div/ul/li[1]/div/ul/li[7]/a
    location should be    https://stemscopes.com/diversity-statement
    go back

Click Career Opportunities
    Click Element    xpath://*[@id="jsSiteHeader"]/div/div/div/div/ul/li[1]/a
    Click Element    xpath://*[@id="jsSiteHeader"]/div/div/div/div/ul/li[1]/div/ul/li[6]/a
    location should be    https://stemscopes.com/careers
    go back

Click What Is STEMscopes
    Click Element    xpath://*[@id="jsSiteHeader"]/div/div/div/div/ul/li[1]/a
    Click Element    xpath://*[@id="jsSiteHeader"]/div/div/div/div/ul/li[1]/div/ul/li[1]/a
    location should be    https://stemscopes.com/about
    go back

Click Mission/Vision
    Click Element    xpath://*[@id="jsSiteHeader"]/div/div/div/div/ul/li[1]/a
    Click Element    xpath://*[@id="jsSiteHeader"]/div/div/div/div/ul/li[1]/div/ul/li[2]/a
    location should be    https://stemscopes.com/about#mission
    go back

Click Team
    Click Element    xpath://*[@id="jsSiteHeader"]/div/div/div/div/ul/li[1]/a
    Click Element    xpath://*[@id="jsSiteHeader"]/div/div/div/div/ul/li[1]/div/ul/li[3]/a
    location should be    https://stemscopes.com/about#team
    go back

Click Awards
    Click Element    xpath://*[@id="jsSiteHeader"]/div/div/div/div/ul/li[1]/a
    Click Element    xpath://*[@id="jsSiteHeader"]/div/div/div/div/ul/li[1]/div/ul/li[4]/a
    location should be    https://stemscopes.com/#awards
    go back

Click Contact US
    Click Element    xpath://*[@id="jsSiteHeader"]/div/div/div/div/ul/li[1]/a
    Click Element    xpath://*[@id="jsSiteHeader"]/div/div/div/div/ul/li[1]/div/ul/li[5]/a
    location should be    https://stemscopes.com/contact
    go back