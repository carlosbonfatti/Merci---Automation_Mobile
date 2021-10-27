#language:pt

Funcionalidade: Login
@login
Cenario: Login com sucesso
  Dado que o usuário acesse a tela de login
  Quando todas as informações de login <dado> forem preenchidas corretamente
  Entao o usuário deverá ser direcionado para a área logada
  Exemplos:
    | dado            | 
    | "login_success" | 

@loginFail
Cenario: Login falho sms
  Quando todas as informações de login <dado> forem preenchidas porem o sms incorreto
  Entao o usuario vera a mensagem "O código informado está incorreto. Vamos iniciar novamente do zero?"
  Exemplos:
    | dado        | 
    | "login_sms" | 