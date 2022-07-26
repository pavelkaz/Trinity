*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources.robot


*** Variables ***
${URL}    http://www.saucedemo.com
#${URL}    https://www.thetestingworld.com/testings/
${Browser}    Chrome

#Users
${StandardUser}    standard_user
${LockedOutUser}    locked_out_user

${Password}    secret_sauce


*** Test Cases ***
My First Test Case
    [Setup]    Open Browser and Maximize    ${URL}    ${Browser}
    [Teardown]    close browser
    Login to Website    ${StandardUser}    ${Password}
    ${Title}=    get title
    log    Page title is: ${Title}
    capture element screenshot    xpath:/html/body/div/div/div/div[2]/div/div/div/div[3]/div[1]/a/img