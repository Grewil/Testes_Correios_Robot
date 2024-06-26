*** Settings ***

Documentation  Elementos e ações para simular um frete

Library   Browser

Resource   ../env.robot

*** Keywords ***

#Caso de teste 1 - Validar se a pagina esta online
Dado que estou na tela principal dos correios

  Wait For Elements State    xpath=//h1     visible   3
  Get Title                   equal     Correios

Quando tiver logado

Então o titulo da página será "correios"


 #Caso de teste 2 - Calcular o frete com as informações válidass
   #Dado que estou na tela principal dos correios
Quando inserir as informações válidas no simulador de fretes
  Fill Text    id=origem       07903170
  Fill Text    id=destino      05160030
  Fill Text    id=altura       3
  Fill Text    id=largura      10
  Fill Text    id=comprimento  15 

  Click    xpath=//*[@data-botao-simular='simular']

Então irá direcionar para a página de valores "SEDEX" "PAC"
  
  Wait For Elements State    xpath=//*[@data-mensagem-revisao-preco='mensagemRevisaoPreco']   Visible   3 
  Get text                   xpath=//*[@data-mensagem-revisao-preco='mensagemRevisaoPreco']   equal    *Valores sujeitos a revisão após verificação das dimensões na agência\n\n*Devido às intensas chuvas dos últimos dias no estado do Rio Grande do Sul, informamos que alguns serviços na região estão temporariamente suspensos ou enfrentando atrasos.