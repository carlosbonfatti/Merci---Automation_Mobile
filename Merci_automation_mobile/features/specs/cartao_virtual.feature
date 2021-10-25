# #language: pt

# @not_automated
# Funcionalidade: Cartão virtual da conta digital

# @SEVERITY:CRITICAL
# Cenario: Primeiro acesso ao cartão virtual
# Dado que o usuário acesse o aplicativo
# Quando acessar a funcionalidade Cartão Virtual pela primeira vez
# Entao as telas informativas deverão ser exibidas

# @SEVERITY:CRITICAL
# Cenario: Exibição do cartão virtual
# Dado que o usuário acesse o aplicativo
# Quando acessar a funcionalidade Cartão virtual
# E realizar a autenticação
# Entao o cartão virtual deverá ser exibido desbloqueado

# @SEVERITY:CRITICAL
# Cenario: Exibição de texto informativo sobre o que é um cartão virtual
# Dado que o usuário acesse o aplicativo
# Quando acessar a funcionalidade Cartão virtual
# E realizar a autenticação
# Entao o usuário poderá acessar texto informativo sobre o que é um cartão de crédito virtual

# @SEVERITY:CRITICAL
# Cenario: Bloqueio e desbloqueio de cartão virtual
# Dado que o usuário acesse o aplicativo
# Quando acessar a funcionalidade Cartão virtual
# E realizar a autenticação
# Entao o usuário poderá bloquear e desbloquear o cartão virtual

# @SEVERITY:CRITICAL
# Cenario: Renovação de cartão virtual
# Dado que o usuário acesse o aplicativo
# Quando acessar a funcionalidade Cartão virtual
# E realizar a autenticação
# Entao o usuário poderá renovar o cartão virtual após realizar nova autenticação

# @SEVERITY:CRITICAL
# Cenario: Cópia de informações do cartão virtual
# Dado que o usuário acesse o aplicativo
# Quando acessar a funcionalidade Cartão virtual
# E realizar a autenticação
# Entao o usuário poderá copiar as informações do cartão virtual:
# | informações       |
# | Número do cartão  |
# | Titular do cartão |
# | Validar           |
# | CVV               |