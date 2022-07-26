#robot robot .\ERM_track_time.robot

*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources.robot

*** Variables ***
${URL}    https://erm.aristeksystems.com/my/page
${Browser}    Chrome



*** Test Cases ***
Track Time
    Open Browser and Maximize    ${URL}    ${Browser}
    input text    id:username    pkazakevich
    input text    id:password    8EdByGaTM4
    click button    xpath://*[@id="login_submit_field"]/td/button

