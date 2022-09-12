*** Settings ***
##Amazon_teste é a suite inteira(Cycle Summary)
Documentation    Essa suite testa o site da Amazon
Resource         Amazon_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
Caso de teste 1 - Acesso ao menu de "Eletrônicos" 
##Caso de teste
    Acessar o home page do site Amazon.com.br
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o titulo da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "computadores e Informática"
    ##Esses são os Steps do caso de teste
