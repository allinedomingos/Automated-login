*** Settings ***
Documentation       Login com sucesso

Resource    ../resources/actions.robot

Library     OperatingSystem

Test Setup      Open Session
Test Teardown   Close Session

*** Test Cases ***
Login NetFlix
    [tags]     login
    Dado que eu acesso a página de login
    Quando eu submeto minhas credenciais "seuemail@gmail.com" e "suasenha"
    Entao devo ser autenticado


