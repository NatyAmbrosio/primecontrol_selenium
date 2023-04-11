*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${URL}        https://www.primecontrol.com.br/
${BROWSER}    chrome

*** Keywords ***
Abrir Url        
        Open Browser        ${URL}        ${BROWSER}

Fechar Url
        Close Browser    