***Settings***
Library     SeleniumLibrary

*** Variables ***
${input_name}           //input[@id="name"]
${input_phone}          //input[@id="phone"]
${input_email}          //input[@id="email"]
${input_password}       //input[@id="password"]
${textarea_adress}      //textarea[@id="address"]
${button_submit}        //button[@name="submit"]


*** Keywords ***
abrir navegador e acessar o site
    Open Browser    https://itera-qa.azurewebsites.net/home/automation  chrome

preencher campos
    Input Text      ${input_name}       Tiago            
    Input Text      ${input_phone}      9999999999
    Input Text      ${input_email}      tiago@teste.com
    Input Text      ${input_password}   12345
    Input Text      ${textarea_adress}  xxxxxxxxxxxxxxxxxxx


clicar em submit
    Click Element   ${button_submit}

fechar navegador
    Close Browser

*** Test Cases***
cenário 1: preencher formulário
    abrir navegador e acessar o site
    preencher campos
    clicar em submit
    fechar navegador







