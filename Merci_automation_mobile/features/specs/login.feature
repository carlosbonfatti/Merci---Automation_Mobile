#language:pt

Funcionalidade: Login  

Contexto: Acessar a tela login
Dado que o usuário acesse a tela de login
@t
Cenario: Login com sucesso
  Quando todas as informações de login <dado> forem preenchidas corretamente
  Entao o usuário deverá ser direcionado para a área logada
  Exemplos:
    | dado            | 
    | "login_success" | 

@loginFailsms
Cenario: Login falho sms
  Quando todas as informações de login <dado> forem preenchidas porem o sms incorreto
  Entao o usuario vera a mensagem de erro sms "O código informado está incorreto. Vamos iniciar novamente do zero?"
  Exemplos:
    | dado        | 
    | "login_sms" |

@loginFailsenha
Cenario: Login falho senha
  Quando todas as informações de login <dado> forem preenchidas porem senha esteja incorreta
  Entao o usuario vera a mensagem de erro senha "Poxa, a senha está errada. Vamos tentar novamente?"
  Exemplos:
    | dado         | 
    | "login_senha"| 

@CPFinvalido
Cenario: CPF invalido
  Quando o CPF <dado> inserido for invalido 
  Entao o usuario vera mensagem "CPF inválido"
    Exemplos:
    | dado         | 
    | "CPFinvalido"|