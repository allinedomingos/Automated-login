*** Settings ***
Documentation   Actions é o arquivo que terá keywords que implementam os steps

Library    SeleniumLibrary

Resource    pages/BasePage.robot
Resource    pages/LoginPage.robot

*** Keywords ***
Dado que estou na página de login 
    Open Session

Quando submeto minhas credencias de acesso "${email}" e "${pass}"
    Login With      ${email}   ${pass}

Entao devo ser autenticado
    Sleep           2
    Wait Until Page Contains       Quem está assistindo?
   

