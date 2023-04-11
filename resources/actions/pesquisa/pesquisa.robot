*** Settings ***
Library            SeleniumLibrary

*** Variables ***
${LISTA_CONHECIMENTO}       link:Conhecimento
${TXT_PESQUISAR}            css:input[title="Pesquisar"]
${LISTA_PESQUISA}           css:h2 > a

*** Keywords ***
Ir para blog
    Go To                        https://www.primecontrol.com.br/blog
    Maximize Browser Window
  

Preencher pesquisa
        [Arguments]       ${texto} 
        Wait Until Element Is Visible             ${TXT_PESQUISAR}          10s
        Input Text        ${TXT_PESQUISAR}        ${texto}
        Press Keys        ${TXT_PESQUISAR}        ENTER

Validar artigo
        [Arguments]         ${texto}
        Wait Until Element Is Visible        ${LISTA_PESQUISA}
        Element Should Contain               ${LISTA_PESQUISA}        ${texto}


