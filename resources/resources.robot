*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser and Maximize
    [Arguments]    ${UserURL}    ${BrowserName}
    open browser    ${UserURL}    ${BrowserName}
    maximize browser window
    log    Starting test with ${BrowserName}
    log    Test URL: ${UserURL}

Login to Website
    [Arguments]    ${Username}    ${Password}
    input text    id:user-name    ${Username}
    input text    xpath:/html/body/div/div/div[2]/div[1]/div[1]/div/form/div[2]/input    ${Password}
    click button    name:login-button
    page should not contain element    class:error-message-container
