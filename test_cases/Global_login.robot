#  robot -d -t test_cases/Global_login.robot

*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources.robot

*** Variables ***
${URL}    https://login-dev.acceleratelearning.com/?to=n115d1013883
${Browser}    Chrome

*** Test Cases ***

General Check Global Login links
    Open Browser and Maximize    ${URL}    ${Browser}
#    Click about us
#    Click STEMscopes Products
#    Click STEM Professional Learning
    Click Resources
    [Teardown]    close browser


*** Keywords ***
Click about us
    Check links about us    About Us    What Is STEMscopes?    https://stemscopes.com/about
    Check links about us    About Us    Mission / Vision    https://stemscopes.com/about#mission
    Check links about us    About Us    Team    https://stemscopes.com/about#team
    Check links about us    About Us    Awards    https://stemscopes.com/#awards
    Check links about us    About Us    Contact Us    https://stemscopes.com/contact
    Check links about us    About Us    Career Opportunities    https://stemscopes.com/careers
    Check links about us    About Us    Diversity Statement    https://stemscopes.com/diversity-statement

Check links about us
    [Arguments]    ${section}    ${element}    ${link}
    Click Element    //*[text()='${section}']
    Wait Until Element Is Visible    //*[text()='${element}']    10s
    Click Element    //*[text()='${element}']
    location should be    ${link}
    go back


Click STEMscopes Products
    Check links STEMscopes Products    STEMscopes    Find Curriculum Built for my State    https://stemscopes.com/stempreview/
    Check links STEMscopes Products    STEMscopes    Find International Curriculum    https://stemscopes.com/stempreview-intl/
    Check links STEMscopes Products    STEMscopes    STEMscopes Science    https://stemscopes.com/science/
    Check links STEMscopes Products    STEMscopes    STEMscopes Math    https://stemscopes.com/math/
    Check links STEMscopes Products    STEMscopes    STEMscopes Early Explorer    https://stemscopes.com/early-explorer/
    Check links STEMscopes Products    STEMscopes    STEMscopes Coding    https://stemscopes.com/coding/
    Check links STEMscopes Products    STEMscopes    DIVE-in Engineering    https://stemscopes.com/dive-in/
    Check links STEMscopes Products    STEMscopes    STEMscopes Streaming    https://stemscopes.com/streaming/


Check links STEMscopes Products
    [Arguments]    ${section}    ${element}    ${link}
    Click Element    //*[text()='${section} ']
    Wait Until Element Is Visible    //*[text()='${element}']    10s
    Click Element    //*[text()='${element}']
    location should be    ${link}
    go back


Click STEM Professional Learning
    Check links STEM Professional Learning    Professional Learning    National Institute for STEM Education    https://nise.institute/
    Check links STEM Professional Learning    Professional Learning    STEMscopes Professional Learning    https://stemscopes.com/professional-learning/


Check links STEM Professional Learning
    [Arguments]    ${section}    ${element}    ${link}
    Click Element    //*[text()='${section}']
    Wait Until Element Is Visible    //*[text()='${element}']    10s
    Click Element    //*[text()='${element}']
    location should be    ${link}
    go back

Click Resources
    Check links Resources   Resources    STEM Education Webinars    https://stemscopes.com/stemposium/
    Check links Resources   Resources    Learning Equity    https://stemscopes.com/learning-equity/
    Check links Resources   Resources    STEMscopes Distance Learning    https://stemscopes.com/distance-learning
    Check links Resources   Resources    Product Updates    https://stemscopes.com/product-updates
    Check links Resources   Resources    STEMscopes Blog    https://blog.stemscopes.com/
    Check links Resources   Resources    Case Studies    https://stemscopes.com/case_studies
    Check links Resources   Resources    News    https://stemscopes.com/news.php
    Check links Resources   Resources    Free Resources    https://stemscopes.com/science/#resources
    Check links Resources   Resources    Testimonials    https://stemscopes.com/testimonials
    Check links Resources   Resources    Awards    https://stemscopes.com/#awards

Check links Resources
    [Arguments]    ${section}    ${element}    ${link}
    Click Element    //*[text()='${section}']
    Wait Until Element Is Visible    //*[text()='${element}']    15s
    Click Element    //*[text()='${element}']
    location should be    ${link}
    go back