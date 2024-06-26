*** Settings ***

Library    Browser 

Resource   env.robot
Resource   pages/PaginaFrete.robot

*** Keywords ***

Start Session

   New Browser    browser=chromium    headless=false 
   New page       ${BASE_URL}

Validate the Title

  Wait For Elements State    xpath=//h1     visible   3
  Get Title                   equal     Correios