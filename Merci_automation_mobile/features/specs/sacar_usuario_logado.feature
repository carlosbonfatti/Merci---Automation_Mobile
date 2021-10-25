# #language: pt

# @not_automated
# Funcionalidade: Sacar dinheiro com usuário logado

# Contexto:
# Dado que o usuário acesse o aplicativo
# Quando acessar a funcionalidade Sacar no menu inferior
# E realizar a leitura das informações

# @SEVERITY:CRITICAL
# Cenario: Exibição de lojas para saque
# Entao deverá ser exibida a lista de lojas disponíveis para sacar dinheiro

# @SEVERITY:CRITICAL
# Cenario: Rota para a loja
# E clicar em uma das lojas disponíveis para saque
# Entao deverá ser exibida opção para abrir um aplicativo de mapa

# @SEVERITY:CRITICAL
# Cenario: Leitura de informações para saque
# E queira realizar a leitura novamente após fechar a tela
# Entao deverá ser possível a leitura através do botão de informações

# @SEVERITY:CRITICAL
# Cenario: Geração de QR code
# E clicar em Sacar dinheiro
# E informar o valor de saque e a senha
# Entao deverá gerado o QR code e código para saque
# E deverão ser exibidas as instruções para o saque

# @SEVERITY:CRITICAL
# Cenario: Exibição do temporizador de QR code
# E gerar o QR code para saque
# Entao deverá ser exibido um temporizador para o QR code gerado

# @SEVERITY:CRITICAL
# Cenario: Direcionamento do botão Cancelar
# E gerar o QR code para saque
# E clicar em Cancelar
# Entao deverá ser direcionado para a tela inicial da funcionalidade

# @SEVERITY:CRITICAL
# Cenario: Conclusão do saque
# E gerar o QR code para saque
# E clicar em Concluir saque
# E confirmar a conclusão do saque
# Entao deverá ser direcionado para a tela inicial da funcionalidade

# @SEVERITY:CRITICAL
# Cenario: Informar sobre saque com problemas
# E gerar o QR code para saque
# E clicar em Concluir saque
# E solicitar ajuda para problemas com o saque
# Entao deverá ser direcionado para a funcionalidade Fale conosco

# @SEVERITY:CRITICAL
# Cenario: Não informar sobre saque com problemas
# E gerar o QR code para saque
# E clicar em Concluir saque
# E não solicitar ajuda para problemas com o saque
# Entao deverá ser direcionado para a tela inicial da funcionalidade