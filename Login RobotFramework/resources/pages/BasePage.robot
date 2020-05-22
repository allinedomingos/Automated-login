*** Settings ***
Documentation       Este arquivo implementa abertura e fechamento do navegador

***Variables***
${base_url}      https://www.netflix.com/br


*** Keywords ***
Open Session
    Open Chrome

    Set Selenium Implicit Wait  2

    Set Window Size     1280        800

Open Chrome
    Open Browser    ${base_url}/login    chrome   options=add_experimental_option('excludeSwitches', ['enable-logging'])

Close Session
    Close Browser