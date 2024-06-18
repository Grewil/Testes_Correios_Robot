*** Settings ***

Documentation  Cenários de testes para calcular o frete 

Library  Browser
Library  FakerLibrary

*** Test Cases ***

Caso de teste 01 - Validar se a pagina esta online

  New Browser    browser=chromium    headless=false 
  New page       https://www.correios.com.br/

  Wait For Elements State    xpath=//h1     visible   3
  Get Title                   equal     Correios

  Sleep    3

Caso de teste 02 - Calcular o frete com as informações válidas


  New Browser    browser=chromium    headless=false 
  New page       https://www.correios.com.br/

  Wait For Elements State    xpath=//h1     visible   3
  Get Title                   equal     Correios

  Fill Text    id=origem       07903170
  Fill Text    id=destino      05160030
  Fill Text    id=altura       3
  Fill Text    id=largura      10
  Fill Text    id=comprimento  15 

  Click    xpath=//*[@data-botao-simular='simular']

  Wait For Elements State    xpath=//*[@data-mensagem-revisao-preco='mensagemRevisaoPreco']  Visible   3 
  Get text                   xpath=//*[@data-mensagem-revisao-preco='mensagemRevisaoPreco']  equal   *Valores sujeitos a revisão após verificação das dimensões na agência\n\n*Devido às intensas chuvas dos últimos dias no estado do Rio Grande do Sul, informamos que alguns serviços na região estão temporariamente suspensos ou enfrentando atrasos.
  
  Take Screenshot

Caso de teste 03 - Preencher o campo CEP Origem com caracteres alfabético.

  New Browser    browser=chromium    headless=false 
  New page       https://www.correios.com.br/

  Wait For Elements State    xpath=//h1     visible   3
  Get Title                   equal     Correios

  Fill Text    id=origem       s
  Fill Text    id=destino      05160030
  Fill Text    id=altura       3
  Fill Text    id=largura      10
  Fill Text    id=comprimento  15 

  Click    xpath=//*[@data-botao-simular='simular']

  Wait For Elements State    xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  Visible   5 
  Get text                   xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  equal   Preencha o campo de origem do CEP apenas com números
  
  Take Screenshot

Caso de teste 04 - Preencher o campo CEP Destino com caracteres alfabético.
  New Browser    browser=chromium    headless=false 
  New page       https://www.correios.com.br/

  Wait For Elements State    xpath=//h1     visible   3
  Get Title                   equal     Correios

  Fill Text    id=origem       05160030
  Fill Text    id=destino      sd
  Fill Text    id=altura       3
  Fill Text    id=largura      10
  Fill Text    id=comprimento  15 

  Click    xpath=//*[@data-botao-simular='simular']

  Wait For Elements State    xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  Visible   5 
  Get text                   xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  equal   Preencha o campo de destino do CEP apenas com números
                                   
  Take Screenshot