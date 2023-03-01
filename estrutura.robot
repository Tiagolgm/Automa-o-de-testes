***Settings***
Library     SeleniumLibrary

*** Variables ***


*** Keywords ***
abrir site do google
    Open Browser    https://www.google.com.br/  chrome  

abrir site da globo
    Open Browser    https://www.globo.com/  chrome  

fechar navegador
    Close Browser


*** Test Cases***

Cenario 1: teste de abrir site do google
    abrir site do google
    fechar navegador

Cenario 2: teste de abrir site da globo
    abrir site da globo
    fechar navegador





