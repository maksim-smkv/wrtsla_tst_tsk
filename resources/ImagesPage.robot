*** Settings ***
Library         SeleniumLibrary
Library         ../lib/DownloadImage.py

*** Keywords ***
Open picture and save
    Wait Until Element Is Visible    //span[contains(text(), 'Картинки')]
    Click Element    //span[contains(text(), 'Картинки')]
    Close Window
    Switch Window
    Click Element   //a[@class='serp-item__link']
    ${image_link}=  Get Element Attribute   //img[@class='MMImage-Origin']  src
    Save Image  ${image_link}