*** Settings ***
Documentation       Login com sucesso

Resource    ../resources/actions.robot

Library     OperatingSystem

Test Setup      Open Session
Test Teardown   Close Session

*** Test Cases ***
Login NetFlix
    Dado que estou na página de login 
    Quando submeto minhas credencias de acesso 
    Entao devo ser autenticado
   

*** Keywords ***
Quando submeto minhas credencias de acesso 
    Login With      seuemail@gmail.com  suasenha