*** Settings ***

Documentation  Cenários de testes para calcular o frete do site dos correios

Resource  ../resources/base.robot

Test Setup  Start Session
Task Teardown  Take Screenshot

*** Test Cases ***

Caso de teste 01 - Validar se a pagina esta online

  Dado que estou na tela principal dos correios

Caso de teste 02 - Calcular o frete com as informações válidas

  Dado que estou na tela principal dos correios

  Quando inserir as informações válidas no simulador de fretes

  Então irá direcionar para a página de valores "SEDEX" "PAC"  


Caso de teste 03 - Preencher o campo CEP Origem com caracteres alfabético.

  Validate the Title

  Fill Text    id=origem       s
  Fill Text    id=destino      05160030
  Fill Text    id=altura       3
  Fill Text    id=largura      10
  Fill Text    id=comprimento  15 

  Click    xpath=//*[@data-botao-simular='simular']

  Wait For Elements State    xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  Visible   5 
  Get text                   xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  equal   Preencha o campo de origem do CEP apenas com números
  
Caso de teste 04 - Preencher o campo CEP Destino com caracteres alfabético.

  
  Validate the Title

  Fill Text    id=origem       05160030
  Fill Text    id=destino      sd
  Fill Text    id=altura       3
  Fill Text    id=largura      10
  Fill Text    id=comprimento  15 

  Click    xpath=//*[@data-botao-simular='simular']

  Wait For Elements State    xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  Visible   5 
  Get text                   xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  equal   Preencha o campo de destino do CEP apenas com números
                                   
Caso de teste 05 - Preencher o campo CEP Origem com caracteres numericos inválidos.

  Validate the Title

  Fill Text    id=origem       00000000

  Click    xpath=//*[@id="altura"]

  Wait For Elements State    xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  Visible   5 
  Get text                   xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  equal   O CEP de origem não existe
                                   
Caso de teste 06 - Preencher o campo CEP Origem com 5 dígitos.

  Validate the Title

  Fill Text    id=origem       05160

  Click    xpath=//*[@id="altura"]

  Wait For Elements State    xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  Visible   5 
  Get text                   xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  equal   Informe o CEP de origem com 8 dígitos

Caso de teste 07 - Preencher o campo CEP Destino com caracteres numericos inválidos.

  Validate the Title

  Fill Text    id=destino       00000000

  Click    xpath=//*[@id="altura"]

  Wait For Elements State    xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  Visible   5 
  Get text                   xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  equal   O CEP de destino não existe

Caso de teste 08 - Preencher o campo CEP Destino com 5 dígitos.

  Validate the Title

  Fill Text    id=destino       05160

  Click    xpath=//*[@id="altura"]

  Wait For Elements State    xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  Visible   5 
  Get text                   xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  equal   Informe o CEP de destino com 8 dígitos

Caso de teste 09 - Preencher o campo Altura "A" com medida menor que 1.

  Validate the Title

  Fill Text    id=altura       0,5

  Click    xpath=//*[@data-botao-simular='simular']

  Wait For Elements State    xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  Visible   5 
  Get text                   xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  equal   Valor do campo altura está fora dos limites estabelecidos

Caso de teste 10 - Preencher o campo Altura "A" com medida maior que 100.  

  Validate the Title

  Fill Text    id=altura       105

  Click    xpath=//*[@data-botao-simular='simular']

  Wait For Elements State    xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  Visible   5 
  Get text                   xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  equal   Valor do campo altura está fora dos limites estabelecidos

Caso de teste 11 - Preencher o campo Largura "L" com medida menor que 8.

  Validate the Title

  Fill Text    id=largura      5
 
  Click    xpath=//*[@data-botao-simular='simular']

  Wait For Elements State    xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  Visible   5 
  Get text                   xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  equal   Valor do campo largura está fora dos limites estabelecidos

Caso de teste 12 - Preencher o campo Largura "L" com medida maior que 100.

  Validate the Title
  
  Fill Text    id=largura      105
 
  Click    xpath=//*[@data-botao-simular='simular']

  Wait For Elements State    xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  Visible   5 
  Get text                   xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  equal   Valor do campo largura está fora dos limites estabelecidos

Caso de teste 13 - Preencher o campo Comprimento "C" com a medida menor que 13.

  Validate the Title
  
  Fill Text    id=comprimento  10

  Click    xpath=//*[@data-botao-simular='simular']

  Wait For Elements State    xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  Visible   5 
  Get text                   xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  equal   Valor do campo comprimento está fora dos limites estabelecidos

Caso de teste 14 - Preencher o campo Comprimento "C" com a medida maior que 100.

  Validate the Title
  
  Fill Text    id=comprimento  105

  Click    xpath=//*[@data-botao-simular='simular']

  Wait For Elements State    xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  Visible   5 
  Get text                   xpath=//*[@id="portletwrapper-706c6f6e652e666f6f746572706f72746c6574730a636f6e746578740a2f506c6f6e652f686f6d65706167650a63616c63756c61646f7261"]/section/div/nav/form/div[2]/div[3]/div[1]/p[1]  equal   Valor do campo comprimento está fora dos limites estabelecidos
                                   

  