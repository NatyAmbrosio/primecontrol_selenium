*** Settings ***
Resource    ../../resources/actions/global/base_page.robot
Resource    ../../resources/actions/pesquisa/pesquisa.robot

Test Setup        base_page.Abrir Url
Test Teardown     base_page.Fechar Url

*** Test Cases ***
cst-01: Realizar pesquisa com sucesso
        pesquisa.Ir para blog
        pesquisa.Preencher pesquisa        DevtestOps
        pesquisa.Validar artigo    Entrega de software mais rápida e confiável com orquestração de DevTestOps


   