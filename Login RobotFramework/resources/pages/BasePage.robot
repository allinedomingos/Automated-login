*** Settings ***
Documentation       Este arquivo implementa abertura e fechamento do navegador

*** Keywords ***
Open Session
    Open Browser    https://www.netflix.com/br/login   chrome

    Set Selenium Implicit Wait  2

Close Session
    Close Browser