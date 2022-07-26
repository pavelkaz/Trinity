#  robot -d Results/Fix -t 1* StemScopes3.5/Global_Login/Global_login_page.robot

*** Settings ***
Library         SeleniumLibrary
Library         OperatingSystem
Library         BuiltIn
Library         String
Library         DateTime
Resource        ../../Resources/My_keywords.robot
Resource        ../../Resources/Filter.robot
Resource        ../../Resources/Base_Url.robot
Resource        ../../Resources/Config.robot
Resource        ../../Resources/Login.robot
Resource        ../../Resources/Create.robot

Test Setup    Open My Browser     ${base_url}    ${Browser}

*** Variables ***

*** Test Cases ***
1. General Check Global Login Page
    [Tags]    GeneralCheck    GL    Extended    BUG    #нужено сделать тест
    Check Logo
    Check About Us
    Check StemScopes Products and Learning
    Check Resources
    Check Store
    Check Support
    Check Footers
    Check Social
    Check Accelerate Learning
    [Teardown]    close browser

*** Keywords ***
Check Logo
    mk.Go to Location    ${base_url}
    click element    //a[@title='Go to stemscopes.com']//img[1]
    Check Element    (//img[@alt='STEMscopes Science CNN'])[1]|//span[text()[normalize-space()='Explore Math Nation']]

Check About Us
    mk.Go to Location    ${base_url}
    Check Link and Go Back    About Us    What Is STEMscopes?    (//img[@alt='STEMscopes Science CNN'])[1]|//h1[text()[normalize-space()='About Us']]
    Check Link and Go Back    About Us    Mission / Vision    (//img[@alt='STEMscopes Science CNN'])[1]|//h2[text()[normalize-space()='Leadership Team']]
    Check Link and Go Back    About Us    Team    (//img[@alt='STEMscopes Science CNN'])[1]|//h2[text()[normalize-space()='Leadership Team']]
    Check Link and Go Back    About Us    Awards    (//img[@alt='STEMscopes Science CNN'])[1]|//span[text()[normalize-space()='Explore Math Nation']]
    Check Link and Go Back    About Us    Contact Us    (//img[@alt='STEMscopes Science CNN'])[1]|//h2[text()='Are you a STEMscopes customer?']
    Check Link and Go Back    About Us    Career Opportunities    (//img[@alt='STEMscopes Science CNN'])[1]|//div[text()[normalize-space()='STEMscopes Full-Time Positions']]
    Check Link and Go Back    About Us    Diversity Statement    (//img[@alt='STEMscopes Science CNN'])[1]|//h1[text()[normalize-space()='Diversity Statement']]

Check Link and Go Back
    [Arguments]    ${section}    ${link}    ${element}
    wait until element is visible    //span[contains(text(),'${section}')]    10s
    mk.click element    //span[contains(text(),'${section}')]
    mk.Click link    ${link}
    wait until element is visible    ${element}    30s
    go back

mk.Click link
    [Arguments]    ${link}
    wait until keyword succeeds    3s    500ms     click link    ${link}

Check StemScopes Products and Learning
    mk.Go to Location    ${base_url}
    Check Link and Go Back    Products    Find Curriculum Built for my State    (//img[@alt='STEMscopes Science CNN'])[1]|//h1[text()[normalize-space()='About Us']]


StemScopes Products and Learning
    FOR    ${i}    IN    Find Curriculum Built for my State    STEMscopes Science    STEMscopes Math    STEMscopes Early Explorer    STEMscopes Coding    DIVE-in Engineering    STEMscopes Streaming
        click element    //span[contains(text(),'STEMscopes')]
        click link    ${i}
        Check Element    (//img[@alt='STEMscopes Science CNN'])[1]
    END

    click element    //span[contains(text(),'STEMscopes')]
    click element    (//a[@href='https://stemscopes.com/stempreview-intl/'])[1]
    Check Element    (//img[@alt='STEMscopes Science CNN'])[1]

    click element    //span[text()='Professional Learning']
    click link    National Institute for STEM Education
    wait until element is visible    (//img[@alt='National Institute for STEM Education'])[1]
    go back

    click element    //span[text()='Professional Learning']
    click link    STEMscopes Professional Learning
    Check Element    (//img[@alt='STEMscopes Science CNN'])[1]

Check Resources
    mk.Go to Location    ${base_url}
    wait until keyword succeeds    3x    1s    Resources

Resources
    FOR    ${i}    IN    STEM Education Webinars    Case Studies    Learning Equity    STEMscopes Distance Learning    Product Updates    News    Free Resources    Testimonials
        click element    //span[text()='Resources']
        click link    ${i}
        Check Element    (//img[@alt='STEMscopes Science CNN'])[1]
    END

    click element    //span[text()='Resources']
    click link    STEMscopes Blog
    wait until element is visible    //img[@alt='STEMscopes - The Leader in STEM Education']
    go back

    click element    //span[text()='Resources']
    click element    (//a[@href='https://stemscopes.com#awards'])[2]
    Check Element    (//img[@alt='STEMscopes Science CNN'])[1]

Check Store
    mk.Go to Location    ${base_url}
    wait until keyword succeeds    3x    1s    Store

Store
    click element    //span[text()='Store']
    wait until element is visible    //h1[contains(@class,'title_webstore title_webstore_level1')]
    go back

Check Support
    mk.Go to Location    ${base_url}
    wait until keyword succeeds    3x    1s    Support

Support
    click element    //span[text()='Support']
    click link    Get Support
    Check Element    (//img[@alt='STEMscopes Science CNN'])[1]

    click element    //span[text()='Support']
    click link    FAQ
    Check Element    (//img[@alt='STEMscopes Science CNN'])[1]

    click element    //span[text()='Support']
    click element    (//a[@href='https://stemscopes.com/contact'])[2]
    Check Element    (//img[@alt='STEMscopes Science CNN'])[1]

    FOR    ${i}    IN    STEMscopes Tech Specifications    STEMscopes Security Information & Compliance    Privacy Policy    Terms and Conditions
        click link    ${i}
        Check Element    (//img[@alt='STEMscopes Science CNN'])[1]
    END

Check Footers
    mk.Go to Location    ${base_url}
    Footers

Footers
    FOR    ${i}    IN RANGE    1    12
        wait until element is visible    (//a[@class='footer__awards-link'])[${i}]
        click element    (//a[@class='footer__awards-link'])[${i}]
        page should not contain element     //span[text()='Error']
        mk.Go to Location    ${base_url}
    END

Check Social
    mk.Go to Location    ${base_url}
    wait until keyword succeeds    3x    1s    Social

Social
    click element    //span[@class='icon icon-icon-linkedin']
    Check errors and 404

    click element    //span[@class='icon icon-icon-tweeter']
    Check errors and 404

    click element    //span[@class='icon icon-icon-facebook']
    Check errors and 404

    click element    //span[@class='icon icon-icon-youtube']
    Check errors and 404

Check Accelerate Learning
    mk.Go to Location    ${base_url}
    wait until keyword succeeds    3x    1s    Accelerate Learning

Accelerate Learning
    click link     Accelerate Learning
    Check Element    (//img[@alt='STEMscopes Science CNN'])[1]

Check Element
    [Arguments]    ${element}
    wait until element is visible    ${element}
    go back

Check errors and 404
    Sleep    1s
    switch window    NEW
    page should not contain element     //span[text()='Error']
    page should not contain element    //h2[text()='The server returned a "404 Not Found".']
    close window
    Sleep    1s
    switch window    MAIN