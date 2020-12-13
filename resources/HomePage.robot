*** Settings ***
Library         SeleniumLibrary

*** Keywords ***
Fill search field and click search button
    [Arguments]     ${query}
    Input Text      id=text     ${query}
    Click Button    //button[@type='submit']