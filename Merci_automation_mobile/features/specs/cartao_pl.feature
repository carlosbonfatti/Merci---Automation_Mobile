# #language: pt

# @not_automated
# Funcionalidade: Cartão Virtual com CVV dinâmico para Private Label

# @SEVERITY:CRITICAL
# Cenario: Liberação do botão Cartão Virtual no PL
# Dado que o usuário esteja logado no aplicativo
# E que haja um produto PL cadastrado
# Quando o cartão PL estiver bloqueado
# E o usuário acionar o desbloqueio
# Entao deverá ser habilitado o botão "Cartão virtual"

# @SEVERITY:CRITICAL
# Cenario: Primeiro acesso ao Cartão Virtual no PL
# Dado que o usuário esteja logado no aplicativo
# E que haja um produto PL cadastrado
# E que o cartão esteja desbloqueado
# Quando o usuário tocar no botão "Cartão virtual"
# E ainda não tiver ativado o Cartão virtual
# Entao deverá ser exibido a mensagem de ativação do Cartão virtual

# @SEVERITY:CRITICAL
# Cenario: Ativar Cartão Private Label com CVV Dinâmico
# Dado que o usuário esteja logado no aplicativo
# E que haja um produto PL cadastrado e desbloqueado
# Quando o usuário acionar o botão "Cartão Virtual"
# E proceder com a confirmação de senha
# Entao deverá ser exibida a tela com o Cartão PL
# E apresentado o tempo de renovação do CVV Dinâmico

# @SEVERITY:CRITICAL
# Cenario: Finalizar uso do Cartão Virtual com CVV Dinâmico para Private Label
# Dado que o usuário acesse o cartão virtual PL
# Quando o usuário finalizar sua compra com o Cartão Virtual
# Entao o usuário poderá finalizar o uso do Cartão Virtual

# @SEVERITY:CRITICAL
# Cenario: Tentativa de compra com CVV Dinâmico expirado
# Dado que o usuário esteja logado no aplicativo
# E que haja um produto PL cadastrado e desbloqueado
# E o usuário tenha os dados do Cartão PL e do CVV Dinâmico
# Mas o CVV esteja expirado
# Quando o usuário tentar fazer compras com o Cartão PL
# Entao a compra deve ser negada

# @SEVERITY:CRITICAL
# Cenario: Tentativa de compra com Cartão Private Label bloqueado e CVV dentro do prazo de expiração
# Dado que o usuário esteja logado no aplicativo
# E que haja um produto PL cadastrado e BLOQUEADO
# E o usuário tenha os dados do Cartão PL e do CVV Dinâmico
# Quando o usuário tentar fazer compras com o Cartão PL
# Entao a compra deve ser negada

# @SEVERITY:CRITICAL
# Cenario: Help Screens
# Dado que o usuário acesse o Cartão Virtual PL
# Quando o usuário precisar de ajuda
# Entao deverá ser exibida a sequência de telas com textos descritivos