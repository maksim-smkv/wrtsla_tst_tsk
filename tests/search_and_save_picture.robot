*** Settings ***
Library         SeleniumLibrary
Suite Setup     Go to Yandex
Suite Teardown  Close All Browsers
Resource    ../resources/HomePage.robot
Resource    ../resources/ImagesPage.robot


*** Test Cases ***
Search and save picture
    HomePage.Fill search field and click search button  Robot framework picture
    ImagesPage.Open picture and save


*** Keywords ***
Go to Yandex
    Open Browser    https://yandex.ru/      chrome
