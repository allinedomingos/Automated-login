*** Settings ***
Documentation       Este arquivo implementa funções e elementos da página login

*** Keywords ***
Login With
    [Arguments]     ${email}       ${pass}

    Input Text       css:input[name=userLoginId]    ${email}
    Input Text       css:input[name=password]       ${pass}
    Submit Form      