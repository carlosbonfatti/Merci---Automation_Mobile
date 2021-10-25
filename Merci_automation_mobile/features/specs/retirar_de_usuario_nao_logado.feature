# #language: pt

# @not_automated
# Funcionalidade: Sacar dinheiro com usuário deslogado

# Contexto:
# Dado que o usuário acesse a tela de login
# Quando acessar a funcionalidade Sacar no menu inferior

# @SEVERITY:CRITICAL
# Cenario: Acesso à funcionalidade
# Entao deverão ser exibidas as informações para saque

# @SEVERITY:CRITICAL
# Cenario: Exibição de lojas para saque
# E realizar a leitura das informações
# Entao deverá ser exibida a lista de lojas disponíveis para sacar dinheiro

# @SEVERITY:CRITICAL
# Cenario: Rota para a loja
# E realizar a leitura das informações
# E clicar em uma das lojas disponíveis para saque
# Entao deverá ser exibida opção para abrir um aplicativo de mapa

# @SEVERITY:CRITICAL
# Cenario: Leitura de informações para saque
# E realizar a leitura das informações
# E queira realizar a leitura novamente após fechar a tela
# Entao deverá ser possível a leitura através do botão de informações

# @SEVERITY:CRITICAL
# Cenario: Geração de QR code com usuário deslogado
# E realizar a leitura das informações
# E clicar em Sacar dinheiro
# Entao deverá ser solicitado o login no aplicativo