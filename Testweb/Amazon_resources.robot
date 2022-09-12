*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           https://www.amazon.com.br
${Eletronicos}   //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${Header_el}     //h1[contains(.,'Eletrônicos e Tecnologia')]
*** Keywords ***
Abrir o navegador
    Open Browser    browser=gc
    Maximize Browser Window
Fechar o navegador
    Close Browser
Acessar o home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${Eletronicos}
Entrar no menu "Eletrônicos"
    Click Element    locator=${Eletronicos}
Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Wait Until Page Contains    text=Eletrônicos e Tecnologia
    Wait Until Element Is Visible    locator=${Header_el}
Verificar se o titulo da página fica "${titulo}"
    Title Should Be    title=${titulo}
Verificar se aparece a categoria "computadores e Informática"
    Page Should Contain Image    locator=//img[@src='https://images-na.ssl-images-amazon.com/images/G/32/BR-hq/2021/img/Consumer_Electronics/Storefronts/Electronics/956.Storefront_categoria_computadores_icons_240x270.jpg']
    