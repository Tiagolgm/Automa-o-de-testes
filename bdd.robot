***Settings***
Library     SeleniumLibrary

*** Variables ***
#Dados do meu teste
${NomeDaMusica}     Ariana Grande Positions

#Váriáveis de configuração
${URL}      https://www.youtube.com/
${Browser}      chrome

#Elementos
${Input_Pesquisa}       //input[@id="search"]
${button_Pesquisa}      //button[@id="search-icon-legacy"]
${Primeiro}             (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${Prova}                //ytd-button-renderer[@class="style-scope ytd-menu-renderer"]

*** Keywords ***
Dado que eu acesso o site do youtube
    Open Browser      ${URL}    ${Browser}

Quando digito o nome da música
    Input Text      ${Input_Pesquisa}    ${NomeDaMusica}

E clico no botão buscar
    Click Element       ${button_Pesquisa}


E clico na primeira opção da lista
    Wait Until Element Is Visible   ${Primeiro}     10
    Click Element       ${Primeiro}

Então o vídeo é executado
    Wait Until Element Is Visible   ${Primeiro}     10
    Element Should Be Visible       ${Prova}
    Sleep 1s
    Close Browser
     

*** Test Cases***

Cenario 1: executar vídeo no site do youtube
    Dado que eu acesso o site do youtube
    Quando digito o nome da música
    E clico no botão buscar
    E clico na primeira opção da lista
    Então o vídeo é executado

