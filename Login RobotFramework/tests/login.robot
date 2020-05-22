*** Settings ***
Documentation       Login com sucesso

Resource    ../resources/actions.robot

Library     OperatingSystem

Test Setup      Open Session
Test Teardown   Close Session

*** Test Cases ***
Login NetFlix
    [tags]     login
    Dado que estou na página de login 
    Quando submeto minhas credencias de acesso "seuemail@gmail.com" e "suasenha"
    Entao devo ser autenticado


